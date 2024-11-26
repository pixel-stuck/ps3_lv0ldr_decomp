#include "include_asm.h"
#include <spu_intrinsics.h>
#include <spu_mfcio.h>
#include "funcs.h"
#include "structs.h"

int func_488(void) {
    obj_488 sp20;
    int res;

    obj_488__ctor(&sp20);
    res = func_e40(&sp20);

    if(res >= 0) {
        func_e38(&sp20, 0, 0);
        func_1120(&sp20);
    } else {
        func_e38(&sp20, 1, res);
        func_1028(&sp20);
    }

    return 0;
}

// 4f8
extern const obj_488_vtable data_22840;
void obj_488__ctor(obj_488* this) {
    this->vtable = &data_22840.inner;
}

extern char data_25300[];

void func_510(obj_488* arg0) {
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Boot Loader SE Version 3.5.6 ");
    func_d938(arg0, "(Build ID: 4275,46986, ");
    func_d938(arg0, "Build Date: 2011-02-15_19:06:04)");
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Copyright(C) 2011 Sony Computer Entertainment Inc.All Rights Reserved.");
    func_d938(arg0, data_25300); // \n
}

int func_580(obj_488* this, long long arg1, const char* arg2, long long* arg3, long long* arg4) {
    struct_func_1ab0 sp20;
    long long sp30[6];

    if(arg2[0] == 0) {
        return -3;
    }

    if(func_1ab0(arg1, &sp20) != 0) {
        return -1;
    }

    if(func_18e0(arg1 + 0x10, sp20.unk04, arg2, sp30) != 0) {
        return -1;
    }

    *arg3 = arg1 + sp30[0];
    *arg4 = sp30[1];

    return 0;
}

int func_678(obj_488* this, long long arg1, long long* arg2) {
    long long sp20;
    long long sp30;
    long long res;

    res = func_f3e0(this, arg1, 0x400);

    if(res == -1) {
        return -1;
    }

    if(func_580(this, res, "updater", &sp20, &sp30) != 0) {
        return -1;
    }

    res = func_f3e0(this, sp20, sp30);

    *arg2 = res;

    if(res == -1) {
        return -1;
    }

    return 0;
}

// probably static inside func_730
extern unsigned char data_27a00;

void func_730(void) {
    if(data_27a00 != 0) {
        mfc_write_tag_update_immediate();

        while(mfc_stat_tag_update() != 1);

        mfc_read_tag_status();

        data_27a00 = 0;
    }

    mfc_write_tag_mask(4);
    mfc_write_tag_update_all();
    mfc_read_tag_status();
}

long long func_780(unsigned long long address) {
    long long* ls_addr = (long long*)(0x3e000 + (address & 0xF));
    mfc_get(ls_addr, address, 8, 2, 0, 0);

    func_730();
    return *ls_addr;
}

int func_808(obj_488* this, long long arg1, long long* arg2) {
    // TODO: is there a better way than this array?
    long long sp20[12];

    long long res;
    long long bank;
    long long address;

    res = func_f3e0(this, arg1, 0x400);

    if(res == -1) {
        return -1;
    }

    if(func_580(this, res, "bank_indicator", &sp20[0], &sp20[8]) != 0) {
        return -1;
    }

    address = func_f3e0(this, sp20[0], sp20[8]);
    if(address == -1) {
        return -1;
    }

    bank = func_780(address);

    if(func_580(this, res, bank < 0 ? "lv0_bank0" : "lv0_bank1", &sp20[6], &sp20[4]) != 0) {
        return -1;
    }

    res = func_f3e0(this, sp20[6], 0x400);
    if(res == -1) {
        return -1;
    }

    if(func_580(this, res, "lv0", &sp20[2], &sp20[10]) != 0) {
        return -1;
    }

    res = func_f3e0(this, sp20[2], sp20[10]);

    *arg2 = res;

    if(res == -1) {
        return -1;
    }

    return 0;
}

int func_970(long long address, void* arg1, unsigned int arg2) {
    mfc_get((void*)0x3e000, address, arg2, 2, 0, 0);
    func_730();

    unsigned int* out = (unsigned int*)arg1;
    unsigned int* temp_buf = (unsigned int*)0x3e000;
    for(int i = 0; i < arg2; i+=4) {
        *out++ = *temp_buf++;
    }

    return arg2;
}

