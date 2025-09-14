#include "include_asm.h"
#include "funcs.hpp"

// stubborn andi on the return value
#ifdef NON_MATCHING
unsigned char func_f3b8(void) {
    unsigned char res;
    func_1ced0();

    if(func_1c070() == 1) {
        res = 1;
    } else {
        res = 0;
    }
    return res & 1;
}
#else
s32 __attribute__((naked)) func_f3b8(obj_510*) {
    INCLUDE_ASM("asm/nonmatching", func_f3b8);
}
#endif
