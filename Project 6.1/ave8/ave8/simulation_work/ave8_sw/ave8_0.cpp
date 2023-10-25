/*
Copyright (C) 1988-2017 NEC Corporation. All rights reserved.
bmcppgen version : 3.49 (Linux 64-bit) Wed Nov 29 09:14:45 JST 2017
         (BIF version : 3.41q)
         (LICflex version : 1.53 cylmd)
         (BM COMMON version : 1.04)
This C++ model was made at Tue Oct 24 19:29:55 2023
option: -EE -tb=auto_io ave8.IFF
*/

#include "ave8_0.h"
using namespace cyber;

// Constructor
c_ave8::c_ave8()
{
    c_ave8_exec();
}

// Destructor
c_ave8::~c_ave8()
{
}

void
c_ave8::c_ave8_exec()
{
    c_ave8_initial();
    c_ave8_clk = 0;
    bc_reset = true;
}

void
c_ave8::c_ave8_initial()
{
    bool bc_stdout = false;
    bool bc_fileout = false;
#ifdef LOG_STDOUT
    bc_stdout = true;
#endif //LOG_STDOUT
#ifdef LOG_FILE
    bc_fileout = true;
#endif //LOG_FILE

    bc_initial(bc_stdout, bc_fileout);
    bc_io_base::set_mode(BC_SCHE_AUTO, BC_COMP_TRANS);
    bc_src::set_src_base(true, 16);

    ave8_ret.connect(
        new bc_outreg<ureg<0,7> >(ave8_ret.get_sig(),
            new bc_tbbase_c_ave8::type(
                new BC_SRC_OUT("ave8_ret.tlv"), BC_IO_OUT, ave8_ret.get_sig().width())));
}

void
c_ave8::Bc_Reset()
{
    Init_const();
    Init_val();
    Reset_block();
    bc_reset = false;
}

void
c_ave8::Init_const()
{
}

void
c_ave8::Init_val()
{
    bc_func__init_buffer(&_buffer[(((uvar<0,2>)uconstvar<3>(0)) & uconstvar<3>(7)).ueval()]); // line# ../../ave8_sw.c:16
}

void
c_ave8::Reset_block()
{
}

void
c_ave8::step()
{
    if (bc_reset == true) {
        Bc_Reset();
    }
    bc_func_ave8();
}

uvar<0,7> c_ave8::bc_func_ave8()
{
    _ave8_i = uconstvar<32>(7); // line# ../../ave8_sw.c:27
    for(;_ave8_i > uconstvar<32>(0);){
        _buffer[(_ave8_i(29,31) & uconstvar<3>(7)).ueval()] = _buffer[((uvar<0,2>)(_ave8_i - uconstvar<32>(1)) & uconstvar<3>(7)).ueval()]; // line# ../../ave8_sw.c:28
        (_ave8_i--); // line# ../../ave8_sw.c:27
    }
    _buffer[(((uvar<0,2>)uconstvar<3>(0)) & uconstvar<3>(7)).ueval()] = _in0; // line# ../../ave8_sw.c:32
    _ave8_sum = _buffer[(((uvar<0,2>)uconstvar<3>(0)) & uconstvar<3>(7)).ueval()]; // line# ../../ave8_sw.c:35
    _ave8_i = uconstvar<32>(1); // line# ../../ave8_sw.c:38
    for(;_ave8_i < uconstvar<32>(8);){
        _ave8_sum += _buffer[(_ave8_i(29,31) & uconstvar<3>(7)).ueval()]; // line# ../../ave8_sw.c:39
        (_ave8_i++); // line# ../../ave8_sw.c:38
    }
    _ave8_out0_v = _ave8_sum / uconstvar<32>(8); // line# ../../ave8_sw.c:43
    ave8_ret = _ave8_out0_v; // line# ../../ave8_sw.c:46
    return _ave8_out0_v; // line# ../../ave8_sw.c:46
}

void c_ave8::bc_func__init_buffer(
    uvar<0,7> *_arg0
)
{
    for (unsigned int _buffer_1 = 0; _buffer_1 <= 7; _buffer_1++) {
        const static int _buffer_tmp[8] = {
            0,0,0,0,0,0,0,0
        };
        _arg0[_buffer_1] = _buffer_tmp[_buffer_1];
    }
}

#ifdef MAIN
int
main()
{
    c_ave8 *c_ave81 = new c_ave8;
    int bc_retval = 0;

    try {
#ifdef LIMITLESS
        for(unsigned int i = 1 ; ; i++) 
#else
        for(unsigned int i = 1; i <= CYCLE_NUM; i++)
#endif // LIMITLESS
        {
#ifdef LOG_FILE
            fprintf(simres_fp, "********** Running Process %d **********\n", i);
#endif // LOG_FILE
#ifdef LOG_STDOUT
            fprintf(stdout, "********** Running Process %d **********\n", i);
#endif // LOG_STDOUT
            c_ave81->step();
        }
    }
    catch(const ShiftError &e) {
        fprintf(stderr, "Error: %s[value %s %d]\n", 
            e.what(), (e.isLeftShift() ? "<<" : ">>"), e.getRight());
        bc_retval = 1;
    }
    catch(const VarException &e) {
        fprintf(stderr, "Error: %s\n", e.what());
        bc_retval = 1;
    }
    delete c_ave81;
    return bc_retval;
}
#endif // MAIN
