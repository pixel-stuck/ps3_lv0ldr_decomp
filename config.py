from pathlib import Path
import clang.cindex as index

class Subsegment:
    def __init__(self, name, address, src_path):
        self.name = name
        self.address = address
        self.src_path = Path(src_path)
        self.object_path = Path("build/" + src_path.split('.')[0] + ".o")
        self.linker_sections = [".text", ".rodata", ".data", ".bss"]
        self.linker_subsections = dict()

class HandAsm(Subsegment):
    def __init__(self, name, address, src_path):
        super().__init__(name, address, src_path)
        self.build_rule = "as"

class Asm(Subsegment):
    def __init__(self, name, address, src_path):
        super().__init__(name, address, src_path)
        self.build_rule = "as"

class Clang(Subsegment):
    def __init__(self, name, address, src_path):
        super().__init__(name, address, src_path)
        self.build_rule = "cc"

class Cpp(Subsegment):
    def __init__(self, name, address, src_path):
        super().__init__(name, address, src_path)
        self.build_rule = "cxx"
        self.generate_linker_subsections()

    def generate_linker_subsections(self):
        tu = index.TranslationUnit.from_source(self.src_path, args=["-Iinclude", "-DFUNC_ORDER"])
        func_names = self.get_function_names(tu.cursor)
        self.linker_subsections[".text"] = func_names
        # self.linker_subsections[".rodata"] = func_names
        # self.linker_subsections[".data"] = func_names

    def get_function_names(self, cursor):
        mangled = []

        for child in cursor.get_children():
            if(child.kind == index.CursorKind.CONSTRUCTOR and child.is_definition()):
                mangled.append(child.mangled_name)

            if(child.kind == index.CursorKind.FUNCTION_DECL and child.is_definition()):
                mangled.append(child.mangled_name)

            if(child.kind == index.CursorKind.CXX_METHOD and child.is_definition()):
                mangled.append(child.mangled_name)

            if(child.kind == index.CursorKind.CLASS_DECL):
                mangled = self.get_function_names(child)

        return mangled

class Bin(Subsegment):
    def __init__(self, name, address, src_path):
        super().__init__(name, address, src_path)
        self.build_rule = "databin"
        self.linker_sections = [".data"]

def generate_linker(linker_path):
    sections = dict()

    for subsegment in BuildFiles:
        for section in subsegment.linker_sections:
            if section not in sections:
                sections[section] = []
            subsection = None
            if section in subsegment.linker_subsections:
                subsection = subsegment.linker_subsections[section]
            sections[section].append((subsegment.object_path, subsegment.linker_subsections))

    f = open(linker_path, "w")
    f.write("SECTIONS\n{\n")
    f.write(f"\t. = 0x{BuildFiles[0].address:x};\n")

    for section, section_info in sections.items():
        f.write(f"\t{section} BLOCK(0x10) : SUBALIGN(8)\n\t{{\n")

        for info in section_info:
            path, subsections = info

            if section in subsections and subsections[section] is not None:
                for subsection in subsections[section]:
                    f.write(f"\t\t{path}({section}.{subsection});\n")
            else:
                f.write(f"\t\t{path}({section}.* {section});\n")

        f.write("\t}\n\n")

    f.write("\t/DISCARD/ :\n")
    f.write("\t{\n\t\t*(*)\n\t}\n}\n")

