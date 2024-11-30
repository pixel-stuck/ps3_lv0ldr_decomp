#include "funcs.hpp"
#include "structs.h"

extern const char data_24dd0[];

s32 func_dc80(obj_488* arg0) {
    s8 sp20;
    u8 temp;
    s32 res;
    res = func_dc28(&sp20);

    if(res != 0) {
        func_1da98(0xb0000001, data_24dd0, 0xb0000001, res);
    }

    if(sp20 == -1) {
        temp = 0;
    } else {
        temp = 1;
    }

    return temp;
}
