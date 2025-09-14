#ifndef OBJ_20A8_HPP
#define OBJ_20A8_HPP

#include "obj_2060.hpp"
#include "types.h"
#include "structs.h"

class obj_20a8 : public obj_2060 {
public:
    #ifdef FUNC_ORDER
    obj_20a8();
    #endif
    virtual void func4() override;
    virtual void func3() override;
};

#endif