BuildFiles = [
    HandAsm("entrypoint", 0x400, "asm/400.s"),
    Cpp("488", 0x488, "src/488.cpp"),
    # new TU ?
    Asm("func_1480", 0x1480, "asm/nonmatching/func_1480.s"),
    Asm("func_1560", 0x1560, "asm/nonmatching/func_1560.s"),
    Asm("func_15a8", 0x15a8, "asm/nonmatching/func_15a8.s"),
    Asm("func_1630", 0x1630, "asm/nonmatching/func_1630.s"),
    Asm("func_16a8", 0x16a8, "asm/nonmatching/func_16a8.s"),
    Asm("func_1720", 0x1720, "asm/nonmatching/func_1720.s"),
    Asm("func_1740", 0x1740, "asm/nonmatching/func_1740.s"),
    Asm("func_18e0", 0x18e0, "asm/nonmatching/func_18e0.s"),
    Cpp("1ab0", 0x1ab0, "src/1ab0.cpp"),
    Asm("func_1b48", 0x1b48, "asm/nonmatching/func_1b48.s"),
    Asm("func_1b88", 0x1b88, "asm/nonmatching/func_1b88.s"),
    Asm("func_1c00", 0x1c00, "asm/nonmatching/func_1c00.s"),
    Cpp("1e00", 0x1e00, "src/1e00.cpp"),
    Asm("func_1e18", 0x1e18, "asm/nonmatching/func_1e18.s"),
    Asm("func_1f48", 0x1f48, "asm/nonmatching/func_1f48.s"),
    Asm("func_1fc8", 0x1fc8, "asm/nonmatching/func_1fc8.s"),
    Asm("func_2060", 0x2060, "asm/nonmatching/func_2060.s"),
    Asm("func_2090", 0x2090, "asm/nonmatching/func_2090.s"),
    Asm("func_20f0", 0x20f0, "asm/nonmatching/func_20f0.s"),
    Asm("func_2150", 0x2150, "asm/nonmatching/func_2150.s"),
    Asm("func_2198", 0x2198, "asm/nonmatching/func_2198.s"),
    Asm("func_21b0", 0x21b0, "asm/nonmatching/func_21b0.s"),
    Asm("func_21f8", 0x21f8, "asm/nonmatching/func_21f8.s"),
    Cpp("2210", 0x2210, "src/2210.cpp"),
    Asm("func_2680", 0x2680, "asm/nonmatching/func_2680.s"),
    Asm("func_26b8", 0x26b8, "asm/nonmatching/func_26b8.s"),
    Asm("func_2818", 0x2818, "asm/nonmatching/func_2818.s"),
    Asm("func_2848", 0x2848, "asm/nonmatching/func_2848.s"),
    Asm("func_2870", 0x2870, "asm/nonmatching/func_2870.s"),
    Asm("func_28c0", 0x28c0, "asm/nonmatching/func_28c0.s"),
    Asm("func_29e0", 0x29e0, "asm/nonmatching/func_29e0.s"),
    Asm("func_2a50", 0x2a50, "asm/nonmatching/func_2a50.s"),
    Cpp("2a98", 0x2a98, "src/2a98.cpp"),
    Asm("2aa0", 0x2aa0, "asm/nonmatching/func_2aa0.s"),
    Asm("func_2ab8", 0x2ab8, "asm/nonmatching/func_2ab8.s"),
    Asm("func_2ce8", 0x2ce8, "asm/nonmatching/func_2ce8.s"),
    Asm("func_2f78", 0x2f78, "asm/nonmatching/func_2f78.s"),
    Asm("func_2fc8", 0x2fc8, "asm/nonmatching/func_2fc8.s"),
    Asm("func_3008", 0x3008, "asm/nonmatching/func_3008.s"),
    Cpp("3040", 0x3040, "src/3040.cpp"),
    Cpp("3050", 0x3050, "src/3050.cpp"),
    Asm("func_3060", 0x3060, "asm/nonmatching/func_3060.s"),
    Asm("func_30a0", 0x30a0, "asm/nonmatching/func_30a0.s"),
    Asm("func_30f0", 0x30f0, "asm/nonmatching/func_30f0.s"),
    Asm("func_3130", 0x3130, "asm/nonmatching/func_3130.s"),
    Cpp("3168", 0x3168, "src/3168.cpp"),
    Cpp("3178", 0x3178, "src/3178.cpp"),
    Asm("func_3188", 0x3188, "asm/nonmatching/func_3188.s"),
    Asm("func_31d0", 0x31d0, "asm/nonmatching/func_31d0.s"),
    Asm("func_3290", 0x3290, "asm/nonmatching/func_3290.s"),
    Asm("func_3398", 0x3398, "asm/nonmatching/func_3398.s"),
    Asm("func_33f8", 0x33f8, "asm/nonmatching/func_33f8.s"),
    Asm("func_3488", 0x3488, "asm/nonmatching/func_3488.s"),
    Asm("func_34d8", 0x34d8, "asm/nonmatching/func_34d8.s"),
    Asm("func_35a8", 0x35a8, "asm/nonmatching/func_35a8.s"),
    Asm("func_3630", 0x3630, "asm/nonmatching/func_3630.s"),
    Asm("func_3698", 0x3698, "asm/nonmatching/func_3698.s"),
    Asm("func_3720", 0x3720, "asm/nonmatching/func_3720.s"),
    Asm("func_37a8", 0x37a8, "asm/nonmatching/func_37a8.s"),
    Asm("func_3840", 0x3840, "asm/nonmatching/func_3840.s"),
    Asm("func_3930", 0x3930, "asm/nonmatching/func_3930.s"),
    Asm("func_3a48", 0x3a48, "asm/nonmatching/func_3a48.s"),
    Asm("func_3b48", 0x3b48, "asm/nonmatching/func_3b48.s"),
    Asm("func_3bc0", 0x3bc0, "asm/nonmatching/func_3bc0.s"),
    Asm("func_3c08", 0x3c08, "asm/nonmatching/func_3c08.s"),
    Cpp("3c30", 0x3c30, "src/3c30.cpp"),
    Cpp("3c40", 0x3c40, "src/3c40.cpp"),
    Asm("func_3c50", 0x3c50, "asm/nonmatching/func_3c50.s"),
    Cpp("3c78", 0x3c78, "src/3c78.cpp"),
    Cpp("3c88", 0x3c88, "src/3c88.cpp"),
    Asm("func_3c90", 0x3c90, "asm/nonmatching/func_3c90.s"),
    Asm("func_3e28", 0x3e28, "asm/nonmatching/func_3e28.s"),
    Asm("func_3f78", 0x3f78, "asm/nonmatching/func_3f78.s"),
    Asm("func_4018", 0x4018, "asm/nonmatching/func_4018.s"),
    Asm("func_4088", 0x4088, "asm/nonmatching/func_4088.s"),
    Asm("func_4148", 0x4148, "asm/nonmatching/func_4148.s"),
    Asm("func_4248", 0x4248, "asm/nonmatching/func_4248.s"),
    Asm("func_42f8", 0x42f8, "asm/nonmatching/func_42f8.s"),
    Asm("func_4470", 0x4470, "asm/nonmatching/func_4470.s"),
    Asm("func_44e8", 0x44e8, "asm/nonmatching/func_44e8.s"),
    Cpp("4618", 0x4618, "src/4618.cpp"),
    Cpp("4670", 0x4670, "src/4670.cpp"),
    Cpp("46a0", 0x46a0, "src/46a0.cpp"),
    Cpp("46b8", 0x46b8, "src/46b8.cpp"),
    Cpp("4758", 0x4758, "src/4758.cpp"),
    Cpp("47b0", 0x47b0, "src/47b0.cpp"),
    Cpp("47f8", 0x47f8, "src/47f8.cpp"),
    Cpp("4800", 0x4800, "src/4800.cpp"),
    Cpp("4828", 0x4828, "src/4828.cpp"),
    Cpp("4838", 0x4838, "src/4838.cpp"),
    Asm("func_49f8", 0x49f8, "asm/nonmatching/func_49f8.s"),
    Cpp("4a58", 0x4a58, "src/4a58.cpp"),
    Asm("func_4ab0", 0x4ab0, "asm/nonmatching/func_4ab0.s"),
    Cpp("4c28", 0x4c28, "src/4c28.cpp"),
    Asm("func_4d98", 0x4d98, "asm/nonmatching/func_4d98.s"),
    Asm("func_5098", 0x5098, "asm/nonmatching/func_5098.s"),
    Asm("func_5428", 0x5428, "asm/nonmatching/func_5428.s"),
    Asm("func_54b8", 0x54b8, "asm/nonmatching/func_54b8.s"),
    Asm("func_55b8", 0x55b8, "asm/nonmatching/func_55b8.s"),
    Asm("func_55d8", 0x55d8, "asm/nonmatching/func_55d8.s"),
    Asm("func_5670", 0x5670, "asm/nonmatching/func_5670.s"),
    Asm("func_5a70", 0x5a70, "asm/nonmatching/func_5a70.s"),
    Asm("func_5b88", 0x5b88, "asm/nonmatching/func_5b88.s"),
    Asm("func_5d30", 0x5d30, "asm/nonmatching/func_5d30.s"),
    Asm("func_6610", 0x6610, "asm/nonmatching/func_6610.s"),
    Asm("func_6800", 0x6800, "asm/nonmatching/func_6800.s"),
    Asm("func_72a0", 0x72a0, "asm/nonmatching/func_72a0.s"),
    Asm("func_7318", 0x7318, "asm/nonmatching/func_7318.s"),
    Asm("func_7550", 0x7550, "asm/nonmatching/func_7550.s"),
    Asm("func_78d8", 0x78d8, "asm/nonmatching/func_78d8.s"),
    Asm("func_8750", 0x8750, "asm/nonmatching/func_8750.s"),
    Asm("func_8870", 0x8870, "asm/nonmatching/func_8870.s"),
    Asm("func_8908", 0x8908, "asm/nonmatching/func_8908.s"),
    Asm("func_8968", 0x8968, "asm/nonmatching/func_8968.s"),
    Asm("func_8c08", 0x8c08, "asm/nonmatching/func_8c08.s"),
    Asm("func_8d20", 0x8d20, "asm/nonmatching/func_8d20.s"),
    Asm("func_8d60", 0x8d60, "asm/nonmatching/func_8d60.s"),
    Asm("func_8ea0", 0x8ea0, "asm/nonmatching/func_8ea0.s"),
    Asm("func_8ef8", 0x8ef8, "asm/nonmatching/func_8ef8.s"),
    Asm("func_8f58", 0x8f58, "asm/nonmatching/func_8f58.s"),
    Asm("func_9058", 0x9058, "asm/nonmatching/func_9058.s"),
    Asm("func_9230", 0x9230, "asm/nonmatching/func_9230.s"),
    Asm("func_95a8", 0x95a8, "asm/nonmatching/func_95a8.s"),
    Asm("func_9a50", 0x9a50, "asm/nonmatching/func_9a50.s"),
    Asm("func_9c58", 0x9c58, "asm/nonmatching/func_9c58.s"),
    Asm("func_9c90", 0x9c90, "asm/nonmatching/func_9c90.s"),
    Asm("func_9cd8", 0x9cd8, "asm/nonmatching/func_9cd8.s"),
    Asm("func_9d40", 0x9d40, "asm/nonmatching/func_9d40.s"),
    Asm("func_9de0", 0x9de0, "asm/nonmatching/func_9de0.s"),
    Asm("func_9e20", 0x9e20, "asm/nonmatching/func_9e20.s"),
    Asm("func_9ea8", 0x9ea8, "asm/nonmatching/func_9ea8.s"),
    Asm("func_9ec8", 0x9ec8, "asm/nonmatching/func_9ec8.s"),
    Asm("func_9f50", 0x9f50, "asm/nonmatching/func_9f50.s"),
    Asm("func_9fc0", 0x9fc0, "asm/nonmatching/func_9fc0.s"),
    Asm("func_a050", 0xa050, "asm/nonmatching/func_a050.s"),
    Asm("func_a0f0", 0xa0f0, "asm/nonmatching/func_a0f0.s"),
    Asm("func_a1a8", 0xa1a8, "asm/nonmatching/func_a1a8.s"),
    Asm("func_a228", 0xa228, "asm/nonmatching/func_a228.s"),
    Asm("func_a2d8", 0xa2d8, "asm/nonmatching/func_a2d8.s"),
    Asm("func_a458", 0xa458, "asm/nonmatching/func_a458.s"),
    Asm("func_a5c8", 0xa5c8, "asm/nonmatching/func_a5c8.s"),
    Asm("func_a6f8", 0xa6f8, "asm/nonmatching/func_a6f8.s"),
    Asm("func_a858", 0xa858, "asm/nonmatching/func_a858.s"),
    Asm("func_a990", 0xa990, "asm/nonmatching/func_a990.s"),
    Asm("func_aa88", 0xaa88, "asm/nonmatching/func_aa88.s"),
    Asm("func_ac80", 0xac80, "asm/nonmatching/func_ac80.s"),
    Asm("func_b008", 0xb008, "asm/nonmatching/func_b008.s"),
    Asm("func_b040", 0xb040, "asm/nonmatching/func_b040.s"),
    Asm("func_b080", 0xb080, "asm/nonmatching/func_b080.s"),
    Asm("func_b210", 0xb210, "asm/nonmatching/func_b210.s"),
    Asm("func_b600", 0xb600, "asm/nonmatching/func_b600.s"),
    Asm("func_b738", 0xb738, "asm/nonmatching/func_b738.s"),
    Asm("func_ba40", 0xba40, "asm/nonmatching/func_ba40.s"),
    Asm("func_bd68", 0xbd68, "asm/nonmatching/func_bd68.s"),
    Asm("func_c320", 0xc320, "asm/nonmatching/func_c320.s"),
    Asm("func_c430", 0xc430, "asm/nonmatching/func_c430.s"),
    Asm("func_c500", 0xc500, "asm/nonmatching/func_c500.s"),
    Asm("func_c838", 0xc838, "asm/nonmatching/func_c838.s"),
    Asm("func_ca18", 0xca18, "asm/nonmatching/func_ca18.s"),
    Asm("func_cc48", 0xcc48, "asm/nonmatching/func_cc48.s"),
    Asm("func_ce28", 0xce28, "asm/nonmatching/func_ce28.s"),
    Asm("func_cf18", 0xcf18, "asm/nonmatching/func_cf18.s"),
    Asm("func_d0d8", 0xd0d8, "asm/nonmatching/func_d0d8.s"),
    Asm("func_d2a8", 0xd2a8, "asm/nonmatching/func_d2a8.s"),
    Asm("func_d340", 0xd340, "asm/nonmatching/func_d340.s"),
    Cpp("d3b0", 0xd3b0, "src/d3b0.cpp"),
    Asm("func_d3c0", 0xd3c0, "asm/nonmatching/func_d3c0.s"),
    Asm("func_d440", 0xd440, "asm/nonmatching/func_d440.s"),
    Cpp("d4c0", 0xd4c0, "src/d4c0.cpp"),
    Asm("func_d4c8", 0xd4c8, "asm/nonmatching/func_d4c8.s"),
    Asm("func_d4f8", 0xd4f8, "asm/nonmatching/func_d4f8.s"),
    Cpp("d538", 0xd538, "src/d538.cpp"),
    Cpp("d540", 0xd540, "src/d540.cpp"), # __cxa_pure_virtual
    Cpp("d548", 0xd548, "src/d548.cpp"),
    Asm("func_d550", 0xd550, "asm/nonmatching/func_d550.s"),
    Asm("func_d5d8", 0xd5d8, "asm/nonmatching/func_d5d8.s"),
    Asm("func_d660", 0xd660, "asm/nonmatching/func_d660.s"),
    Asm("func_d6e8", 0xd6e8, "asm/nonmatching/func_d6e8.s"),
    Asm("func_d718", 0xd718, "asm/nonmatching/func_d718.s"),
    Asm("func_d748", 0xd748, "asm/nonmatching/func_d748.s"),
    Asm("func_d778", 0xd778, "asm/nonmatching/func_d778.s"),
    Asm("func_d7a8", 0xd7a8, "asm/nonmatching/func_d7a8.s"),
    Asm("func_d7d8", 0xd7d8, "asm/nonmatching/func_d7d8.s"),
    # new TU ?
    Asm("func_d808", 0xd808, "asm/nonmatching/func_d808.s"),
    Asm("func_d8a0", 0xd8a0, "asm/nonmatching/func_d8a0.s"),
    Cpp("d938", 0xd938, "src/d938.cpp"),
    Asm("func_d940", 0xd940, "asm/nonmatching/func_d940.s"),
    Asm("func_d9c0", 0xd9c0, "asm/nonmatching/func_d9c0.s"),
    Asm("func_da40", 0xda40, "asm/nonmatching/func_da40.s"),
    Asm("func_dac0", 0xdac0, "asm/nonmatching/func_dac0.s"),
    Asm("func_db30", 0xdb30, "asm/nonmatching/func_db30.s"),
    Asm("func_dba0", 0xdba0, "asm/nonmatching/func_dba0.s"),
    Asm("func_dc28", 0xdc28, "asm/nonmatching/func_dc28.s"),
    Cpp("dc80", 0xdc80, "src/dc80.cpp"),
    Asm("func_dcd8", 0xdcd8, "asm/nonmatching/func_dcd8.s"),
    Asm("func_dd30", 0xdd30, "asm/nonmatching/func_dd30.s"),
    Asm("func_dd88", 0xdd88, "asm/nonmatching/func_dd88.s"),
    Asm("func_dde0", 0xdde0, "asm/nonmatching/func_dde0.s"),
    Asm("func_de38", 0xde38, "asm/nonmatching/func_de38.s"),
    Asm("func_df10", 0xdf10, "asm/nonmatching/func_df10.s"),
    Asm("func_df68", 0xdf68, "asm/nonmatching/func_df68.s"),
    Asm("func_dfb0", 0xdfb0, "asm/nonmatching/func_dfb0.s"),
    Asm("func_e008", 0xe008, "asm/nonmatching/func_e008.s"),
    Asm("func_e060", 0xe060, "asm/nonmatching/func_e060.s"),
    Asm("func_e0b8", 0xe0b8, "asm/nonmatching/func_e0b8.s"),
    Asm("func_e138", 0xe138, "asm/nonmatching/func_e138.s"),
    Asm("func_e208", 0xe208, "asm/nonmatching/func_e208.s"),
    Asm("func_e2b8", 0xe2b8, "asm/nonmatching/func_e2b8.s"),
    Asm("func_e338", 0xe338, "asm/nonmatching/func_e338.s"),
    Asm("func_e370", 0xe370, "asm/nonmatching/func_e370.s"),
    Asm("func_e430", 0xe430, "asm/nonmatching/func_e430.s"),
    Asm("func_e480", 0xe480, "asm/nonmatching/func_e480.s"),
    Asm("func_e4d8", 0xe4d8, "asm/nonmatching/func_e4d8.s"),
    Asm("func_e510", 0xe510, "asm/nonmatching/func_e510.s"),
    Asm("func_e548", 0xe548, "asm/nonmatching/func_e548.s"),
    Asm("func_e5c0", 0xe5c0, "asm/nonmatching/func_e5c0.s"),
    Asm("func_e638", 0xe638, "asm/nonmatching/func_e638.s"),
    Asm("func_e888", 0xe888, "asm/nonmatching/func_e888.s"),
    Asm("func_eb98", 0xeb98, "asm/nonmatching/func_eb98.s"),
    Asm("func_ec08", 0xec08, "asm/nonmatching/func_ec08.s"),
    Asm("func_eca8", 0xeca8, "asm/nonmatching/func_eca8.s"),
    Asm("func_f180", 0xf180, "asm/nonmatching/func_f180.s"),
    Cpp("f210", 0xf210, "src/f210.cpp"),
    Cpp("f280", 0xf280, "src/f280.cpp"),
    Cpp("f2a8", 0xf2a8, "src/f2a8.cpp"),
    Cpp("f348", 0xf348, "src/f348.cpp"),
    Cpp("f3b8", 0xf3b8, "src/f3b8.cpp"),
    Asm("func_f3e0", 0xf3e0, "asm/nonmatching/func_f3e0.s"),
    Cpp("f590", 0xf590, "src/f590.cpp"),
    Asm("func_f620", 0xf620, "asm/nonmatching/func_f620.s"),
    Asm("func_f668", 0xf668, "asm/nonmatching/func_f668.s"),
    Asm("func_f6b0", 0xf6b0, "asm/nonmatching/func_f6b0.s"),
    Asm("func_fc60", 0xfc60, "asm/nonmatching/func_fc60.s"),
    Asm("func_10050", 0x10050, "asm/nonmatching/func_10050.s"),
    Cpp("10360", 0x10360, "src/10360.cpp"),
    Asm("func_10368", 0x10368, "asm/nonmatching/func_10368.s"),
    # new TU ?
    Asm("func_104b0", 0x104b0, "asm/nonmatching/func_104b0.s"),
    Asm("func_10608", 0x10608, "asm/nonmatching/func_10608.s"),
    Asm("func_10710", 0x10710, "asm/nonmatching/func_10710.s"),
    Asm("func_10738", 0x10738, "asm/nonmatching/func_10738.s"),
    Asm("func_10760", 0x10760, "asm/nonmatching/func_10760.s"),
    Asm("func_10790", 0x10790, "asm/nonmatching/func_10790.s"),
    Asm("func_10830", 0x10830, "asm/nonmatching/func_10830.s"),
    Asm("func_10858", 0x10858, "asm/nonmatching/func_10858.s"),
    Asm("func_108f8", 0x108f8, "asm/nonmatching/func_108f8.s"),
    # new TU?
    Asm("func_10f38", 0x10f38, "asm/nonmatching/func_10f38.s"),
    Asm("func_10fb8", 0x10fb8, "asm/nonmatching/func_10fb8.s"),
    Asm("func_110c8", 0x110c8, "asm/nonmatching/func_110c8.s"),
    Asm("func_11110", 0x11110, "asm/nonmatching/func_11110.s"),
    Asm("func_11410", 0x11410, "asm/nonmatching/func_11410.s"),
    Asm("func_11700", 0x11700, "asm/nonmatching/func_11700.s"),
    Asm("func_11cd0", 0x11cd0, "asm/nonmatching/func_11cd0.s"),
    Asm("func_11df8", 0x11df8, "asm/nonmatching/func_11df8.s"),
    Asm("func_11e50", 0x11e50, "asm/nonmatching/func_11e50.s"),
    Asm("func_12310", 0x12310, "asm/nonmatching/func_12310.s"),
    Asm("func_12340", 0x12340, "asm/nonmatching/func_12340.s"),
    Asm("func_12420", 0x12420, "asm/nonmatching/func_12420.s"),
    Asm("func_12458", 0x12458, "asm/nonmatching/func_12458.s"),
    Asm("func_12488", 0x12488, "asm/nonmatching/func_12488.s"),
    Asm("func_124c0", 0x124c0, "asm/nonmatching/func_124c0.s"),
    Asm("func_127d8", 0x127d8, "asm/nonmatching/func_127d8.s"),
    Cpp("12af0", 0x12af0, "src/12af0.cpp"),
    Asm("func_12b08", 0x12b08, "asm/nonmatching/func_12b08.s"),
    Asm("func_12b88", 0x12b88, "asm/nonmatching/func_12b88.s"),
    Asm("func_12f88", 0x12f88, "asm/nonmatching/func_12f88.s"),
    Asm("func_13340", 0x13340, "asm/nonmatching/func_13340.s"),
    Asm("func_13518", 0x13518, "asm/nonmatching/func_13518.s"),
    Asm("func_136f8", 0x136f8, "asm/nonmatching/func_136f8.s"),
    Asm("func_13aa8", 0x13aa8, "asm/nonmatching/func_13aa8.s"),
    Asm("func_13b60", 0x13b60, "asm/nonmatching/func_13b60.s"),
    Cpp("13c58", 0x13c58, "src/13c58.cpp"),
    Asm("func_13c60", 0x13c60, "asm/nonmatching/func_13c60.s"),
    Cpp("13d48", 0x13d48, "src/13d48.cpp"),
    Asm("func_13d50", 0x13d50, "asm/nonmatching/func_13d50.s"),
    Asm("func_13e10", 0x13e10, "asm/nonmatching/func_13e10.s"),
    Cpp("142d8", 0x142d8, "src/142d8.cpp"),
    Asm("func_142e0", 0x142e0, "asm/nonmatching/func_142e0.s"),
    Asm("func_145d8", 0x145d8, "asm/nonmatching/func_145d8.s"),
    Asm("func_14620", 0x14620, "asm/nonmatching/func_14620.s"),
    Asm("func_14880", 0x14880, "asm/nonmatching/func_14880.s"),
    Asm("func_14940", 0x14940, "asm/nonmatching/func_14940.s"),
    # new TU ?
    Asm("func_15108", 0x15108, "asm/nonmatching/func_15108.s"),
    Asm("func_151d8", 0x151d8, "asm/nonmatching/func_151d8.s"),
    Asm("func_15e40", 0x15e40, "asm/nonmatching/func_15e40.s"),
    Asm("func_162c8", 0x162c8, "asm/nonmatching/func_162c8.s"),
    Asm("func_16538", 0x16538, "asm/nonmatching/func_16538.s"),
    Asm("func_165c8", 0x165c8, "asm/nonmatching/func_165c8.s"),
    # new TU?
    Asm("func_16660", 0x16660, "asm/nonmatching/func_16660.s"),
    Asm("func_16cb8", 0x16cb8, "asm/nonmatching/func_16cb8.s"),
    Asm("func_16df8", 0x16df8, "asm/nonmatching/func_16df8.s"),
    Cpp("16f30", 0x16f30, "src/16f30.cpp"),
    Asm("func_16f38", 0x16f38, "asm/nonmatching/func_16f38.s"),
    Asm("func_17368", 0x17368, "asm/nonmatching/func_17368.s"),
    Asm("func_173f8", 0x173f8, "asm/nonmatching/func_173f8.s"),
    Asm("func_177c8", 0x177c8, "asm/nonmatching/func_177c8.s"),
    Asm("func_178c0", 0x178c0, "asm/nonmatching/func_178c0.s"),
    Asm("func_178f8", 0x178f8, "asm/nonmatching/func_178f8.s"),
    Asm("func_17cc0", 0x17cc0, "asm/nonmatching/func_17cc0.s"),
    Asm("func_17d38", 0x17d38, "asm/nonmatching/func_17d38.s"),
    Asm("func_17da0", 0x17da0, "asm/nonmatching/func_17da0.s"),
    Asm("func_17fd8", 0x17fd8, "asm/nonmatching/func_17fd8.s"),
    Asm("func_18038", 0x18038, "asm/nonmatching/func_18038.s"),
    Asm("func_18088", 0x18088, "asm/nonmatching/func_18088.s"),
    Asm("func_181b8", 0x181b8, "asm/nonmatching/func_181b8.s"),
    Asm("func_18298", 0x18298, "asm/nonmatching/func_18298.s"),
    Asm("func_183c0", 0x183c0, "asm/nonmatching/func_183c0.s"),
    Asm("func_184d0", 0x184d0, "asm/nonmatching/func_184d0.s"),
    Cpp("18550", 0x18550, "src/18550.cpp"),
    Asm("func_18560", 0x18560, "asm/nonmatching/func_18560.s"),
    # new TU?
    Asm("func_18608", 0x18608, "asm/nonmatching/func_18608.s"),
    Asm("func_18738", 0x18738, "asm/nonmatching/func_18738.s"),
    Asm("func_188f0", 0x188f0, "asm/nonmatching/func_188f0.s"),
    Cpp("18ce0", 0x18ce0, "src/18ce0.cpp"),
    Asm("func_18d00", 0x18d00, "asm/nonmatching/func_18d00.s"),
    Asm("func_18d90", 0x18d90, "asm/nonmatching/func_18d90.s"),
    Asm("func_18df0", 0x18df0, "asm/nonmatching/func_18df0.s"),
    Asm("func_18e50", 0x18e50, "asm/nonmatching/func_18e50.s"),
    Asm("func_18eb8", 0x18eb8, "asm/nonmatching/func_18eb8.s"),
    Asm("func_18f90", 0x18f90, "asm/nonmatching/func_18f90.s"),
    Asm("func_19090", 0x19090, "asm/nonmatching/func_19090.s"),
    Asm("func_191a8", 0x191a8, "asm/nonmatching/func_191a8.s"),
    Cpp("191f0", 0x191f0, "src/191f0.cpp"),
    Asm("func_19200", 0x19200, "asm/nonmatching/func_19200.s"),
    Asm("func_19270", 0x19270, "asm/nonmatching/func_19270.s"),
    Asm("func_192b0", 0x192b0, "asm/nonmatching/func_192b0.s"),
    Cpp("194c8", 0x194c8, "src/194c8.cpp"),
    Asm("func_194d0", 0x194d0, "asm/nonmatching/func_194d0.s"),
    Asm("func_19548", 0x19548, "asm/nonmatching/func_19548.s"),
    Asm("func_195b0", 0x195b0, "asm/nonmatching/func_195b0.s"),
    Asm("func_19618", 0x19618, "asm/nonmatching/func_19618.s"),
    Asm("func_196c0", 0x196c0, "asm/nonmatching/func_196c0.s"),
    Cpp("196f0", 0x196f0, "src/196f0.cpp"),
    Asm("func_196f8", 0x196f8, "asm/nonmatching/func_196f8.s"),
    Asm("func_19740", 0x19740, "asm/nonmatching/func_19740.s"),
    Asm("func_197f0", 0x197f0, "asm/nonmatching/func_197f0.s"),
    Asm("func_198a0", 0x198a0, "asm/nonmatching/func_198a0.s"),
    Asm("func_19ac0", 0x19ac0, "asm/nonmatching/func_19ac0.s"),
    Asm("func_19ad0", 0x19ad0, "asm/nonmatching/func_19ad0.s"),
    Asm("func_19c90", 0x19c90, "asm/nonmatching/func_19c90.s"),
    Asm("func_19e50", 0x19e50, "asm/nonmatching/func_19e50.s"),
    Asm("func_19fd0", 0x19fd0, "asm/nonmatching/func_19fd0.s"),
    Asm("func_1a348", 0x1a348, "asm/nonmatching/func_1a348.s"),
    Asm("func_1a398", 0x1a398, "asm/nonmatching/func_1a398.s"),
    Asm("func_1a3e0", 0x1a3e0, "asm/nonmatching/func_1a3e0.s"),
    Asm("func_1a430", 0x1a430, "asm/nonmatching/func_1a430.s"),
    # new TU?
    Asm("func_1a4a8", 0x1a4a8, "asm/nonmatching/func_1a4a8.s"),
    Asm("func_1a540", 0x1a540, "asm/nonmatching/func_1a540.s"),
    Asm("func_1a5a8", 0x1a5a8, "asm/nonmatching/func_1a5a8.s"),
    Asm("func_1a5e0", 0x1a5e0, "asm/nonmatching/func_1a5e0.s"),
    Asm("func_1a6e0", 0x1a6e0, "asm/nonmatching/func_1a6e0.s"),
    Asm("func_1a750", 0x1a750, "asm/nonmatching/func_1a750.s"),
    Cpp("1a7c8", 0x1a7c8, "src/1a7c8.cpp"),
    Asm("func_1a7d8", 0x1a7d8, "asm/nonmatching/func_1a7d8.s"),
    Asm("func_1a850", 0x1a850, "asm/nonmatching/func_1a850.s"),
    Asm("func_1a8c8", 0x1a8c8, "asm/nonmatching/func_1a8c8.s"),
    Asm("func_1a940", 0x1a940, "asm/nonmatching/func_1a940.s"),
    Asm("func_1aa90", 0x1aa90, "asm/nonmatching/func_1aa90.s"),
    Asm("func_1aad8", 0x1aad8, "asm/nonmatching/func_1aad8.s"),
    Asm("func_1ab30", 0x1ab30, "asm/nonmatching/func_1ab30.s"),
    Asm("func_1ab80", 0x1ab80, "asm/nonmatching/func_1ab80.s"),
    # new TU?
    Asm("func_1abe0", 0x1abe0, "asm/nonmatching/func_1abe0.s"),
    Asm("func_1ac98", 0x1ac98, "asm/nonmatching/func_1ac98.s"),
    Asm("func_1af08", 0x1af08, "asm/nonmatching/func_1af08.s"),
    Asm("func_1af28", 0x1af28, "asm/nonmatching/func_1af28.s"),
    Asm("func_1af90", 0x1af90, "asm/nonmatching/func_1af90.s"),
    # new TU?
    Asm("func_1b018", 0x1b018, "asm/nonmatching/func_1b018.s"),
    Asm("func_1b0c0", 0x1b0c0, "asm/nonmatching/func_1b0c0.s"),
    Asm("func_1b148", 0x1b148, "asm/nonmatching/func_1b148.s"),
    Asm("func_1b2f0", 0x1b2f0, "asm/nonmatching/func_1b2f0.s"),
    Asm("func_1b4c0", 0x1b4c0, "asm/nonmatching/func_1b4c0.s"),
    Asm("func_1b610", 0x1b610, "asm/nonmatching/func_1b610.s"),
    Asm("func_1b7c8", 0x1b7c8, "asm/nonmatching/func_1b7c8.s"),
    # new TU?
    Asm("func_1b850", 0x1b850, "asm/nonmatching/func_1b850.s"),
    Asm("func_1ba08", 0x1ba08, "asm/nonmatching/func_1ba08.s"),
    Asm("func_1ba90", 0x1ba90, "asm/nonmatching/func_1ba90.s"),
    Cpp("1bc00", 0x1bc00, "src/1bc00.cpp"),
    Asm("func_1bc10", 0x1bc10, "asm/nonmatching/func_1bc10.s"),
    Asm("func_1bd18", 0x1bd18, "asm/nonmatching/func_1bd18.s"),
    Asm("func_1bdf8", 0x1bdf8, "asm/nonmatching/func_1bdf8.s"),
    Asm("func_1bed8", 0x1bed8, "asm/nonmatching/func_1bed8.s"),
    Asm("func_1bfb8", 0x1bfb8, "asm/nonmatching/func_1bfb8.s"),
    Cpp("1c070", 0x1c070, "src/1c070.cpp"),
    Cpp("1c080", 0x1c080, "src/1c080.cpp"),
    Asm("func_1c098", 0x1c098, "asm/nonmatching/func_1c098.s"),
    Asm("func_1c100", 0x1c100, "asm/nonmatching/func_1c100.s"),
    Asm("func_1c168", 0x1c168, "asm/nonmatching/func_1c168.s"),
    Asm("func_1c188", 0x1c188, "asm/nonmatching/func_1c188.s"),
    Asm("func_1c280", 0x1c280, "asm/nonmatching/func_1c280.s"),
    Asm("func_1c2a0", 0x1c2a0, "asm/nonmatching/func_1c2a0.s"),
    Asm("func_1c318", 0x1c318, "asm/nonmatching/func_1c318.s"),
    # new TU?
    Asm("func_1c388", 0x1c388, "asm/nonmatching/func_1c388.s"),
    Asm("func_1c708", 0x1c708, "asm/nonmatching/func_1c708.s"),
    Asm("func_1c728", 0x1c728, "asm/nonmatching/func_1c728.s"),
    Asm("func_1ca88", 0x1ca88, "asm/nonmatching/func_1ca88.s"),
    Asm("func_1cab0", 0x1cab0, "asm/nonmatching/func_1cab0.s"),
    Asm("func_1cc70", 0x1cc70, "asm/nonmatching/func_1cc70.s"),
    Asm("func_1ced0", 0x1ced0, "asm/nonmatching/func_1ced0.s"),
    Asm("func_1cf38", 0x1cf38, "asm/nonmatching/func_1cf38.s"),
    Asm("func_1d000", 0x1d000, "asm/nonmatching/func_1d000.s"),
    Asm("func_1d0c0", 0x1d0c0, "asm/nonmatching/func_1d0c0.s"),
    Asm("func_1d2b0", 0x1d2b0, "asm/nonmatching/func_1d2b0.s"),
    Asm("func_1d3d0", 0x1d3d0, "asm/nonmatching/func_1d3d0.s"),
    Asm("func_1d448", 0x1d448, "asm/nonmatching/func_1d448.s"),
    Asm("func_1d4e8", 0x1d4e8, "asm/nonmatching/func_1d4e8.s"),
    Asm("func_1d588", 0x1d588, "asm/nonmatching/func_1d588.s"),
    Asm("func_1d648", 0x1d648, "asm/nonmatching/func_1d648.s"),
    Asm("func_1d6e8", 0x1d6e8, "asm/nonmatching/func_1d6e8.s"),
    Asm("func_1d818", 0x1d818, "asm/nonmatching/func_1d818.s"),
    Asm("func_1d990", 0x1d990, "asm/nonmatching/func_1d990.s"),
    Asm("func_1d9c8", 0x1d9c8, "asm/nonmatching/func_1d9c8.s"),
    Cpp("1d9e8", 0x1d9e8, "src/1d9e8.cpp"),
    Asm("func_1d9f8", 0x1d9f8, "asm/nonmatching/func_1d9f8.s"),
    Asm("func_1da98", 0x1da98, "asm/nonmatching/func_1da98.s"),
    Asm("func_1dc30", 0x1dc30, "asm/nonmatching/func_1dc30.s"),
    Asm("func_1ddc8", 0x1ddc8, "asm/nonmatching/func_1ddc8.s"),
    Asm("func_1df60", 0x1df60, "asm/nonmatching/func_1df60.s"),
    Cpp("1e0f8", 0x1e0f8, "src/1e0f8.cpp"),
    Asm("func_1e100", 0x1e100, "asm/nonmatching/func_1e100.s"),
    Asm("func_1f628", 0x1f628, "asm/nonmatching/func_1f628.s"),
    Asm("func_1f6d0", 0x1f6d0, "asm/nonmatching/func_1f6d0.s"),
    Asm("func_1f718", 0x1f718, "asm/nonmatching/func_1f718.s"),
    Asm("func_1f7e0", 0x1f7e0, "asm/nonmatching/func_1f7e0.s"),
    Asm("func_1f8a0", 0x1f8a0, "asm/nonmatching/func_1f8a0.s"),
    Asm("func_1fa00", 0x1fa00, "asm/nonmatching/func_1fa00.s"),
    Asm("func_1fa78", 0x1fa78, "asm/nonmatching/func_1fa78.s"),
    Asm("func_205b0", 0x205b0, "asm/nonmatching/func_205b0.s"),
    Asm("func_21148", 0x21148, "asm/nonmatching/func_21148.s"),
    Asm("func_21c00", 0x21c00, "asm/nonmatching/func_21c00.s"),
    # Bin("data_226d0", 0x226d0, "assets/data/226d0.bin"), # became rodata for 488.c
    Bin("data_228d0", 0x228d0, "assets/data/228d0.bin"),
    Bin("data_24d80", 0x24d80, "assets/data/24d80.bin"),
    Bin("data_25c30", 0x25c30, "assets/data/25c30.bin"),
    Bin("data_25f80", 0x25f80, "assets/data/25f80.bin"),
    Bin("data_260c0", 0x260c0, "assets/data/260c0.bin"),
    Bin("data_265d0", 0x265d0, "assets/data/265d0.bin"),
    Bin("data_26630", 0x26630, "assets/data/26630.bin"),
    Bin("data_26b70", 0x26b70, "assets/data/26b70.bin"),
    Bin("data_26d90", 0x26d90, "assets/data/26d90.bin"),
    Bin("data_27040", 0x27040, "assets/data/27040.bin"),
    Bin("data_27190", 0x27190, "assets/data/27190.bin"),
    Bin("data_271e0", 0x271e0, "assets/data/271e0.bin"),
    Bin("data_27360", 0x27360, "assets/data/27360.bin"),
    # .data is here, it seems.
    Bin("data_27a00", 0x27a00, "assets/data/27a00.bin"),
]
