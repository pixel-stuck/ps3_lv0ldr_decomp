#include "include_asm.h"

// INCLUDE_ASM("asm/nonmatching", func_c68);

int func_f2a8(void);
void func_a18(int, int, int);
void func_808(int, int, int);

void func_c68(int arg1, int arg2, int arg3) {
    if(func_f2a8() > 0) {
        func_a18(arg1, arg2, arg3);
    } else {
        func_808(arg1, arg2, arg3);
    }
}
