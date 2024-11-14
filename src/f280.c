#include "include_asm.h"

// INCLUDE_ASM("asm/nonmatching", func_f280);

int func_f180(void);

int func_f280(void) {
    return !func_f180();
}
