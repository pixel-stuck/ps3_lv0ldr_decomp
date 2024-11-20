#include "include_asm.h"
#include "funcs.h"
#include "structs.h"

int func_488(void) {
    obj1 sp20;
    int res;

    obj1__ctor(&sp20);
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
extern const obj1_vtable data_22840;
void obj1__ctor(obj1* this) {
    this->vtable = &data_22840.inner;
}

extern char data_25300[];

void func_510(obj1* arg0) {
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Boot Loader SE Version 3.5.6 ");
    func_d938(arg0, "(Build ID: 4275,46986, ");
    func_d938(arg0, "Build Date: 2011-02-15_19:06:04)");
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Copyright(C) 2011 Sony Computer Entertainment Inc.All Rights Reserved.");
    func_d938(arg0, data_25300); // \n
}

int func_580(int arg0, long long arg1, const char* arg2, long long* arg3, long long* arg4) {
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

int func_678(int arg0, long long arg1, long long* arg2) {
    long long sp20;
    long long sp30;
    long long res;

    res = func_f3e0(arg0, arg1, 0x400);

    if(res == -1) {
        return -1;
    }

    if(func_580(arg0, res, "updater", &sp20, &sp30) != 0) {
        return -1;
    }

    res = func_f3e0(arg0, sp20, sp30);

    *arg2 = res;

    if(res == -1) {
        return -1;
    }

    return 0;
}

void __attribute__((naked)) func_730(void) {
    INCLUDE_ASM("asm/nonmatching", func_730);
}

long long __attribute__((naked)) func_780(void) {
    INCLUDE_ASM("asm/nonmatching", func_780);
}

int func_808(int arg0, long long arg1, long long* arg2) {
    // TODO: is there a better way than this array?
    long long sp20[12];

    long long res;
    long long bank;

    res = func_f3e0(arg0, arg1, 0x400);

    if(res == -1) {
        return -1;
    }

    if(func_580(arg0, res, "bank_indicator", &sp20[0], &sp20[8]) != 0) {
        return -1;
    }

    if(func_f3e0(arg0, sp20[0], sp20[8]) == -1) {
        return -1;
    }

    bank = func_780();

    if(func_580(arg0, res, bank < 0 ? "lv0_bank0" : "lv0_bank1", &sp20[6], &sp20[4]) != 0) {
        return -1;
    }

    res = func_f3e0(arg0, sp20[6], 0x400);
    if(res == -1) {
        return -1;
    }

    if(func_580(arg0, res, "lv0", &sp20[2], &sp20[10]) != 0) {
        return -1;
    }

    res = func_f3e0(arg0, sp20[2], sp20[10]);

    *arg2 = res;

    if(res == -1) {
        return -1;
    }

    return 0;
}

void __attribute__((naked)) func_970(long long arg0, void* arg1, int arg2) {
    INCLUDE_ASM("asm/nonmatching", func_970);
}

int func_a18(int arg0, long long arg1, long long* arg2) {
    long long sp20[12];
    long long temp2;
    long long temp1;
    int result;

    temp1 = func_f3e0(arg0, arg1, 0x3E0);
    if(temp1 == -1) {
        return -1;
    }

    if(func_f2a8(arg0) == 3) {
        int bank = func_dc80(arg0);
        result = func_580(arg0, temp1, (bank == 0) ? "ros0" : "ros1", &sp20[4], &sp20[2]);
        if(result != 0) {
            return result;
        }
        temp2 = sp20[4];
    } else {
        result = func_580(arg0, temp1, "ros", &sp20[2], &sp20[4]);
        if(result != 0) {
            return result;
        }
        sp20[2] = sp20[2] - temp1 + arg1;
        temp1 = func_f3e0(arg0, sp20[2], 0x20);
        if(temp1 == -1) {
            return -1;
        }

        func_970(temp1, &sp20[8], 0x20);
        temp2 = sp20[2] + sp20[8];
    }

    temp1 = func_f3e0(arg0, temp2, 0x3E0);
    if(temp1 == -1) {
        return -1;
    }

    temp1 += 0x10;

    result = func_580(arg0, temp1, "lv0", &sp20[0], &sp20[6]);
    if(result != 0) {
        return result;
    }

    sp20[0] = (temp2 + 0x10) + (sp20[0] - temp1);
    temp1 = func_f3e0(arg0, sp20[0], sp20[6]);

    *arg2 = temp1;

    if(temp1 == -1) {
        return -1;
    }

    return result;
}

int func_c68(int arg1, long long arg2, long long* arg3) {
    if(func_f2a8(arg1) > 0) {
        return func_a18(arg1, arg2, arg3);
    } else {
        return func_808(arg1, arg2, arg3);
    }
}

int __attribute__((naked)) func_cf0(obj1* this, long long* arg1) {
    INCLUDE_ASM("asm/nonmatching", func_cf0);
}

void func_e38(obj1* arg0, int arg1, int arg2) {
    func_f590(arg0, arg1, arg2);
}

int func_e40(obj1* this) {
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

int func_f28(int arg0, long long arg1, long long* arg2) {
    if(func_f2a8(arg0) <= 0) {
        return func_678(arg0, arg1, arg2);
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

int func_ff8(obj1* this) {
    int sp20;
    if(func_1740(&sp20) == 0) {
        return 0;
    } else {
        return -5;
    }
}

void __attribute__((naked)) func_1028(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_1028);
}

void __attribute__((naked)) func_1040(int arg0, int arg2) {
    INCLUDE_ASM("asm/nonmatching", func_1040);
}

void __attribute__((naked)) func_10b0(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_10b0);
}

void __attribute__((naked)) func_1120(obj1* this) {
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
    /* 0x04 */ char unk04[0x1C];
} unk_struct_1188; // size = 0x20

int func_2210(unk_struct_2f9b0*, int, const unsigned char*, const unsigned char*, int*, const unsigned char*, unk_struct_1188*, int);
int func_1b48(unk_struct_2f9b0*, unk_struct_1188_2*);

int func_2870(unk_struct_2f9b0*, int*);

const obj1_vtable data_22840 = {
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

typedef struct {
    /* 0x00 */ char unk00[0x10];
    /* 0x20 */ short unk20;
    /* 0x22 */ char unk22[0xE];
} unk_struct_1188_4; // size = 0x30?

int __attribute__((naked)) func_1188(obj1* this, long long arg1) {
    INCLUDE_ASM("asm/nonmatching", func_1188);
    // unk_struct_1188 sp20;
    // unk_struct_1188_2 sp40;
    // unk_struct_1188_3 sp60;
    // unk_struct_1188_3 sp90;
    // unk_struct_1188_3 spc0;
    // unk_struct_1188_3 spf0;
    // int sp120;
    // int sp160;
    // int sp190;
    // int res;
    //
    // func_1e00(&data_2f9b0, arg1);
    // func_4a58(&spf0, 0);
    // func_4618(&spf0, (void*)0x3e000, 0x2000);
    // sp20.unk00 = &spf0;
    // res = func_2210(&data_2f9b0, 1, data_228a0, data_228c0, &data_27a10, data_22890, &sp20, 1);
    //
    // if(res != 0) {
    //     func_1170(&spf0);
    //     return res;
    // }
    //
    // func_1170(&spf0);
    //
    // while(data_2f9b0.unk0A != 0) {
    //     if(func_1b48(&data_2f9b0, &sp40) != 0) {
    //         return 13;
    //     }
    //
    //     if(sp40.unk10 == 0x00030055FFFFFFFF) {
    //         return 13;
    //     }
    //
    //     func_4a58(&spf0, 0);
    //     func_4a58(&spc0, 1);
    //     func_4a58(&sp90, 2);
    //     func_4a58(&sp60, 3);
    //
    //     res = func_2870(&data_2f9b0, &sp160);
    //     if(res != 0) {
    //         func_1170(&sp60);
    //         func_1170(&sp90);
    //         func_1170(&spc0);
    //         func_1170(&spf0);
    //
    //         return res;
    //     }
    //
    //     for(int i = 0; i < )
    // }
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