int func_a18(obj_488* this, long long arg1, long long* arg2) {
    long long sp20[12];
    long long temp1;
    long long temp2;
    int result;

    temp1 = func_f3e0(this, arg1, 0x3E0);
    if(temp1 == -1) {
        return -1;
    }

    if(func_f2a8(this) == 3) {
        int bank = func_dc80(this);
        result = func_580(this, temp1, (bank == 0) ? "ros0" : "ros1", &sp20[4], &sp20[2]);
        if(result != 0) {
            return result;
        }
        temp2 = sp20[4];
    } else {
        result = func_580(this, temp1, "ros", &sp20[2], &sp20[4]);
        if(result != 0) {
            return result;
        }
        sp20[2] = sp20[2] - temp1 + arg1;
        temp1 = func_f3e0(this, sp20[2], 0x20);
        if(temp1 == -1) {
            return -1;
        }

        func_970(temp1, &sp20[8], 0x20);
        temp2 = sp20[2] + sp20[8];
    }

    temp1 = func_f3e0(this, temp2, 0x3E0);
    if(temp1 == -1) {
        return -1;
    }

    temp1 += 0x10;

    result = func_580(this, temp1, "lv0", &sp20[0], &sp20[6]);
    if(result != 0) {
        return result;
    }

    sp20[0] = (temp2 + 0x10) + (sp20[0] - temp1);
    temp1 = func_f3e0(this, sp20[0], sp20[6]);

    *arg2 = temp1;

    if(temp1 == -1) {
        return -1;
    }

    return result;
}

int func_c68(obj_488* this, long long arg2, long long* arg3) {
    if(func_f2a8(this) > 0) {
        return func_a18(this, arg2, arg3);
    } else {
        return func_808(this, arg2, arg3);
    }
}

int __attribute__((naked)) func_cf0(obj_488* this, long long* arg1) {
    INCLUDE_ASM("asm/nonmatching", func_cf0);
}

// int func_cf0(obj_488* this, long long* arg1) {
//     long long flash_addr;
//     int temp1;
//     int temp2;
//     int funcptrtemp;
//     int (*funcptr1)(obj_488* this, long long, long long*);
//     int (*funcptr2)(obj_488* this, long long, long long*);
//     int (*funcptr3)(obj_488* this, long long, long long*);
//
//     flash_addr = func_f348(this);
//
//     temp1 = func_e008(this);
//
//     funcptr1 = (temp1 == 0) ? func_f28 : func_c68;
//     funcptr2 = (temp1 == 0) ? func_c68 : func_f28;
//
//     temp2 = func_d548(this);
//
//     funcptr1 = (temp2 == 0) ? funcptr1 : func_f28;
//     funcptr2 = (temp2 == 0) ? funcptr2 : func_c68;
//
//     // https://itanium-cxx-abi.github.io/cxx-abi/abi.html#member-function-pointers
//     // The compiler doesn't seem to be able to tell if these functions are member functions or not,
//     // so it does these checks and tries to adjust it if not.
//     // Looks like we need the C++ compiler in order to emit them correctly.
//     if((unsigned int)funcptr1 & 1) {
//         funcptr1 = (void*)((unsigned int)this->vtable + *(unsigned int*)((unsigned int)funcptr1-1));
//     }
//
//     if(funcptr1(this, flash_addr, arg1) == 0 ) {
//         return 0;
//     }
//
//     if((unsigned int)funcptr2 & 1) {
//         funcptr2 = (void*)((unsigned int)this->vtable + *(unsigned int*)((unsigned int)funcptr2-1));
//     }
//
//     if(funcptr2(this, flash_addr, arg1) != 0 ) {
//         return -1;
//     }
//
//     return 0;
// }

void func_e38(obj_488* arg0, int arg1, int arg2) {
    func_f590(arg0, arg1, arg2);
}

int func_e40(obj_488* this) {
    int res;
    long long temp;

    func_10050();
    res = func_ff8(this);
    if(res != 0) {
        return res;
    }

    func_d7d8();
    this->vtable->func6(this);
    res = func_fc60(this);
    if(res != 0) {
        return res;
    }

    res = func_cf0(this, &temp);
    if(res != 0) {
        func_d808();
        return -1;
    }

    func_d5d8();
    res = this->vtable->func4(this, temp);
    if(res != 0) {
        func_d8a0();
        return -1;
    }

    func_d550();
    this->vtable->func5(this);

    return res;
}

