#ifndef OBJ_510_HPP
#define OBJ_510_HPP

#include "include_asm.h"
#include "types.h"
#include "funcs.hpp"
#include "structs.h"

#include <spu_intrinsics.h>
#include <spu_mfcio.h>
#include "spu_internals.h"

#include "mem_utils.hpp"
// #include "obj_4670.hpp"

extern const char data_25300[];

void* memset(void*, int, u32);

extern obj_2f9b0 data_2f9b0;

class obj_510;

unsigned char func_d548(obj_510*);
s32 func_dc80(obj_510*);
unsigned char func_e008(obj_510*);
void func_e430(obj_510*);
s32 func_f2a8(obj_510*);
u64 func_f348(obj_510*);
s32 func_f3b8(obj_510*);
u64 func_f3e0(obj_510*, u64, s32);
void func_f590(obj_510*, s8, s32);
s32 func_fc60(obj_510*);

extern s64 data_260a0;
extern const s64 data_22870;

class obj_510 {
public:
#ifdef FUNC_ORDER
    // obj_510();
#endif
    // obj_510() {
    //
    // }

    s32 func_580(u64 arg1, const char* arg2, u64* arg3, u64* arg4) {
        struct_func_1ab0 sp20;
        u64 sp30[6];
        s32 res;

        if(arg2[0] == '\0') {
            return -3;
        }

        if(func_1ab0(arg1, &sp20) == 0) {
            if(func_18e0(arg1 + 0x10, sp20.unk04, arg2, sp30) == 0) {
                *arg3 = arg1 + sp30[0];
                *arg4 = sp30[1];

                return 0;
            }
        }
        return -1;
    }

    s32 func_678(u64 arg1, u64* arg2) {
        u64 sp20;
        u64 sp30;
        u64 res;

        res = func_f3e0(this, arg1, 0x400);

        if(res != -1) {
            if(func_580(res, "updater", &sp20, &sp30) == 0) {
                res = func_f3e0(this, sp20, sp30);

                *arg2 = res;

                if(res != -1) {
                    return 0;
                }
            }
        }

        return -1;
    }

    s32 func_808(u64 arg1, u64* arg2) {
        // TODO: is there a better way than an array?
        u64 sp20[12];

        s64 res;
        s64 bank;
        s64 address;

        res = func_f3e0(this, arg1, 0x400);

        if(res != -1) {
            if(func_580(res, "bank_indicator", &sp20[0], &sp20[8]) == 0) {
                address = func_f3e0(this, sp20[0], sp20[8]);
                if(address != -1) {
                    bank = mem_utils::func_780(address);
                    if(func_580(res, bank < 0 ? "lv0_bank0" : "lv0_bank1", &sp20[6], &sp20[4]) == 0) {
                        res = func_f3e0(this, sp20[6], 0x400);
                        if(res != -1) {
                            if(func_580(res, "lv0", &sp20[2], &sp20[10]) == 0) {
                                res = func_f3e0(this, sp20[2], sp20[10]);

                                *arg2 = res;

                                if(res != -1) {
                                    return 0;
                                }
                            }
                        }
                    }
                }
            }
        }

        return -1;
    }

    s32 func_a18(u64 arg1, u64* arg2) {
        u64 sp20[12];
        u64 temp1;
        u64 temp2;
        s32 result;

        temp1 = func_f3e0(this, arg1, 0x3E0);
        if(temp1 != -1) {
            if(func_f2a8(this) == 3) {
                s32 bank = func_dc80(this);
                result = func_580(temp1, (bank == 0) ? "ros0" : "ros1", &sp20[4], &sp20[2]);
                if(result != 0) {
                    return result;
                }
                temp2 = sp20[4];
            } else {
                result = func_580(temp1, "ros", &sp20[2], &sp20[4]);
                if(result != 0) {
                    return result;
                }
                sp20[2] = sp20[2] - temp1 + arg1;
                temp1 = func_f3e0(this, sp20[2], 0x20);
                if(temp1 != -1) {
                    mem_utils::func_970(temp1, &sp20[8], 0x20);
                    temp2 = sp20[2] + sp20[8];
                }
            }

            if(temp1 != -1) {
                temp1 = func_f3e0(this, temp2, 0x3E0);
                if(temp1 != -1) {
                    temp1 += 0x10;

                    result = func_580(temp1, "lv0", &sp20[0], &sp20[6]);
                    if(result != 0) {
                        return result;
                    }

                    sp20[0] = (temp2 + 0x10) + (sp20[0] - temp1);
                    temp1 = func_f3e0(this, sp20[0], sp20[6]);

                    *arg2 = temp1;

                    if(temp1 != -1) {
                        return result;
                    }
                }
            }
        }

        return -1;
    }


