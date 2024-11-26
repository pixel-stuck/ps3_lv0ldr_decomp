#include "funcs.h"
#include "structs.h"

extern char data_24fe0[];
extern char data_25000[];
extern char data_25050[];
extern char data_25070[];

extern IfiHeader data_31ed0;

#define MAGIC(a, b, c, d) (a << 24 | b << 16 | c << 8 | d)

int func_f2a8(obj_488* arg0) {
    if(func_f210() != 0) {
        if(data_31ed0.magic == MAGIC('I', 'F', 'I', '\0')) {
            if((data_31ed0.version_major == 1) && (data_31ed0.version_minor == 2)) {
                func_1ddc8(data_24fe0);
                return 3;
            }
            func_1da98(0xb0000004, data_25000, 0xb0000004, data_31ed0.version_major, data_31ed0.version_minor);
        }
        func_1ddc8(data_25050);
        return 2;
    }
    func_1ddc8(data_25070);
    return 1;
}