int func_f28(obj_488* this, long long arg1, long long* arg2) {
    if(func_f2a8(this) <= 0) {
        return func_678(this, arg1, arg2);
    }

    return -1;
}

extern unk_struct_2f9b0 data_2f9b0;

void func_fa0(int arg0, int arg1) {
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

void func_fd8(void) {
    func_fa0(0, 0xFFFF);
}

void func_fe8(void) {
    func_fa0(1, 0xFFFF);
}

int func_ff8(obj_488* this) {
    int sp20;
    if(func_1740(&sp20) == 0) {
        return 0;
    } else {
        return -5;
    }
}

void func_1028(obj_488* this) {
    int r3 = 0;
    int r2 = 2;
    asm("wrch $ch64, %0\t\n"
        "wrch $ch64, %1\t\n"
        :
        : "r" (r3), "r" (r2));
}

void __attribute__((naked)) func_1040(int arg0, int arg2) {
    INCLUDE_ASM("asm/nonmatching", func_1040);
}

void __attribute__((naked)) func_10b0(obj_488* this) {
    INCLUDE_ASM("asm/nonmatching", func_10b0);
}

void __attribute__((naked)) func_1120(obj_488* this) {
    INCLUDE_ASM("asm/nonmatching", func_1120);
}

extern int data_22af8;

void func_1170(unk_struct_1188_3* arg0) {
    arg0->unk00 = &data_22af8;
    func_46a0(arg0);
}

extern const unsigned char data_22880[];
extern const unsigned char data_22890[];
extern const unsigned char data_228a0[];
extern const unsigned char data_228c0[];
extern int data_27a10;

typedef struct {
    /* 0x00 */ unk_struct_1188_3* unk00;
    /* 0x04 */ unk_struct_1188_3* unk04;
    /* 0x08 */ char unk08[8];
    /* 0x10 */ unk_struct_1188_3* unk10;
    /* 0x14 */ unk_struct_1188_3* unk14;
    /* 0x18 */ char unk18[8];
} unk_struct_1188; // size = 0x20

typedef struct unk_struct_1188_4 {
    /* 0x00 */ int unk00;
    /* 0x04 */ char unk04[4];
    /* 0x08 */ int unk08;
    /* 0x0C */ char unk0C[0x4];
    /* 0x10 */ int unk10;
    /* 0x14 */ char unk14[0xC];
    /* 0x20 */ long long unk20;
    /* 0x28 */ char unk28[0x8];
    /* 0x30 */ unsigned long long unk30;
    /* 0x38 */ char unk38[0x8];
} unk_struct_1188_4; // size = 0x40?

typedef struct unk_struct_1188_5 {
    /* 0x00 */ char unk00[0x10];
    /* 0x10 */ short unk10;
    /* 0x12 */ char unk12[0x1E];
} unk_struct_1188_5; // size = 0x30?

typedef struct unk_struct_1188_6 {
    /* 0x00 */ int unk00;
    /* 0x04 */ char unk04[4];
    /* 0x08 */ int unk08;
    /* 0x0C */ char unk0C[0x14];
    /* 0x20 */ int unk20;
    /* 0x24 */ char unk24[0x1C];
} unk_struct_1188_6; // size = 0x40?

int func_2210(unk_struct_2f9b0*, int, const unsigned char*, const unsigned char*, int*, const unsigned char*, unk_struct_1188*, int);
int func_1b48(unk_struct_2f9b0*, unk_struct_1188_2*);
int func_2870(unk_struct_2f9b0*, unk_struct_1188_5*);
int func_2848(unk_struct_2f9b0*, int, unk_struct_1188_4*);
long long func_21c00(int, unsigned long long);
int func_2ab8(unk_struct_2f9b0*, int, int, int, void*, int, void*, int);

const obj_488_vtable data_22840 = {
    {0},
    {
        func_e40,
        func_e38,
        func_1028,
        func_1120,
        func_1188,
        func_10b0,
        func_510,
    }
};

const unsigned char data_22870[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x9C, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

void func_4a58(unk_struct_1188_3* arg0, int arg1);

int __attribute__((naked)) func_1188(obj_488* this, long long arg1) {
    INCLUDE_ASM("asm/nonmatching", func_1188);

    // unk_struct_1188 sp20;
    // unk_struct_1188_2 sp40;
    // unk_struct_1188_3 sp60;
    // unk_struct_1188_3 sp90;
    // unk_struct_1188_3 spc0;
    // unk_struct_1188_3 spf0;
    // unk_struct_1188_4 sp120;
    // unk_struct_1188_5 sp160;
    // unk_struct_1188_6 sp190;
    // int res;
    // unsigned int i;
    //
    // func_1e00(&data_2f9b0, arg1);
    // func_4a58(&spf0, 0);
    // sp20.unk00 = &spf0;
    // func_4618(&spf0, (void*)0x3e000,0x2000);
    //
    // res = func_2210(&data_2f9b0, 1, data_228a0, data_228c0, &data_27a10, data_22890, &sp20, 1);
    //
    // if (res != 0) {
    //     func_1170(&spf0);
    //
    //     if (data_2f9b0.unk1B8 == 0) {
    //         return 0x13;
    //     }
    //
    //     res = func_1b48(&data_2f9b0, &sp40);
    //     if(res != 0) {
    //         return 0x13;
    //     }
    //
    //     if (sp40.unk10 < 0x3005600000000) {
    //         return 0x13;
    //
    //     }
    //
    //     func_4a58(&spf0,0);
    //     func_4a58(&spc0,1);
    //     func_4a58(&sp90,2);
    //     func_4a58(&sp60,3);
    //
    //     // TODO: some kind of implicit memset or inline?
    //     *(long long*)&sp20.unk00 = 0;
    //     *(long long*)&sp20.unk10 = 0;
    //
    //     sp20.unk10 = &spf0;
    //     sp20.unk14 = &spc0;
    //     sp20.unk00 = &sp90;
    //     sp20.unk04 = &sp60;
    //
    //     res = func_2870(&data_2f9b0, &sp160);
    //     if (res == 0) {
    //         i = 0;
    //
    //         if (sp160.unk10 == 2) {
    //             for (i = 0; i < (sp190.unk08 & 0xFFFF); i++) {
    //                 res = func_2848(&data_2f9b0, i, &sp120);
    //                 if (res != 0) {
    //                     return res;
    //                 }
    //
    //                 if (!(sp120.unk20 == 0) && (sp120.unk00 == 1)) {
    //                     unsigned long long temp = sp120.unk30;
    //                     if (temp >= 2) {
    //                         if (func_21c00(sp120.unk08, temp) != func_21c00(sp120.unk10, temp)) {
    //                             return 0x1d;
    //                         }
    //                     }
    //
    //                     func_4618(&spf0,(void*)0x3e000,0x800);
    //                     func_4618(&spc0,(void*)0x3e800,0x800);
    //                     func_4618(&sp90,(void*)0x3f000,0x800);
    //                     func_4618(&sp60,(void*)0x3f800,0x800);
    //                     res = func_2ab8(&data_2f9b0, 2, i, sp120.unk10, &sp20.unk10, 2, &sp20, 2);
    //                     if (res != 0) {
    //                         break;
    //                     }
    //                 }
    //             }
    //             func_1170(&sp60);
    //             func_1170(&sp90);
    //             func_1170(&spc0);
    //         } else {
    //             return 0x1d;
    //         }
    //     }
    // } else {
    //     func_1170(&spf0);
    //     return res;
    // }
    //
    // func_1170(&spf0);
    //
    // return res;
}

const unsigned char data_22880[] = {
    0x00, 0x03, 0x00, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const unsigned char data_22890[] = {
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const unsigned char data_228a0[] = {
    0xCA, 0x7A, 0x24, 0xEC, 0x38, 0xBD, 0xB4, 0x5B, 0x98, 0xCC, 0xD7, 0xD3, 0x63, 0xEA, 0x2A, 0xF0,
    0xC3, 0x26, 0xE6, 0x50, 0x81, 0xE0, 0x63, 0x0C, 0xB9, 0xAB, 0x2D, 0x21, 0x58, 0x65, 0x87, 0x8A,
};

const unsigned char data_228c0[] = {
    0xF9, 0x20, 0x5F, 0x46, 0xF6, 0x02, 0x16, 0x97, 0xE6, 0x70, 0xF1, 0x3D, 0xFA, 0x72, 0x62, 0x12,
};
