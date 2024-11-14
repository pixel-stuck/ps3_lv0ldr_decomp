#include "obj1.h"

void func_10050(void);
int func_ff8(obj1*);
void func_d7d8();
int func_fc60(obj1*);
int func_cf0(obj1*, int*);
int func_d808(void);
void func_d5d8(void);
void func_d8a0(void);
void func_d550(void);

int func_e40(obj1* this) {
    int res;
    int temp;

    func_10050();
    res = func_ff8(this);
    if(res != 0) {
        return res;
    }

    func_d7d8();
    this->vtable->func6(this);
    res = func_fc60(this);
    if(res != 0) {
        return res;
    }

    res = func_cf0(this, &temp);
    if(res != 0) {
        func_d808();
        return -1;
    }

    func_d5d8();
    res = this->vtable->func4(this, temp);
    if(res != 0) {
        func_d8a0();
        return -1;
    }

    func_d550();
    this->vtable->func5(this);

    return res;
}
