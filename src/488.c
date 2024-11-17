#include "include_asm.h"
#include "funcs.h"
#include "obj1.h"

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
// temp rename from obj1__ctor
extern const obj1_vtable data_22840;
void obj1__ctor(obj1* this) {
    this->vtable = &data_22840.inner;
}

extern char data_25300[];

// temporary rename from func_510
void func_510(obj1* arg0) {
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Boot Loader SE Version 3.5.6 ");
    func_d938(arg0, "(Build ID: 4275,46986, ");
    func_d938(arg0, "Build Date: 2011-02-15_19:06:04)");
    func_d938(arg0, data_25300); // \n
    func_d938(arg0, "Copyright(C) 2011 Sony Computer Entertainment Inc.All Rights Reserved.");
    func_d938(arg0, data_25300); // \n
}

void __attribute__((naked)) func_580(void) {
    // Needs data/rodata migration
    INCLUDE_ASM("asm/nonmatching", func_580);
}


void __attribute__((naked)) func_678(void) {

    INCLUDE_ASM("asm/nonmatching", func_678);
}

void __attribute__((naked)) func_730(void) {
    INCLUDE_ASM("asm/nonmatching", func_730);
}

void __attribute__((naked)) func_780(void) {
    INCLUDE_ASM("asm/nonmatching", func_780);
}

void __attribute__((naked)) func_808(int arg0, int arg1, int arg2) {
    INCLUDE_ASM("asm/nonmatching", func_808);
}

void __attribute__((naked)) func_970(void) {
    INCLUDE_ASM("asm/nonmatching", func_970);
}

void __attribute__((naked)) func_a18(int arg0, int arg1, int arg2) {
    INCLUDE_ASM("asm/nonmatching", func_a18);
}

void func_c68(int arg1, int arg2, int arg3) {
    if(func_f2a8(arg1) > 0) {
        func_a18(arg1, arg2, arg3);
    } else {
        func_808(arg1, arg2, arg3);
    }
}

int __attribute__((naked)) func_cf0(obj1* this, int* arg1) {
    INCLUDE_ASM("asm/nonmatching", func_cf0);
}

void func_e38(obj1* arg0, int arg1, int arg2) {
    func_f590(arg0, arg1, arg2);
}

int func_e40(obj1* this) {
    int res;
    int temp;

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

void __attribute__((naked)) func_f28(void) {
    INCLUDE_ASM("asm/nonmatching", func_f28);
}

void __attribute__((naked)) func_fa0(void) {
    INCLUDE_ASM("asm/nonmatching", func_fa0);
}

void __attribute__((naked)) func_fd8(void) {
    INCLUDE_ASM("asm/nonmatching", func_fd8);
}

void __attribute__((naked)) func_fe8(void) {
    INCLUDE_ASM("asm/nonmatching", func_fe8);
}

int __attribute__((naked)) func_ff8(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_ff8);
}

void __attribute__((naked)) func_1028(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_1028);
}

void __attribute__((naked)) func_1040(void) {
    INCLUDE_ASM("asm/nonmatching", func_1040);
}

void __attribute__((naked)) func_10b0(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_10b0);
}

void __attribute__((naked)) func_1120(obj1* this) {
    INCLUDE_ASM("asm/nonmatching", func_1120);
}

void __attribute__((naked)) func_1170(void) {
    INCLUDE_ASM("asm/nonmatching", func_1170);
}

int __attribute__((naked)) func_1188(obj1* this, int arg1) {
    INCLUDE_ASM("asm/nonmatching", func_1188);
}

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
    0x00, 0x03, 0x00, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xCA, 0x7A, 0x24, 0xEC, 0x38, 0xBD, 0xB4, 0x5B, 0x98, 0xCC, 0xD7, 0xD3, 0x63, 0xEA, 0x2A, 0xF0,
    0xC3, 0x26, 0xE6, 0x50, 0x81, 0xE0, 0x63, 0x0C, 0xB9, 0xAB, 0x2D, 0x21, 0x58, 0x65, 0x87, 0x8A,
    0xF9, 0x20, 0x5F, 0x46, 0xF6, 0x02, 0x16, 0x97, 0xE6, 0x70, 0xF1, 0x3D, 0xFA, 0x72, 0x62, 0x12,
};
