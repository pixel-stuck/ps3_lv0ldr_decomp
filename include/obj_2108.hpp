#ifndef OBJ_2108_HPP
#define OBJ_2108_HPP

#include "obj_2060.hpp"
#include "types.h"
#include "structs.h"

class obj_2108 : public obj_2060 {
public:
    #ifdef FUNC_ORDER
    obj_2108();
    #endif
    virtual void func4() override;
    virtual void func3() override;
};

#endif
