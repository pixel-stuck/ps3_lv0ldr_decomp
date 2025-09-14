#ifndef OBJ_2F9B0_HPP
#define OBJ_2F9B0_HPP

#include "types.h"
#include "structs.h"

class obj_2f9b0 {
public:
    obj_2f9b0(u64 arg1);
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
};

#endif
