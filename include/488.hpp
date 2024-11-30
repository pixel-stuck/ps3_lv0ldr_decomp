#ifndef OBJ_488_HPP
#define OBJ_488_HPP

#include "types.h"
#include "structs.h"

class obj_488 {
public:
#ifdef FUNC_ORDER
    obj_488();
#endif
    s32 func_580(u64 arg1, const char* arg2, u64* arg3, u64* arg4);
    s32 func_678(u64 arg1, u64* arg2);
    s32 func_808(u64 arg1, u64* arg2);
    s32 func_a18(u64 arg1, u64* arg2);
    s32 func_c68(u64 arg2, u64* arg3);
    s32 func_cf0(u64* arg1);
    virtual s32 func_e40();
    virtual void func_e38(s32 arg1, s32 arg2);
    s32 func_f28(u64 arg1, u64* arg2);
    void func_fa0(s32 arg0, s32 arg1);
    void func_fd8();
    void func_fe8();
    s32 func_ff8();
    virtual void func_1028();
    virtual void func_1120();
    virtual s32 func_1188(u64 arg1);
    virtual void func_10b0();
    virtual void func_510();
    void func_d938(const char* arg1);
};
#endif
