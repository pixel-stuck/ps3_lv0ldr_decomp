#include "include_asm.h"
#include "funcs.h"
#include "structs.h"

// cdd on wrong register. Maybe C++ compiler difference?
#ifdef NON_MATCHING
void func_1e00(unk_struct_2f9b0* arg0, long long arg1) {
    // INCLUDE_ASM("asm/nonmatching", func_1e00);
    arg0->unk1B0 = arg1;
}
#else
INCLUDE_ASM("asm/nonmatching", func_1e00);
#endif
