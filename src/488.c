#include "obj1.h"

void func_4f8(obj1*);
int func_e40(obj1* this);
void func_e38(obj1*, int, int);
void func_1120(obj1*);
void func_1028(obj1*);

long func_488(void) {
    obj1 sp20;
    int res;

    func_4f8(&sp20);
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
