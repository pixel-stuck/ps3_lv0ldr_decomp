#ifndef FUNCS_H
#define FUNCS_H

#include "structs.h"
#include "types.h"

#include "488.hpp"
void func_730();
u64 func_780(u64 address);
s32 func_970(u64 address, void* arg1, u32 arg2);
s32 func_1ab0(u64 arg0, struct_func_1ab0* arg1);
unsigned char func_d548(obj_488*);
s32 func_dc80(obj_488*);
unsigned char func_e008(obj_488*);
void func_e430(obj_488*);
s32 func_f2a8(obj_488*);
u64 func_f348(obj_488*);
s32 func_f3b8(obj_488*);
u64 func_f3e0(obj_488*, u64, s32);
void func_f590(obj_488*, s8, s32);
s32 func_fc60(obj_488*);

s32 func_1740(s32*);
s32 func_18e0(u64, s32, const char*, u64*);

void func_1e00(unk_struct_2f9b0*, u64);
void func_2198(void);
void func_26b8(unk_struct_2f9b0*);
void func_2818(unk_struct_2f9b0*);
void func_2a50(void);
void func_2a98(void);
void func_3008(s32, s32);
void func_3130(s32, s32);
void func_3c08(s32, s32);
void func_3c88(s32);

void func_4618(unk_struct_1188_3*, void*, s32);
void func_46b8(unk_struct_1188_3*);
//ctor
void func_46a0(unk_struct_1188_3*);
s32 func_4758(s32, u32);
void func_47f8(void*);
void func_4800(s32, s32);

void func_54b8(s32);
void func_55d8(s32, s32);

void func_d4c0(void*);
void func_d538(unk_struct_1188_3*);
void func_d550(void);
void func_d5d8(void);
void func_d7d8(void);
s32 func_d808(void);
void func_d8a0(void);
s32 func_dc28(char*);

s32 func_e0b8(void);
void func_eb98(s32, s32);

s32 func_f180(void);
unsigned char func_f210(void);

void func_10050(void);
void func_13b60(void);
void func_13c58(void);
void func_18038(void);
void func_19548(char*);
void func_18560(void);
void func_192b0(s32, s32, s32, s32);
void func_195b0(s32);
void func_19618(s32);
void func_196c0(void);
void func_196f0(void);
void func_1a750(s32, s32, s32);
void func_1ba90(s32, s32, s32, s32);
void func_1ced0(void);
s32 func_1c070(struct_func_1c070*);
void __attribute__((noreturn)) func_1da98(s32, const char*, ...);
void func_1ddc8(char*, ...);
void func_1df60(const char*, ...);
#endif
