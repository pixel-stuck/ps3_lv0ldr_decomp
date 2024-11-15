#include "obj1.h"

extern obj1_vtable data_22848;

void obj1__ctor(obj1* this) {
    this->vtable = &data_22848;
}
