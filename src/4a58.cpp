#include "structs.h"
#include "funcs.hpp"

extern s32 data_22af8;

void func_4a58(unk_struct_1188_3* arg0, s32 arg1) {
    func_46b8(arg0);

    arg0->vtable = &data_22af8;
    arg0->unk20 = arg1;
}
