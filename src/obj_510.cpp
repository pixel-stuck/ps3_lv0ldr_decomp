#include "include_asm.h"
#include <spu_intrinsics.h>
#include <spu_mfcio.h>
#include "spu_internals.h"
#include "funcs.hpp"
#include "structs.h"

extern const char data_25300[];

// extern unk_struct_2f9b0 data_2f9b0;
#ifdef FUNC_ORDER
obj_488::obj_488() {

}
#endif


// s32 obj_510::func_c68(u64 arg2, u64* arg3) {
//
// }

// s32 obj_510::func_cf0(u64* arg1) {
//
// }

// void obj_510::func_e38(s32 arg1, s32 arg2)

// s32 obj_510::func_e40() {
//
// }

// s32 obj_510::func_f28(u64 arg1, u64* arg2) {
//
// }

// void obj_510::func_fa0(s32 arg0, s32 arg1)

// void obj_510::func_fd8(void) {
//     func_fa0(0, 0xFFFF);
// }
//
// void obj_510::func_fe8(void) {
//     func_fa0(1, 0xFFFF);
// }

// s32 obj_510::func_ff8()

// void obj_510::func_1028()

// void __attribute__((naked)) obj_510::func_10b0()

// void __attribute__((naked)) obj_510::func_1120()

extern s32 data_22af8;

void func_1170(unk_struct_1188_3* arg0) {
    arg0->vtable = &data_22af8;
    func_46a0(arg0);
}

// s32 __attribute__((naked)) obj_510::func_1188(u64 arg1)

    // unk_struct_1188 sp20;
    // unk_struct_1188_2 sp40;
    // unk_struct_1188_3 sp60;
    // unk_struct_1188_3 sp90;
    // unk_struct_1188_3 spc0;
    // unk_struct_1188_3 spf0;
    // unk_struct_1188_4 sp120;
    // unk_struct_1188_5 sp160;
    // unk_struct_1188_6 sp190;
    // s32 res;
    // u32 i;
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
    //     *(u64*)&sp20.unk00 = 0;
    //     *(u64*)&sp20.unk10 = 0;
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
    //                     unsigned u64 temp = sp120.unk30;
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
// }

extern const u8 data_22880[];
extern const u8 data_22890[];
extern const u8 data_228a0[];
extern const u8 data_228c0[];
extern s32 data_27a10;

typedef struct {
    /* 0x00 */ unk_struct_1188_3* unk00;
    /* 0x04 */ unk_struct_1188_3* unk04;
    /* 0x08 */ char unk08[8];
    /* 0x10 */ unk_struct_1188_3* unk10;
    /* 0x14 */ unk_struct_1188_3* unk14;
    /* 0x18 */ char unk18[8];
} unk_struct_1188; // size = 0x20

typedef struct unk_struct_1188_4 {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ char unk04[4];
    /* 0x08 */ s32 unk08;
    /* 0x0C */ char unk0C[0x4];
    /* 0x10 */ s32 unk10;
    /* 0x14 */ char unk14[0xC];
    /* 0x20 */ u64 unk20;
    /* 0x28 */ char unk28[0x8];
    /* 0x30 */ u64 unk30;
    /* 0x38 */ char unk38[0x8];
} unk_struct_1188_4; // size = 0x40?

typedef struct unk_struct_1188_5 {
    /* 0x00 */ char unk00[0x10];
    /* 0x10 */ short unk10;
    /* 0x12 */ char unk12[0x1E];
} unk_struct_1188_5; // size = 0x30?

typedef struct unk_struct_1188_6 {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ char unk04[4];
    /* 0x08 */ s32 unk08;
    /* 0x0C */ char unk0C[0x14];
    /* 0x20 */ s32 unk20;
    /* 0x24 */ char unk24[0x1C];
} unk_struct_1188_6; // size = 0x40?

// s32 func_2210(unk_struct_2f9b0*, s32, const unsigned char*, const unsigned char*, s32*, const unsigned char*, unk_struct_1188*, s32);
// s32 func_1b48(unk_struct_2f9b0*, unk_struct_1188_2*);
// s32 func_2870(unk_struct_2f9b0*, unk_struct_1188_5*);
// s32 func_2848(unk_struct_2f9b0*, s32, unk_struct_1188_4*);
// u64 func_21c00(s32, unsigned u64);
// s32 func_2ab8(unk_struct_2f9b0*, s32, s32, s32, void*, s32, void*, s32);

// const obj_488_vtable data_22840 = {
//     {0},
//     {
//         func_e40,
//         func_e38,
//         func_1028,
//         func_1120,
//         func_1188,
//         func_10b0,
//         func_510,
//     }
// };

const s64 data_22870 = 0x0000000000509C20;

void func_4a58(unk_struct_1188_3* arg0, s32 arg1);

const u8 data_22880[] = {
    0x00, 0x03, 0x00, 0x55, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const u8 data_22890[] = {
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const u8 data_228a0[] = {
    0xCA, 0x7A, 0x24, 0xEC, 0x38, 0xBD, 0xB4, 0x5B, 0x98, 0xCC, 0xD7, 0xD3, 0x63, 0xEA, 0x2A, 0xF0,
    0xC3, 0x26, 0xE6, 0x50, 0x81, 0xE0, 0x63, 0x0C, 0xB9, 0xAB, 0x2D, 0x21, 0x58, 0x65, 0x87, 0x8A,
};

const u8 data_228c0[] = {
    0xF9, 0x20, 0x5F, 0x46, 0xF6, 0x02, 0x16, 0x97, 0xE6, 0x70, 0xF1, 0x3D, 0xFA, 0x72, 0x62, 0x12,
};
