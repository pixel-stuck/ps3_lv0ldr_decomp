#include "include_asm.h"


int func_e0b8(void);
void func_e430(int*);
void func_eb98(int, int);
void func_18038(void);
void func_18560(void);
void __attribute__((noreturn)) func_1da98(int, char*, ...);
void func_1df60(int*, int);

extern int data_259c0;
extern char data_26440[];
extern int data_25140;

#ifdef NON_MATCHING
void func_f590(int* arg0, char arg1, int arg2) {
    int temp;
    func_e430(arg0);

    func_eb98(data_259c0, 0);
    func_18038();
    func_18560();

    if(arg1 != 0) {
        int errcode = arg2 == -1 ? 0xb0000004 : (arg2 == -5) ? 0xb0000009 : 0xb0000063;
        func_1da98(errcode, "");
    }

    func_1df60(&data_25140, func_e0b8());
}
#else
INCLUDE_ASM("asm/nonmatching", func_f590);
#endif
