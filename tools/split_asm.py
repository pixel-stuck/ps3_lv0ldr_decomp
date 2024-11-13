f = open("../disassembly_fixed.s", "r")

f_out = open("../asm/400.s", 'w')

for line in f:
    if '.global' in line:
        func_addr = int(line[13:], 16)
        f_out.close()
        f_out = open(f"../asm/nonmatching/func_{func_addr:x}.s", 'w')
        print(f"Asm(\"func_{func_addr:x}\", 0x{func_addr:x}, \"asm/nonmatching/func_{func_addr:x}.s\"),")
    f_out.write(line)

f_out.close()
