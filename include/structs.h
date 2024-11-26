#ifndef STRUCTS_H
#define STRUCTS_H

struct obj_488;

typedef struct {
    /* 0x00 */ void* func0;
    /* 0x04 */ void* func1;
    /* 0x08 */ void* func2;
    /* 0x0C */ void* func3;
    /* 0x10 */ int (*func4)(struct obj_488*, long long);
    /* 0x14 */ void (*func5)(struct obj_488*);
    /* 0x18 */ void (*func6)(struct obj_488*);
} obj_488_vtable_inner; // size = 0x1C

typedef struct {
    /* 0x00 */ char unk0[8];
    obj_488_vtable_inner inner;
} obj_488_vtable;

typedef struct obj_488 {
    /* 0x00 */ const obj_488_vtable_inner* vtable;
} obj_488; // size = ??

typedef struct unk_struct_2f9b0_sub {
    /* 0x00 */ char unk00[0xC];
    /* 0x0C */ int unk0C;
    /* 0x10 */ int unk10;
    /* 0x14 */ int unk14;
} unk_struct_2f9b0_sub; // size = ??

typedef struct unk_struct_2f9b0_sub2 {
    /* 0x00 */ int unk00;
} unk_struct_2f9b0_sub2; // size = ??

typedef struct unk_struct_2f9b0_sub3 {
    /* 0x00 */ unsigned char unk00[0x20];
    /* 0x20 */ unsigned char unk20[0x40]; // TODO: correct size?
    /* 0x60 */ unsigned char unk60[0x40]; // TODO: correct size?
} unk_struct_2f9b0_sub3; // size = ??

typedef struct unk_struct_2f9b0 {
    /* 0x000 */ unk_struct_2f9b0_sub* unk00;
    /* 0x004 */ char unk04[4];
    /* 0x008 */ unsigned char* unk08;
    /* 0x00C */ unk_struct_2f9b0_sub2* unk0C;
    /* 0x010 */ char unk10[0x50];
    /* 0x060 */ unsigned char* unk60;
    /* 0x064 */ int unk64;
    /* 0x068 */ char unk68 [0x128];
    /* 0x190 */ char unk190[0x18];
    /* 0x1A8 */ unk_struct_2f9b0_sub3* unk1A8;
    /* 0x1B0 */ long long unk1B0;
    /* 0x1B8 */ unsigned short unk1B8;
    /* 0x1BA */ char unk1BA[0x1F8-0x1BA];
    /* 0x1F8 */ char unk1F8;
} unk_struct_2f9b0; // size = ??

typedef struct IfiHeader {
    /* 0x00 */ int magic;
    /* 0x04 */ int version_major;
    /* 0x08 */ int version_minor;
    /* 0x0C */ int version_micro;
} IfiHeader; // size = 0x10

typedef struct {
    /* 0x00 */ char unk00[0x10];
    /* 0x10 */ unsigned long long unk10;
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
