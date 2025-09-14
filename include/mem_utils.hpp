#ifndef MEM_UTILS_HPP
#define MEM_UTILS_HPP

#include "types.h"
#include <spu_intrinsics.h>
#include <spu_mfcio.h>
#include "spu_internals.h"

// probably static inside func_730
extern u8 data_27a00;

class mem_utils {
public:
    static void func_730() {
        if(data_27a00 != 0) {
            mfc_write_tag_update_immediate();

            while(mfc_stat_tag_update() != 1);

            mfc_read_tag_status();

            data_27a00 = 0;
        }

        mfc_write_tag_mask(4);
        mfc_write_tag_update_all();
        mfc_read_tag_status();
    }

    static u64 func_780(u64 address) {
        u64* ls_addr = (u64*)(0x3e000 + (address & 0xF));
        mfc_get(ls_addr, address, 8, 2, 0, 0);

        func_730();
        return *ls_addr;
    }

    static s32 func_970(u64 address, void* arg1, u32 arg2) {
        mfc_get((void*)0x3e000, address, arg2, 2, 0, 0);
        func_730();

        u32* out = (u32*)arg1;
        u32* temp_buf = (u32*)0x3e000;
        for(s32 i = 0; i < arg2; i+=4) {
            *out++ = *temp_buf++;
        }

        return arg2;
    }

    static void func_1040(u64 address, s32 arg2) {
        u32* ls_addr = (u32*)(0x3e000 + (address & 0xF));
        *ls_addr = arg2;

        mfc_put(ls_addr, address, 4, 2, 0, 0);
        func_730();
    }
};

#endif
