#ifndef OBJ_4670_HPP
#define OBJ_4670_HPP

#include "types.h"
#include "structs.h"

class obj_4670 {
public:
    obj_4670();
    virtual ~obj_4670();
    virtual void func6() = 0;
    virtual void func5() = 0;
    virtual void func4() = 0;
    virtual void func3() = 0;

    /* 0x04 */ unk_struct_1188_3_inner unk04;
    /* 0x0C */ void* unk0C; // TODO: is this part of the above struct?
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ char unk1D[3];
};

#endif
