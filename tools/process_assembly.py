import re

f_in = open("disassembly.txt", "r")
f_out = open("disassembly_fixed.s", "w")
f_undef = open("undefined_syms.ld", "w")

addr_set = set()
func_set = set()
data_set = set()

def addr_add(matchobj):
    addr = int(matchobj.group(0), 16)
    if addr not in func_set:
        addr_set.add(addr)
    return ""

def func_addr_add(matchobj):
    addr = int(matchobj.group(0), 16)
    if addr in addr_set:
        addr_set.remove(addr)

    func_set.add(addr)
    return ""

def data_addr_add(matchobj):
    addr = int(matchobj.group(0), 16)

    data_set.add(addr)
    return ""

def addr_replace(matchobj):
    addr = int(matchobj.group(0), 16)
    if addr in func_set:
        return f"func_{addr:x}"
    elif addr in addr_set:
        return f"label_{addr:x}"
    elif addr in data_set:
        return f"data_{addr:x}"

for line in f_in:
    if line == '\n':
        continue

    address = int(line.split(':')[0], 16)
    line = line[23:]

    if 'brsl' in line:
        re.sub(r"0x[a-fA-F0-9]*", func_addr_add, line)
    elif 'br' in line:
        re.sub(r"0x[a-fA-F0-9]*", addr_add, line)
    elif 'lqr' in line or 'stqr' in line:
        re.sub(r"0x[a-fA-F0-9]*", data_addr_add, line)

f_in.seek(0)

for line in f_in:
    if line == '\n':
        continue

    address = int(line.split(':')[0], 16)
    line = line[23:]

    if 'hbrp' in line:
        line = "hbrp\n"
    elif 'br' in line or 'lqr' in line or 'stqr' in line:
        line = re.sub(r"0x[a-fA-F0-9]*", addr_replace, line)

    if address in func_set:
        f_out.write(f".global func_{address:x}\nfunc_{address:x}:\n")

    if address in addr_set:
        f_out.write(f"label_{address:x}:\n")

    f_out.write('\t' + line)

for addr in data_set:
    f_undef.write(f"data_{addr:x} = 0x{addr:x};\n")

f_in.close()
f_out.close()
f_undef.close()
