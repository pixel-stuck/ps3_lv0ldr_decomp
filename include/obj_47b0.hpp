#ifndef OBJ_47B0_HPP
#define OBJ_47B0_HPP

#include "obj_4670.hpp"
#include "types.h"
#include "structs.h"

class obj_47b0 : public obj_4670 {
public:
    obj_47b0(s32 arg1) {
        unk20 = arg1;
    }
    virtual void func6() override;
    virtual void func5() override;
    virtual void func4() override;
    virtual void func3() override;

    /* 0x20 */ s32 unk20;
    /* 0x24 */ char unk24[0xC];
};

#endif