    s32 func_c68(u64 arg2, u64* arg3) {
        if(func_f2a8(this) > 0) {
            return func_a18(arg2, arg3);
        } else {
            return func_808(arg2, arg3);
        }
    }

    s32 func_cf0(u64* arg1) {
        u64 flash_addr;
        s32 (obj_510::*funcptr1)(u64, u64*);
        s32 (obj_510::*funcptr2)(u64, u64*);

        flash_addr = func_f348(this);

        if(func_e008(this) != 0) {
            funcptr2 = &obj_510::func_c68;
            funcptr1 = &obj_510::func_f28;
        } else {
            funcptr2 = &obj_510::func_f28;
            funcptr1 = &obj_510::func_c68;
        }

        if(func_d548(this) != 0) {
            funcptr1 = &obj_510::func_f28;
            funcptr2 = &obj_510::func_c68;
        }

        if((this->*funcptr1)(flash_addr, arg1) == 0 ) {
            return 0;
        }

        if((this->*funcptr2)(flash_addr, arg1) == 0 ) {
            return 0;
        }

        return -1;
    }

    virtual s32 func_e40() {
        s32 res;
        u64 temp;

        func_10050();
        res = func_ff8();
        if(res != 0) {
            return res;
        }

        func_d7d8();
        func_510();
        res = func_fc60(this);
        if(res != 0) {
            return res;
        }

        res = func_cf0(&temp);
        if(res != 0) {
            func_d808();
            return -1;
        }

        func_d5d8();
        res = func_1188(temp);
        if(res != 0) {
            func_d8a0();
            return -1;
        }

        func_d550();
        func_10b0();

        return res;
    }

    virtual void func_e38(s32 arg1, s32 arg2) {
        func_f590(this, arg1, arg2);
    }

    s32 func_f28(u64 arg1, u64* arg2) {
        if(func_f2a8(this) <= 0) {
            return func_678(arg1, arg2);
        }

        return -1;
    }

    void func_fa0(s32 arg0, s32 arg1) {
        {
            if(arg0 == 1) {
                if(arg1 == 0xFFFF) {
                    func_26b8(&data_2f9b0);
                }
            } else if(arg0 == 0) {
                if(arg1 == 0xFFFF) {
                    func_2818(&data_2f9b0);
                }
            }
        }
    }

    void func_fd8() {
        func_fa0(0, 0xFFFF);
    }

    void func_fe8() {
        func_fa0(1, 0xFFFF);
    }

    s32 func_ff8() {
        s32 sp20;
        if(func_1740(&sp20) == 0) {
            return 0;
        } else {
            return -5;
        }
    }

    virtual void func_1028() {
        spu_writech(64, 0);
        spu_writech(64, 2);
    }

    virtual void func_1120() {
        spu_writech(64, 0x20000);

        mem_utils::func_1040(data_260a0 + data_22870, -2);
        spu_writech(64, 2);
        return;
    }

    virtual __attribute__((naked)) s32 func_1188(u64 arg1) {
        INCLUDE_ASM("asm/nonmatching", func_1188);
    }

    struct test {
        u8 unk00;
        u8 unk01;
        u8 unk02;
        u8 unk03;
    };

    virtual void func_10b0() {
        mem_utils::func_1040(0,0x500);
        u8 ret = func_f3b8(this);
        test temp = {0, 0, 0, 0};
        temp.unk00 = ret;
        temp.unk01 = 1;
        mem_utils::func_1040(4, *(s32*)&temp);
    }

    virtual void func_510() {
        func_d938(data_25300); // \n TODO: properly deduplicate.
        func_d938("Boot Loader SE Version 3.5.6 ");
        func_d938("(Build ID: 4275,46986, ");
        func_d938("Build Date: 2011-02-15_19:06:04)");
        func_d938(data_25300); // \n
        func_d938("Copyright(C) 2011 Sony Computer Entertainment Inc.All Rights Reserved.");
        func_d938(data_25300); // \n
    }
};
#endif
