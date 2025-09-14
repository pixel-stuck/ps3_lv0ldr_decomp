#include "structs.h"
// #include "488.hpp"
#include "funcs.hpp"
#include "mem_utils.hpp"

s32 func_1ab0(u64 arg0, struct_func_1ab0* arg1) {
    struct_func_1ab0 sp20;

    if((arg0 & 0xF) != 0) {
        return -3;
    }

    mem_utils::func_970(arg0, &sp20, 0x10);

    if(sp20.unk00 != 1) {
        return -1;
    }

    *arg1 = sp20;
    return 0;
}
