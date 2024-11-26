#include "funcs.h"

extern int data_31ec0;

void func_4800(int arg0, int arg1) {
    if(arg0 != 1) {
        return;
    }

    if(arg1 != 0xFFFF) {
        return;
    }

    func_47f8(&data_31ec0);
}
