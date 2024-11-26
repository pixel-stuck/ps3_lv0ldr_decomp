void func_1028(void) {
    int r3 = 0;
    int r2 = 2;
    asm("wrch $ch64, %0"
        :
        : "r" (r3));
    asm("wrch $ch64, %0"
        :
        : "r" (r2));
}
