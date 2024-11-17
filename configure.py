#! /usr/bin/env python3

import argparse
import os
import shutil
import sys
from pathlib import Path
from typing import Dict, List, Set, Union

import ninja_syntax

import config

ROOT = Path(__file__).parent.resolve()
TOOLS_DIR = ROOT / "tools"

BASENAME = "lv0ldr"

LD_PATH = f"{BASENAME}.ld"
BIN_PATH = f"build/{BASENAME}.bin"
MAP_PATH = f"build/{BASENAME}.map"
ELF_PATH = f"build/{BASENAME}.elf"

COMMON_INCLUDES = f"{ROOT}/include"

GAME_CC_DIR = f"{TOOLS_DIR}/cc/spu"
COMMON_COMPILE_FLAGS = "-Os"

GAME_GCC_CMD = f"{GAME_CC_DIR}/bin/gcc.exe -fno-unit-at-a-time -c -B {GAME_CC_DIR}/bin -I {COMMON_INCLUDES} {COMMON_COMPILE_FLAGS} $in"

GAME_COMPILE_CMD = f"{GAME_GCC_CMD} -o"

def clean():
    shutil.rmtree("asm", ignore_errors=True)
    shutil.rmtree("assets", ignore_errors=True)
    shutil.rmtree("build", ignore_errors=True)

def build_stuff():
    built_objects: Set[Path] = set()

    def build(
        object_path: Path,
        src_path: Path,
        task: str,
        variables: Dict[str, str] = {},
        implicit_outputs: List[str] = [],
    ):
        if object_path.suffix == ".o":
            built_objects.add(object_path)
        ninja.build(
            outputs=str(object_path),
            rule=task,
            inputs=str(src_path),
            variables=variables,
            implicit_outputs=implicit_outputs,
        )

    ninja = ninja_syntax.Writer(open(str(ROOT / "build.ninja"), "w"), width=9999)

    # Rules
    cross = f"{GAME_CC_DIR}/bin/"

    ld_args = f"-Map $mapfile -T $in -T undefined_syms.ld -o $out"

    ninja.rule(
        "as",
        description="as $in",
        command=f"cpp $in -o - | {cross}as.exe -Iinclude - -o $out",
    )

    ninja.rule(
        "cc",
        description="cc $in",
        command=f"{GAME_COMPILE_CMD} $out",
    )

    ninja.rule(
        "databin",
        description="convert $in to o file",
        command=f"printf \".section .data\\n .incbin \\\"$in\\\"\\n\" | {cross}as.exe - -o $out"
    )

    ninja.rule(
        "ld",
        description="link $out",
        command=f"{cross}ld.exe {ld_args}",
    )

    ninja.rule(
        "sha1sum",
        description="sha1sum $in",
        command="sha1sum -c $in && touch $out",
    )

    ninja.rule(
        "bin",
        description="bin $out",
        command=f"{cross}objcopy.exe $in $out -O binary",
    )

    # for entry in linker_entries:
    #     seg = entry.segment
    #
    #     if seg.type[0] == ".":
    #         continue
    #
    #     if entry.object_path is None:
    #         continue
    #
    #     if isinstance(seg, splat.segtypes.common.asm.CommonSegAsm) or isinstance(
    #         seg, splat.segtypes.common.data.CommonSegData
    #     ):
    #         build(entry.object_path, entry.src_paths, "as")
    #     elif isinstance(seg, splat.segtypes.common.c.CommonSegC):
    #         build(entry.object_path, entry.src_paths, "cc")
    #     elif isinstance(seg, splat.segtypes.common.databin.CommonSegDatabin):
    #         build(entry.object_path, entry.src_paths, "as")
    #     else:
    #         print(f"ERROR: Unsupported build segment type {seg.type}")
    #         sys.exit(1)

    for entry in config.BuildFiles:
        build(entry.object_path, entry.src_path, entry.build_rule)
    config.generate_linker(LD_PATH)

    ninja.build(
        ELF_PATH,
        "ld",
        LD_PATH,
        implicit=[str(obj) for obj in built_objects],
        variables={"mapfile": MAP_PATH},
    )

    ninja.build(
        BIN_PATH + ".bin",
        "bin",
        ELF_PATH,
    )

    ninja.build(
        BIN_PATH + ".ok",
        "sha1sum",
        f"{BASENAME}.sha1",
        implicit=[BIN_PATH + ".bin"],
    )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Configure the project")
    parser.add_argument(
        "-c",
        "--clean",
        help="Clean extraction and build artifacts",
        action="store_true",
    )
    args = parser.parse_args()

    LD_PATH = f"{BASENAME}.ld"
    BIN_PATH = f"build/{BASENAME}"
    MAP_PATH = f"build/{BASENAME}.map"
    ELF_PATH = f"build/{BASENAME}.elf"

    if args.clean:
        clean()

    build_stuff()
