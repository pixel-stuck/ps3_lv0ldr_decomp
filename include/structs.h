#ifndef STRUCTS_H
#define STRUCTS_H

struct obj1;

typedef struct {
    /* 0x00 */ void* func0;
    /* 0x04 */ void* func1;
    /* 0x08 */ void* func2;
    /* 0x0C */ void* func3;
    /* 0x10 */ int (*func4)(struct obj1*, long long);
    /* 0x14 */ void (*func5)(struct obj1*);
    /* 0x18 */ void (*func6)(struct obj1*);
} obj1_vtable_inner; // size = 0x1C

typedef struct {
    /* 0x00 */ char unk0[8];
    obj1_vtable_inner inner;
} obj1_vtable;

typedef struct obj1 {
    /* 0x00 */ const obj1_vtable_inner* vtable;
} obj1; // size = ??

typedef struct unk_struct_2f9b0 {
    /* 0x000 */ char unk00[10];
    /* 0x00A */ short unk0A;
    /* 0x00C */ char unk0C[0x1A4];
    /* 0x1B0 */ long long unk1B0;
} unk_struct_2f9b0; // size = ??

typedef struct IfiHeader {
    /* 0x00 */ int magic;
    /* 0x04 */ int version_major;
    /* 0x08 */ int version_minor;
    /* 0x0C */ int version_micro;
} IfiHeader; // size = 0x10

typedef struct {
    /* 0x00 */ char unk00[0x10];
    /* 0x10 */ long long unk10;
    /* 0x18 */ char unk18[0x8];
} unk_struct_1188_2; // size = 0x20

typedef struct unk_struct_1188_3_inner {
  struct unk_struct_1188_3_inner* unk00;
  struct unk_struct_1188_3_inner* unk04;
} unk_struct_1188_3_inner; // size = 8

typedef struct {
    /* 0x00 */ void* unk00;
    /* 0x04 */ unk_struct_1188_3_inner unk04;
    /* 0x0C */ void* unk0C;
    /* 0x10 */ int unk10;
    /* 0x14 */ int unk14;
    /* 0x18 */ int unk18;
    /* 0x1C */ unsigned char unk1C;
    /* 0x1D */ char unk1D[3];
    /* 0x20 */ int unk20;
    /* 0x24 */ char unk24[0xC];
} unk_struct_1188_3; // size = 0x30

typedef struct struct_func_1ab0 {
    /* 0x00 */ int unk00;
    /* 0x04 */ int unk04;
    /* 0x08 */ long long unk08;
} struct_func_1ab0;

#endif
