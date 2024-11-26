#include "include_asm.h"

#ifdef NON_MATCHING
// seems to be the correct behavior, but clearly it needs to be written some other way
s32 func_4758(s32 arg0, u32 arg1) {
    s32 temp;

    if (arg1 == 0) {
        temp = 0;
    } else {
        temp = 1;
    }

    if (arg1 >= 2) {
        temp = 2;
    }

    if (arg1 >= 4) {
        temp = 4;
    }

    if (arg1 >= 8) {
        temp = 8;
    }

    if (arg1 >= 0x10) {
        temp = 0x10;
    }

    return temp;
}
#else
INCLUDE_ASM("asm/nonmatching", func_4758);
#endif
