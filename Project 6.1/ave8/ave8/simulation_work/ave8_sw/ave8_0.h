/*
Copyright (C) 1988-2017 NEC Corporation. All rights reserved.
bmcppgen version : 3.49 (Linux 64-bit) Wed Nov 29 09:14:45 JST 2017
         (BIF version : 3.41q)
         (LICflex version : 1.53 cylmd)
         (BM COMMON version : 1.04)
This C++ model was made at Tue Oct 24 19:29:55 2023
option: -EE -tb=auto_io ave8.IFF
*/

#ifndef C_AVE8
#define C_AVE8
#include "Cybc_iovar.h"
#include <sstream>

#ifndef WIN32
typedef unsigned long long ULONGLONG;
typedef long long LONGLONG;
#endif // WIN32

#define BC_LISTNUM 256
#define BC_INT_MAX 2147483647
#define BC_INT_MIN (-BC_INT_MAX - 1)

#ifdef NO_FILE_OUT
#define BC_SRC_IN bc_pin_in
#define BC_SRC_OUT bc_src_null
#else
#define BC_SRC_IN bc_pin_in
#define BC_SRC_OUT bc_pin_out
#endif // NO_FILE_OUT

namespace cyber {
    class bc_tbbase_c_ave8 {
    public :
#if defined(LOG_STDOUT) || defined(LOG_FILE)
        typedef bc_log<bc_autoio > type;
#else
        typedef bc_autoio type;
#endif // LOG_STDOUT || LOG_FILE
    };

    class c_ave8 {
    public:
        c_ave8();
        ~c_ave8();
        void c_ave8_exec();
        void c_ave8_initial();

        static std::string Bc_Itoa(int val) {
            std::stringstream ret;
            ret << val;
            return ret.str();
        }

        uvar<0,7> _buffer[8]; // line# ../../ave8_sw.c:16
        uvar<0,7> _in0; // line# ../../ave8_sw.c:20
        svar<0,31> _ave8_out0_v; // line# ../../ave8_sw.c:23
        svar<0,31> _ave8_sum; // line# ../../ave8_sw.c:23
        svar<0,31> _ave8_i; // line# ../../ave8_sw.c:23
        bc_io_sig<ureg<0,7> > ave8_ret; // OUT
        int c_ave8_clk;
        bool bc_reset;

        uvar<0,7> bc_func_ave8();

        void Bc_Reset();
        void Init_const();
        void Init_val();
        void bc_func__init_buffer(
            uvar<0,7> *_arg0
        );
        void Reset_block();
        void step();
    };
}; // namespace cyber
#endif // C_AVE8
