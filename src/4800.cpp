#include "funcs.hpp"

extern s32 data_31ec0;

void func_4800(s32 arg0, s32 arg1) {
    if(arg0 != 1) {
        return;
    }

    if(arg1 != 0xFFFF) {
        return;
    }

    func_47f8(&data_31ec0);
}
