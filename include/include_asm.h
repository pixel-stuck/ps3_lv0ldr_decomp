#ifndef INCLUDE_ASM_H
#define INCLUDE_ASM_H

#ifndef INCLUDE_ASM
#define INCLUDE_ASM(FOLDER, NAME)                              \
__asm__(                                                       \
".include \"" FOLDER "/" #NAME ".s\""                      \
);
#endif

#ifndef INCLUDE_RODATA
#define INCLUDE_RODATA(FOLDER, NAME)                \
__asm__(                                            \
".section .rodata\n"                                \
"\t.include \"" FOLDER "/" #NAME ".s\"\n"           \
".section .text"                                    \
)
#endif

#endif /* INCLUDE_ASM_H */
