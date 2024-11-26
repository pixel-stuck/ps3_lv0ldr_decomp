typedef struct {
    void* vtable;
} obj2;

extern int data_22ad8;

void func_d538(void*);

void func_4670(obj2* this) {
    this->vtable = &data_22ad8;

    func_d538(this);
}

void func_4688(obj2* this) {
    this->vtable = &data_22ad8;
}
