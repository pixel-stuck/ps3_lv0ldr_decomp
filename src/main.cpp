#include "types.h"
#include "obj_510.hpp"

// class obj_510;

s32 func_488(void) {
    obj_510 sp20;
    s32 res;

    res = sp20.func_e40();

    if(res >= 0) {
        sp20.func_e38(0, 0);
        sp20.func_1120();
    } else {
        sp20.func_e38(1, res);
        sp20.func_1028();
    }

    return 0;
}
