#include "funcs.h"

long func_488(void) {
    obj1 sp20;
    int res;

    obj1__ctor(&sp20);
    res = func_e40(&sp20);

    if(res >= 0) {
        func_e38(&sp20, 0, 0);
        func_1120(&sp20);
        return 0;
    } else {
        func_e38(&sp20, 1, res);
        func_1028(&sp20);
        return 0;
    }
}
