#include "include_asm.h"
#include "funcs.hpp"

extern s32 data_259c0;
extern const char data_26440[];
extern s32 data_25140;

#ifdef NON_MATCHING
void func_f590(obj1* arg0, s8 arg1, s32 arg2) {
    s32 temp;
    func_e430(arg0);

    func_eb98(data_259c0, 0);
    func_18038();
    func_18560();

    if(arg1 != 0) {
        s32 errcode = arg2 == -1 ? 0xb0000004 : (arg2 == -5) ? 0xb0000009 : 0xb0000063;
        func_1da98(errcode, "");
    }

    func_1df60(&data_25140, func_e0b8());
}
#else
void __attribute__((naked)) func_f590(obj_510* arg0, s8 arg1, s32 arg2) {
    INCLUDE_ASM("asm/nonmatching", func_f590);
}
#endif
