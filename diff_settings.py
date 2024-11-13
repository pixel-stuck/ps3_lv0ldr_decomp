def apply(config, args):
    config["baseimg"] = "3.5.6_00002F5BAA3AEA6E3DA09A581E1E2100.bin"
    config["myimg"] = "out.bin"
    config["mapfile"] = "build.map"
    config["source_directories"] = ["."]
    # config["show_line_numbers_default"] = True
    config["arch"] = "spu"
    # config["map_format"] = "gnu" # gnu, mw, ms
    # config["build_dir"] = "build/" # only needed for mw and ms map format
    # config["expected_dir"] = "expected/" # needed for -o
    # config["makeflags"] = []
    config["objdump_executable"] = "wine"
    config["objdump_flags"] = ["/home/matt/ps3/sdk/spu/bin/spu-lv2-objdump.exe", "-m", "spu:256K", "--no-show-raw-insn"]
