#include "structs.h"
#include "funcs.h"

int func_1ab0(long long arg0, struct_func_1ab0* arg1) {
    struct_func_1ab0 sp20;

    if((arg0 & 0xF) != 0) {
        return -3;
    }

    func_970(arg0, &sp20, 0x10);

    if(sp20.unk00 != 1) {
        return -1;
    }

    *arg1 = sp20;
    return 0;
}
