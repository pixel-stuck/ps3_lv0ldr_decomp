#include "include_asm.h"
#include "funcs.hpp"
#include "structs.h"
#include "obj_2f9b0.hpp"

// cdd on wrong register. Maybe C++ compiler difference?
// #ifdef NON_MATCHING
// void func_1e00(unk_struct_2f9b0* arg0, u64 arg1) {
//     // INCLUDE_ASM("asm/nonmatching", func_1e00);
//     arg0->unk1B0 = arg1;
// }
// #else
// void __attribute__((naked)) func_1e00(unk_struct_2f9b0* arg0, u64 arg1) {
//
//     INCLUDE_ASM("asm/nonmatching", func_1e00);
// }
// #endif

obj_2f9b0::obj_2f9b0(u64 arg1) {
    unk1B0 = arg1;
}
