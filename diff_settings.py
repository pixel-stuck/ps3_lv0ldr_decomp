def apply(config, args):
    config["baseimg"] = "lv0ldr.bin"
    config["myimg"] = "build/lv0ldr.bin"
    config["mapfile"] = "build/lv0ldr.map"
    config["map_format"] = "gnu"
    config["source_directories"] = ["."]
    config["arch"] = "spu"
    # hack for now
    config["objdump_executable"] = "wine"
    config["objdump_flags"] = ["/home/matt/ps3/sdk/spu/bin/spu-lv2-objdump.exe", "-m", "spu:256K", "--no-show-raw-insn"]
    config["make_command"] = ["ninja"]
    # print(config["diff_section"])
    config["diff_section"] = f".text.{args.start}"
