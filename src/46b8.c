// #include "include_asm.h"
#include "structs.h"

extern int data_22ad8;

void func_46b8(unk_struct_1188_3* arg0) {
    unk_struct_1188_3_inner* temp = &arg0->unk04;
    temp->unk00 = temp;
    temp->unk04 = temp;
    arg0->unk00 = &data_22ad8;
    arg0->unk0C = 0;
    arg0->unk10 = 0;
    arg0->unk14 = 0;
    arg0->unk18 = 0;
    arg0->unk1C = 0;
}
