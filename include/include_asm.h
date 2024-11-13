#ifndef INCLUDE_ASM_H
#define INCLUDE_ASM_H

#ifndef INCLUDE_ASM
#define INCLUDE_ASM(FOLDER, NAME)                              \
__asm__(                                                       \
".section .text\n"                                             \
"\t.align 3\n"                                                 \
"\t.global\t" #NAME ".NON_MATCHING\n"                          \
"\t.type\t" #NAME ", @function\n" #NAME ".NON_MATCHING:\n"     \
"\t.include \"" FOLDER "/" #NAME ".s\"\n"                      \
"\t.size\t" #NAME ", .-" #NAME                                 \
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
