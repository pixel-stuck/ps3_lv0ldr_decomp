int func_f180(void);

unsigned char func_f210(void) {
    unsigned char ret;
    if (func_f180() == 0x100) {
        ret = 1;
    } else if (func_f180() == 0x110) {
        ret = 1;
    } else if (func_f180() == 0x111) {
        ret = 1;
    } else if (func_f180() == 0x120) {
        ret = 1;
    } else if (func_f180() == 0x190) {
        ret = 1;
    } else if (func_f180() == 0x1a0) {
        ret = 1;
    } else {
        ret = 0;
    }

    return ret & 1;
}
