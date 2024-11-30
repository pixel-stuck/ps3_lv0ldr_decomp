#ifndef STRUCTS_H
#define STRUCTS_H

#include "types.h"

// struct obj_488;

typedef struct unk_struct_2f9b0_sub {
    /* 0x00 */ char unk00[0xC];
    /* 0x0C */ s32 unk0C;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
} unk_struct_2f9b0_sub; // size = ??

typedef struct unk_struct_2f9b0_sub2 {
    /* 0x00 */ s32 unk00;
} unk_struct_2f9b0_sub2; // size = ??

typedef struct unk_struct_2f9b0_sub3 {
    /* 0x00 */ u8 unk00[0x20];
    /* 0x20 */ u8 unk20[0x40]; // TODO: correct size?
    /* 0x60 */ u8 unk60[0x40]; // TODO: correct size?
} unk_struct_2f9b0_sub3; // size = ??

typedef struct unk_struct_2f9b0 {
    /* 0x000 */ unk_struct_2f9b0_sub* unk00;
    /* 0x004 */ char unk04[4];
    /* 0x008 */ u8* unk08;
    /* 0x00C */ unk_struct_2f9b0_sub2* unk0C;
    /* 0x010 */ char unk10[0x50];
    /* 0x060 */ u8* unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ char unk68 [0x128];
    /* 0x190 */ char unk190[0x18];
    /* 0x1A8 */ unk_struct_2f9b0_sub3* unk1A8;
    /* 0x1B0 */ long long unk1B0;
    /* 0x1B8 */ unsigned short unk1B8;
    /* 0x1BA */ char unk1BA[0x1F8-0x1BA];
    /* 0x1F8 */ char unk1F8;
} unk_struct_2f9b0; // size = ??

typedef struct IfiHeader {
    /* 0x00 */ s32 magic;
    /* 0x04 */ s32 version_major;
    /* 0x08 */ s32 version_minor;
    /* 0x0C */ s32 version_micro;
} IfiHeader; // size = 0x10

typedef struct {
    /* 0x00 */ char unk00[0x10];
    /* 0x10 */ u64 unk10;
    /* 0x18 */ char unk18[0x8];
} unk_struct_1188_2; // size = 0x20

typedef struct unk_struct_1188_3_inner {
  struct unk_struct_1188_3_inner* unk00;
  struct unk_struct_1188_3_inner* unk04;
} unk_struct_1188_3_inner; // size = 8

typedef struct {
    /* 0x00 */ void* vtable;
    /* 0x04 */ unk_struct_1188_3_inner unk04;
    /* 0x0C */ void* unk0C;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ char unk1D[3];
    /* 0x20 */ s32 unk20;
    /* 0x24 */ char unk24[0xC];
} unk_struct_1188_3; // size = 0x30

typedef struct struct_func_1ab0 {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ u64 unk08;
} struct_func_1ab0;

typedef struct struct_func_1c070 {
    /* 0x00 */ char unk00[0xC];
    /* 0x0C */ s32 unk0C;
} struct_func_1c070;

#endif
