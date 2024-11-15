#include "include_asm.h"
#include "funcs.h"

// TODO: migrate rodata
#ifdef NON_MATCHING
long long func_f348(int arg0) {
    if(func_f2a8(arg0) == 1) {
        return 0x2401FC40200;
    } else if(func_f2a8(arg0) == 2) {
        return 0x2401F000200;
    } else if(func_f2a8(arg0) == 3) {
        return 0x2401F000400;
    } else {
        return 0x2401FC00000;
    }
}
#else
INCLUDE_ASM("asm/nonmatching", func_f348);
#endif
