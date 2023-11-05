/*
Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
cmscgen version : 7.40 (Linux 64-bit) Mar  9 2018 21:44:20
         (BIF version : 3.41z)
         (LICflex version : 1.53 cylmd)
         (GEN COMMON version : 3.66)

generated : Thu Nov  2 12:05:36 2023
options : -EE -input=file:cycle -compare=cycle -b10 -dump=VCD -dump_signal=PORT -org_type=design -enum_int=NO -out_dir=. -file cmscgen_file.sobel.txt 
checksum : 00006e8340c6730b0c9d13428a6edc9207e1886b846ccfb6
timestamp_C : 20231031144337_25543_06192

bdltran version : 6.10.04  Thu Mar 22 14:18:17 JST 2018
bdltran options : -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB sobel.IFF 
parser options : -EE -info_base_name sobel ../../sobel.c
*/

/* LCOV_EXCL_START */
// include
#define CYSIM_IMPL_sobel
#include "sobel_C.h"
#include <cwb_trace.h>


#include <map>
#include <vector>
namespace {
    std::map<int, std::vector<std::string> > CysimModelLineMap;
    CYSIM_NOOPTIMIZE void CysimInitModelLineInfo(void);
}

// floating-point functions
namespace {
    template <typename Cysim_T1, typename Cysim_T2>
    inline Cysim_T1 CysimFunc_f2i(Cysim_T2 v) { union{Cysim_T1 i; Cysim_T2 f;}u; u.f = v; return u.i; }
    template <typename Cysim_T1, typename Cysim_T2>
    inline Cysim_T1 CysimFunc_i2f(Cysim_T2 v) { union{Cysim_T2 i; Cysim_T1 f;}u; u.i = v; return u.f; }
} // namespace

// model functions

// Constructor
CysimBase_sobel::CysimBase_sobel(const sc_module_name& name_):
    input_row_a00("input_row_a00"), input_row_a01("input_row_a01"), 
    input_row_a02("input_row_a02"), sobel_ret("sobel_ret"), CLOCK("CLOCK"), 
    RESET("RESET") {}

sobel::sobel(const sc_module_name& name_): CysimBase_sobel(name_)
{
    Cysim_uint32 Cysim_i;

    add_attribute(*new sc_attribute<bool>("Cysim_Inst", true));
    CysimCtor_exec();

    // register update
    SC_METHOD(CysimRegUpdate_CLOCK_pos_RESET_pos_Async);
    sensitive << CLOCK.pos();
    sensitive << RESET;
    dont_initialize();

    // assign out
    CysimMethodIni_CysimAssignOut_1();

}
// assign out
void
sobel::CysimMethodIni_CysimAssignOut_1(void)
{
    SC_METHOD(CysimAssignOut_1);
    sensitive << sobel_ret_r;
}


void
sobel::CysimCtor_exec()
{
    Cysim_uint32 Cysim_j;
    CM_CHANGE_RESET(0)
    Cysim_State = ST1_01;
    CysimInitModelLineInfo();
}


// register update
// FSM
void
sobel::CysimRegUpdate_CLOCK_pos_RESET_pos_Async()
{
    if (!(CLOCK.event() && (int)CLOCK.read() != 0) && (int)RESET.read() == 0) return;

    Cysim_uint32 M_32; // BITWIDTH:9
    Cysim_uint32 M_31; // BITWIDTH:9
    Cysim_uint32 M_30; // BITWIDTH:9
    Cysim_uint32 CT_04; // BITWIDTH:1
    Cysim_uint32 CT_03; // BITWIDTH:1
    Cysim_int32 M_241_t; // BITWIDTH:10
    Cysim_int32 M_231_t; // BITWIDTH:11
    Cysim_int32 M_221_t; // BITWIDTH:10
    Cysim_int32 M_211_t; // BITWIDTH:9
    Cysim_uint32 M_181_t; // BITWIDTH:10
    Cysim_int32 M_171_t; // BITWIDTH:11
    Cysim_int32 M_161_t; // BITWIDTH:9
    Cysim_uint32 SUM2_t; // BITWIDTH:8
    Cysim_uint32 SUM1_t; // BITWIDTH:9
    Cysim_uint32 sumY2_t; // BITWIDTH:8
    Cysim_uint32 sumX2_t; // BITWIDTH:8
    Cysim_uint32 sumY1_t1; // BITWIDTH:10
    Cysim_uint32 sumX1_t1; // BITWIDTH:10
    Cysim_int32 sumY3_t; // BITWIDTH:11
    Cysim_uint32 M_091_t; // BITWIDTH:10
    Cysim_uint32 M_131_t; // BITWIDTH:9
    Cysim_int32 sumX3_t; // BITWIDTH:11
    if(RESET.read()) {
        RG_line_buffer = 0;
        RG_line_buffer_1 = 0;
        RG_line_buffer_2 = 0;
        sobel_ret_r = 0;
    } else {
        M_131_t = (CYSIM_MASK32(9) & (RG_line_buffer + (input_row_a00.read().to_uint() >> 1))); // ../../sobel.c:57,75 OPR_OUT_WIDTH:9
        M_091_t = ((M_131_t << 1) | (Cysim_uint32)((input_row_a00.read().to_uint() & (((Cysim_uint32)1) << 0)) != 0)); // ../../sobel.c:75 OPR_OUT_WIDTH:10
        M_161_t = CYSIM_EXT_SIGN32(9, (RG_line_buffer - input_row_a02.read().to_uint())); // ../../sobel.c:57,75 OPR_OUT_WIDTH:9
        M_171_t = CYSIM_EXT_SIGN32(11, (M_161_t + (Cysim_int32)(M_091_t))); // ../../sobel.c:75 OPR_OUT_WIDTH:11
        M_30 = ((RG_line_buffer_2 << 1)); // ../../sobel.c:57 OPR_OUT_WIDTH:9
        M_181_t = (CYSIM_MASK32(10) & (M_30 + RG_line_buffer_2)); // ../../sobel.c:57,75 OPR_OUT_WIDTH:10
        sumY3_t = CYSIM_EXT_SIGN32(11, (M_171_t - (Cysim_int32)(M_181_t))); // ../../sobel.c:75 OPR_OUT_WIDTH:11
        if((Cysim_uint32)((sumY3_t & (((Cysim_uint32)1) << 10)) != 0)){ // ../../sobel.c:84
            sumY1_t1 = (CYSIM_MASK32(10) & (CYSIM_EXT_SIGN32(2, (0U)) - sumY3_t)); // ../../sobel.c:84 OPR_OUT_WIDTH:10
        } else {
            sumY1_t1 = (sumY3_t & CYSIM_MASK32(10));
        }
        CT_04 = ((sumY1_t1 >> 8) != 0); // ../../sobel.c:85 OPR_OUT_WIDTH:1
        if(CT_04){ // ../../sobel.c:85
            sumY2_t = 255U; // ../../sobel.c:85
        } else {
            sumY2_t = (sumY1_t1 & CYSIM_MASK32(8));
        }
        M_211_t = CYSIM_EXT_SIGN32(9, (input_row_a02.read().to_uint() - RG_line_buffer)); // ../../sobel.c:57,74 OPR_OUT_WIDTH:9
        M_31 = ((input_row_a01.read().to_uint() << 1)); // OPR_OUT_WIDTH:9
        M_221_t = CYSIM_EXT_SIGN32(10, (M_31 - RG_line_buffer_2)); // ../../sobel.c:57,74 OPR_OUT_WIDTH:10
        M_231_t = CYSIM_EXT_SIGN32(11, (M_211_t + M_221_t)); // ../../sobel.c:74 OPR_OUT_WIDTH:11
        M_32 = ((RG_line_buffer_1 << 1)); // ../../sobel.c:57 OPR_OUT_WIDTH:9
        M_241_t = CYSIM_EXT_SIGN32(10, (input_row_a00.read().to_uint() - M_32)); // ../../sobel.c:74 OPR_OUT_WIDTH:10
        sumX3_t = CYSIM_EXT_SIGN32(11, (M_231_t + M_241_t)); // ../../sobel.c:74 OPR_OUT_WIDTH:11
        if((Cysim_uint32)((sumX3_t & (((Cysim_uint32)1) << 10)) != 0)){ // ../../sobel.c:81
            sumX1_t1 = (CYSIM_MASK32(10) & (CYSIM_EXT_SIGN32(2, (0U)) - sumX3_t)); // ../../sobel.c:81 OPR_OUT_WIDTH:10
        } else {
            sumX1_t1 = (sumX3_t & CYSIM_MASK32(10));
        }
        CT_03 = ((sumX1_t1 >> 8) != 0); // ../../sobel.c:82 OPR_OUT_WIDTH:1
        if(CT_03){ // ../../sobel.c:82
            sumX2_t = 255U; // ../../sobel.c:82
        } else {
            sumX2_t = (sumX1_t1 & CYSIM_MASK32(8));
        }
        SUM1_t = (CYSIM_MASK32(9) & (sumX2_t + sumY2_t)); // ../../sobel.c:87 OPR_OUT_WIDTH:9
        if((Cysim_uint32)((SUM1_t & (((Cysim_uint32)1) << 8)) != 0)){ // ../../sobel.c:89
            SUM2_t = 255U; // ../../sobel.c:89
        } else {
            SUM2_t = (SUM1_t & CYSIM_MASK32(8));
        }
        sobel_ret_r = ((~SUM2_t) & CYSIM_MASK32(8)); // ../../sobel.c:92,93 OPR_OUT_WIDTH:8
        RG_line_buffer = input_row_a00.read().to_uint(); // ../../sobel.c:63
        RG_line_buffer_2 = input_row_a02.read().to_uint(); // ../../sobel.c:63
        RG_line_buffer_1 = input_row_a01.read().to_uint(); // ../../sobel.c:63
    }
}

// assign out

//----------------------------------------------
// [sensitivities]
//     sobel_ret_r
// [destinations]
//     sobel_ret
//----------------------------------------------
void
sobel::CysimAssignOut_1(void)
{
    sobel_ret = (sc_uint<8>)(sobel_ret_r.read()); // ../../sobel.c:37 ALWAYS_CON
}

// SystemC callbacks
void
sobel::before_end_of_elaboration(void)
{
    int argc = sc_argc();
    const char* const* argv = sc_argv();
    for (int i = 1; i < argc; i++) {
        if (std::strcmp(argv[i], "-cysim_help") == 0) {
            std::cerr << "=== CWB CYCLE ACCURATE MODEL OPTIONS ===" << std::endl;
            std::cerr << std::endl;
            std::cerr << "-cysim_maxmsg=# : suppress same messages over # times.(default:3)" << std::endl;
            std::cerr << "                  do not suppress messages if zero specified." << std::endl;
            std::cerr << "                  do not display messages if negative value specified." << std::endl;
            std::cerr << std::endl;
            ::exit(1);
        }
    }
}
static int
Cysim_set_instID(const std::vector<sc_object*>& objs, int id)
{
    for (size_t i = 0; i < objs.size(); i++) {
        sc_module* m;
        if ((m = dynamic_cast<sc_module*>(objs[i])) != 0) {
            if (m->get_attribute("Cysim_Inst"))
                m->add_attribute(*new sc_attribute<int>("Cysim_InstID", ++id));
            id = Cysim_set_instID(m->get_child_objects(), id);
        }
    }
    return id;
}
static bool Cysim_is_elaboration_done = false;
void
sobel::end_of_elaboration(void)
{
    const sc_attribute<int> *attr;
    if (!(attr = (sc_attribute<int>*)get_attribute("Cysim_InstID"))) {
#if defined(SYSTEMC_VERSION) && SYSTEMC_VERSION < 20070314 // prior to 2.2.0
        sc_object *top, *o;
        for (top = o = this; o; o = o->get_parent()) {
            if (dynamic_cast<sc_module*>(o) != 0) top = o;
        }
        std::vector<sc_object*> vec;
        vec.push_back(top);
        Cysim_set_instID(vec, 0);
#else
        Cysim_set_instID(sc_get_top_level_objects(), 0);
#endif
        attr = (sc_attribute<int>*)get_attribute("Cysim_InstID");
    }
    Cysim_InstID = attr->value;

    // deferred registration of tracing signals
    Cysim_is_elaboration_done = true;
    for (std::vector<Cysim_trace>::iterator it = Cysim_traces.begin(); it != Cysim_traces.end(); it++)
        this->register_dump(it->tf, it->path);
    Cysim_traces.clear();
}
void
sobel::start_of_simulation(void)
{
}
void
sobel::end_of_simulation(void)
{
}
namespace {
#define CYSIM_FUNCDEF_TRACE_INT(tp) \
    CYSIM_NOOPTIMIZE \
    void cwb_trace(sc_trace_file* tf, const tp& obj, const std::string& name, int width) \
    { \
        if (dynamic_cast<cwb::fst_trace_file_base *>(tf) != 0) { \
            sc_trace(tf, obj, name, width); \
        } else { \
            sc_trace(tf, obj, name); \
        } \
    }
    CYSIM_FUNCDEF_TRACE_INT(Cysim_int32)
    CYSIM_FUNCDEF_TRACE_INT(Cysim_int64)
#undef CYSIM_FUNCDEF_TRACE_INT
}
void
sobel::register_dump(sc_trace_file* Cysim_tf)
{
    std::string nm(this->name());
    for (std::size_t pos = 0; (pos = nm.find('.', pos)) != std::string::npos; ) nm[pos] = '/';
    this->register_dump(Cysim_tf, nm + "/");
}
void
sobel::register_dump(sc_trace_file* Cysim_tf, const std::string& Cysim_param_path)
{
    if (!Cysim_is_elaboration_done) {
        // deferred registration of tracing signals
        Cysim_traces.push_back(Cysim_trace(Cysim_tf, Cysim_param_path));
        return;
    }
    sc_trace(Cysim_tf, Cysim_State, Cysim_param_path + "Cysim_State", 1);
    sc_trace(Cysim_tf, input_row_a00, Cysim_param_path + "input_row_a00");
    sc_trace(Cysim_tf, input_row_a01, Cysim_param_path + "input_row_a01");
    sc_trace(Cysim_tf, input_row_a02, Cysim_param_path + "input_row_a02");
    sc_trace(Cysim_tf, sobel_ret, Cysim_param_path + "sobel_ret");
    sc_trace(Cysim_tf, CLOCK, Cysim_param_path + "CLOCK");
    sc_trace(Cysim_tf, RESET, Cysim_param_path + "RESET");
}

//----------------------------------------------
// SystemC test module cpp
//----------------------------------------------
#ifndef NO_MAIN

#include <iomanip>
#if defined(_MSC_VER)
#define STRTOULL _strtoui64
#define STRTOLL  _strtoi64
#else
#define STRTOULL strtoull
#define STRTOLL  strtoll
#endif
#ifndef CYCLE_NUM
#define CYCLE_NUM -1
#endif
static Cysim_int64 Cysim_cycles = CYCLE_NUM;
static bool Cysim_is_stopped = false;
static int Cysim_seed = 0;
static int Cysim_verbose = 2;
#ifdef LOG_FILE
static ofstream Cysim_fp_result;
#endif

sobel_test::sobel_test(sc_module_name Cysim_param_name, struct sobel &Cysim_dut) : Cysim_main_dut(Cysim_dut)
{
    typedef sobel_test SC_CURRENT_USER_MODULE;
    trace_dump();
    SC_THREAD(do_test);
    sensitive << CLOCK.pos();
}
void
sobel_test::trace_dump()
{
    // VCD dump
    Cysim_tf = sc_create_vcd_trace_file("sobel_test");
    Cysim_main_dut.register_dump(Cysim_tf);

    // I/O
    Cysim_finished_wait = 0;
    Cysim_if_input_row_a00.open("input_row_a00.clv");
    Cysim_if_input_row_a00 >> std::dec;
    if (Cysim_if_input_row_a00.is_open()) {
        if ((Cysim_if_input_row_a00 >> std::ws).eof()) {
            Cysim_flags_i_input_row_a00 = 1;
        } else {
            Cysim_flags_i_input_row_a00 = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(input_row_a00.clv)" << std::endl;
        Cysim_flags_i_input_row_a00 = 1;
    }
    Cysim_if_input_row_a01.open("input_row_a01.clv");
    Cysim_if_input_row_a01 >> std::dec;
    if (Cysim_if_input_row_a01.is_open()) {
        if ((Cysim_if_input_row_a01 >> std::ws).eof()) {
            Cysim_flags_i_input_row_a01 = 1;
        } else {
            Cysim_flags_i_input_row_a01 = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(input_row_a01.clv)" << std::endl;
        Cysim_flags_i_input_row_a01 = 1;
    }
    Cysim_if_input_row_a02.open("input_row_a02.clv");
    Cysim_if_input_row_a02 >> std::dec;
    if (Cysim_if_input_row_a02.is_open()) {
        if ((Cysim_if_input_row_a02 >> std::ws).eof()) {
            Cysim_flags_i_input_row_a02 = 1;
        } else {
            Cysim_flags_i_input_row_a02 = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(input_row_a02.clv)" << std::endl;
        Cysim_flags_i_input_row_a02 = 1;
    }
    Cysim_ef_sobel_ret.open("sobel_ret.clv");
    Cysim_ef_sobel_ret >> std::dec;
    if (Cysim_ef_sobel_ret.is_open()) {
        if ((Cysim_ef_sobel_ret >> std::ws).eof()) {
            Cysim_flags_e_sobel_ret = 1;
        } else {
            Cysim_flags_e_sobel_ret = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(sobel_ret.clv)" << std::endl;
        Cysim_flags_e_sobel_ret = 1;
    }
#ifdef LOG_FILE
    Cysim_fp_result.open("sim.res");
    if(!Cysim_fp_result.is_open()){
        std::cerr << "Cannot open file(sim.res)" << std::endl;
    }
#endif
}
static int Cysim_reset_ini_3 = 1;
void
sobel_test::do_test()
{
    const sc_time Cysim_delay_min = sc_get_time_resolution();
    const sc_time Cysim_delay_1(Cysim_delay_min);
    const sc_time Cysim_delay_2(Cysim_delay_min * 2);
    const sc_time Cysim_delay_reset(20000.0L / 4, SC_PS);
    RESET = 1;
    int Cysim_reset_ini_1 = 1;
    int Cysim_reset_ini_2 = 1;
    int Cysim_reset_ini_5 = 1;
    input_method();
    wait();

    if (Cysim_cycles > 0) Cysim_cycles += 10;
    for (Cysim_int64 Cysim_i = 1; Cysim_cycles < 0 || Cysim_i < Cysim_cycles; Cysim_i++) 
    {
        wait(Cysim_delay_1);
        if(!Cysim_reset_ini_1){
            input_method();
        }

        if (Cysim_i < 10) {
        } else if (Cysim_i == 10) {
            wait(Cysim_delay_reset);
            RESET = 0;
            Cysim_reset_ini_2 = 0;
        }

        wait();
        Cysim_reset_ini_3 = Cysim_reset_ini_1 & Cysim_reset_ini_5;
        Cysim_reset_ini_5 = 1;
        Cysim_reset_ini_1 = Cysim_reset_ini_2;
        if(!Cysim_reset_ini_1){
            input_feed();
            print_compare();
        }
#ifdef LOG_FILE
        log_file_out(Cysim_fp_result, Cysim_i);
#endif
#ifdef LOG_STDOUT
        log_file_out(std::cout, Cysim_i);
#endif
        if (Cysim_cycles < 0 && Cysim_finished_wait <= 0) {
            break;
        }
    }
    if (!Cysim_is_stopped) {
        Cysim_is_stopped = true;
        sc_stop();
    }
}
template <int Cysim_W, class Cysim_T>
void
sobel_test::input_data(Cysim_T& in, istream& is, int& flags, const Cysim_T& prev)
{
    if ((flags & 1) != 0) return;
    if ((flags & (1<<3)) != 0) {
        in = prev;
        return;
    }
    if (is.eof()) {
        flags |= (1<<5);
        if (!(flags & (1<<2))) {
            if ((flags & (1<<4)) != 0) {
                flags &= ~(1<<4);
                in = prev;
                return;
            }
            Cysim_finished_wait --;
        }
        flags |= (1|(1<<2));
        return;
    }
    std::string str;
    is >> str;
    if (str.compare("+") == 0) {
        in = prev;
        Cysim_finished_wait --;
        flags |= ((1<<3)|(1<<2));
        return;
    }
    Cysim_uint64 tmp = STRTOULL(str.c_str(), 0, 10);
    in = (Cysim_T)(tmp & CYSIM_MASK64(Cysim_W));
    if ((is >> std::ws).eof() && (flags & (1<<1)) != 0) {
        flags |= (1<<5);
        if ((flags & (1<<4)) != 0) {
            flags &= ~(1<<4);
            return;
        }
        Cysim_finished_wait --;
        flags |= (1<<2);
    }
}
template <int Cysim_W, class Cysim_T>
void
sobel_test::input_dataSC(Cysim_T& in, istream& is, int& flags, const Cysim_T& prev)
{
    if ((flags & 1) != 0) return;
    if ((flags & (1<<3)) != 0) {
        in = prev;
        return;
    }
    if (is.eof()) {
        flags |= (1<<5);
        if (!(flags & (1<<2))) {
            if ((flags & (1<<4)) != 0) {
                flags &= ~(1<<4);
                in = prev;
                return;
            }
            Cysim_finished_wait --;
        }
        flags |= (1|(1<<2));
        return;
    }
    std::string str;
    is >> str;
    if (str.compare("+") == 0) {
        in = prev;
        Cysim_finished_wait --;
        flags |= ((1<<3)|(1<<2));
        return;
    }
    in = str.c_str();
    if ((is >> std::ws).eof() && (flags & (1<<1)) != 0) {
        flags |= (1<<5);
        if ((flags & (1<<4)) != 0) {
            flags &= ~(1<<4);
            return;
        }
        Cysim_finished_wait --;
        flags |= (1<<2);
    }
}
template <int Cysim_W>
void
sobel_test::input_dataSC(sc_logic& in, istream& is, int& flags, const sc_logic& prev)
{
    if ((flags & 1) != 0) return;
    if ((flags & (1<<3)) != 0) {
        in = prev;
        return;
    }
    if (is.eof()) {
        flags |= (1<<5);
        if (!(flags & (1<<2))) {
            if ((flags & (1<<4)) != 0) {
                flags &= ~(1<<4);
                in = prev;
                return;
            }
            Cysim_finished_wait --;
        }
        flags |= (1|(1<<2));
        return;
    }
    std::string str;
    is >> str;
    if (str.compare("+") == 0) {
        in = prev;
        Cysim_finished_wait --;
        flags |= ((1<<3)|(1<<2));
        return;
    }
    int tmp = std::atoi(str.c_str());
    in = tmp == 1;
    if ((is >> std::ws).eof() && (flags & (1<<1)) != 0) {
        flags |= (1<<5);
        if ((flags & (1<<4)) != 0) {
            flags &= ~(1<<4);
            return;
        }
        Cysim_finished_wait --;
        flags |= (1<<2);
    }
}
void
sobel_test::input_feed()
{
}
void
sobel_test::input_method()
{
    {
        sc_uint<8> Cysim_tmp;
        input_dataSC<8>(Cysim_tmp, Cysim_if_input_row_a00, Cysim_flags_i_input_row_a00, input_row_a00.read());
        if(!(Cysim_flags_i_input_row_a00 & 1)){
            input_row_a00 = Cysim_tmp;
        }
    }
    {
        sc_uint<8> Cysim_tmp;
        input_dataSC<8>(Cysim_tmp, Cysim_if_input_row_a01, Cysim_flags_i_input_row_a01, input_row_a01.read());
        if(!(Cysim_flags_i_input_row_a01 & 1)){
            input_row_a01 = Cysim_tmp;
        }
    }
    {
        sc_uint<8> Cysim_tmp;
        input_dataSC<8>(Cysim_tmp, Cysim_if_input_row_a02, Cysim_flags_i_input_row_a02, input_row_a02.read());
        if(!(Cysim_flags_i_input_row_a02 & 1)){
            input_row_a02 = Cysim_tmp;
        }
    }
}
void
sobel_test::print_compare_summary(const char *name, CysimCompareCount &count)
{
    std::cout << std::dec << name << "\t\t" << count.match << "\t" << count.notmatch << "\n";
    Cysim_total_count.match += count.match;
    Cysim_total_count.notmatch += count.notmatch;
}
void
sobel_test::print_compare_summary()
{
    std::cout << "*****************************************\n";
    std::cout << "Signal\t\tmatched\t\terror\n";
    std::cout << "-----------------------------------------\n";

    print_compare_summary("sobel_ret", Cysim_count_sobel_ret);
    std::cout << "-----------------------------------------\n";
    std::cout << std::dec << "Total\t\t" << Cysim_total_count.match << "\t"
         << Cysim_total_count.notmatch << '\n';
    std::cout << "*****************************************\n";
}

template <int Cysim_W, class Cysim_T>
void
sobel_test::print_compare(const Cysim_T& out, const char* name, CysimCompare<Cysim_T >& count, int& flags, istream& is, bool& hdr_out)
{
    bool is_print = (Cysim_verbose > 0 && !Cysim_reset_ini_3);
    if (is_print) {
        if (hdr_out) {
            std::cout << "---------- " << sc_time_stamp() << " ----------\n";
            hdr_out = false;
        }
        std::cout << std::dec << "out:" << name << '=';
        if (Cysim_W <= 8) std::cout << (Cysim_int32)out << '\t';
        else              std::cout << out << '\t';
    }
    if ((flags & 1) != 0) {
        if (is_print) std::cout << name << " ept: end of input data\n";
    } else {
        Cysim_T ept;
        if ((flags & (1<<3)) != 0) {
            ept = count.prev;
        } else {
            input_data<Cysim_W>(ept, is, flags, count.prev);
            count.prev = ept;
        }
        if (!(flags & 1)){
            if (is_print) {
                std::cout << "ept:" << name << '=';
                if (Cysim_W <= 8) std::cout << (Cysim_int32)ept << '\t';
                else              std::cout << ept << '\t';
            }
            if (Cysim_reset_ini_3) {
            } else if (out != ept) {
                count.notmatch ++;
                if (is_print) std::cout << "error\n";
            } else {
                count.match ++;
                if (is_print) std::cout << "matched\n";
            }
        } else {
            if (is_print) std::cout << name << " ept: end of input data\n";
        }
    }
}
template <int Cysim_W, class Cysim_T>
void
sobel_test::print_compareSC(const Cysim_T& out, const char* name, CysimCompare<Cysim_T >& count, int& flags, istream& is, bool& hdr_out)
{
    bool is_print = (Cysim_verbose > 0 && !Cysim_reset_ini_3);
    if (is_print) {
        if (hdr_out) {
            std::cout << "---------- " << sc_time_stamp() << " ----------\n";
            hdr_out = false;
        }
        std::cout << "out:" << name << '=' << out.to_string(SC_DEC, false) << '\t';
    }
    if ((flags & 1) != 0) {
        if (is_print) std::cout << name << " ept: end of input data\n";
    } else {
        Cysim_T ept;
        if ((flags & (1<<3)) != 0) {
            ept = count.prev;
        } else {
            input_dataSC<Cysim_W>(ept, is, flags, count.prev);
            count.prev = ept;
        }
        if (!(flags & 1)){
            if (is_print) {
                std::cout << "ept:" << name << '=' << ept.to_string(SC_DEC, false) << '\t';
            }
            if (Cysim_reset_ini_3) {
            } else if (out != ept) {
                count.notmatch ++;
                if (is_print) std::cout << "error\n";
            } else {
                count.match ++;
                if (is_print) std::cout << "matched\n";
            }
        } else {
            if (is_print) std::cout << name << " ept: end of input data\n";
        }
    }
}
template <int Cysim_W>
void
sobel_test::print_compareSC(const sc_logic& out, const char* name, CysimCompare<sc_logic >& count, int& flags, istream& is, bool& hdr_out)
{
    bool is_print = (Cysim_verbose > 0 && !Cysim_reset_ini_3);
    if (is_print) {
        if (hdr_out) {
            std::cout << "---------- " << sc_time_stamp() << " ----------\n";
            hdr_out = false;
        }
        std::cout << "out:" << name << '=' << (int)(out == 1) << '\t';
    }
    if ((flags & 1) != 0) {
        if (is_print) std::cout << name << " ept: end of input data\n";
    } else {
        sc_logic ept;
        if ((flags & (1<<3)) != 0) {
            ept = count.prev;
        } else {
            input_dataSC<Cysim_W>(ept, is, flags, count.prev);
            count.prev = ept;
        }
        if (!(flags & 1)){
            if (is_print) {
                std::cout << "ept:" << name << '=' << (int)(ept == 1) << '\t';
            }
            if (Cysim_reset_ini_3) {
            } else if (out != ept) {
                count.notmatch ++;
                if (is_print) std::cout << "error\n";
            } else {
                count.match ++;
                if (is_print) std::cout << "matched\n";
            }
        } else {
            if (is_print) std::cout << name << " ept: end of input data\n";
        }
    }
}
void
sobel_test::print_compare()
{
    bool Cysim_hdr = true;
    if (Cysim_reset_ini_3) Cysim_hdr = false;
    else if (Cysim_verbose > 1) {
        std::cout << "---------- " << sc_time_stamp() << " ----------\n";
        Cysim_hdr = false;
    }
    print_compareSC<8>(sobel_ret.read(), "sobel_ret", Cysim_count_sobel_ret, Cysim_flags_e_sobel_ret, Cysim_ef_sobel_ret, Cysim_hdr);
}
void
sobel_test::log_file_out(ostream &Cysim_param_os, Cysim_int64 Cysim_param_cycle)
{
    Cysim_param_os << std::dec << "********** Cycle " << Cysim_param_cycle << " **********\n";
    Cysim_param_os << "State\t" << Cysim_main_dut.Cysim_State << '\n';
    if(!(Cysim_flags_i_input_row_a00 & 1)){
        Cysim_param_os << "input\tinput_row_a00\t" << (CYSIM_MASK32(8) & input_row_a00.read().to_int()) << '\n';
    }
    if(!(Cysim_flags_i_input_row_a01 & 1)){
        Cysim_param_os << "input\tinput_row_a01\t" << (CYSIM_MASK32(8) & input_row_a01.read().to_int()) << '\n';
    }
    if(!(Cysim_flags_i_input_row_a02 & 1)){
        Cysim_param_os << "input\tinput_row_a02\t" << (CYSIM_MASK32(8) & input_row_a02.read().to_int()) << '\n';
    }
    Cysim_param_os << "output\tsobel_ret\t" << (CYSIM_MASK32(8) & sobel_ret.read().to_int()) << '\n';
}
void
sobel_test::close_file()
{
    Cysim_if_input_row_a00.close();
    Cysim_if_input_row_a01.close();
    Cysim_if_input_row_a02.close();
    Cysim_ef_sobel_ret.close();
#ifdef LOG_FILE
    Cysim_fp_result.close();
#endif
}
#endif // !NO_MAIN
// SystemC Main Out
#ifndef NO_MAIN
int
sc_main(int argc, char *argv[])
{
    sc_set_time_resolution(100.0L, SC_FS);

    for (int i = 1; i < argc; i++) {
        if (std::strncmp(argv[i], "-seed=", 6) == 0) {
            Cysim_seed = std::atoi(argv[i]+6);
        } else if (std::strncmp(argv[i], "-verbose=", 9) == 0) {
            Cysim_verbose = std::atoi(argv[i]+9);
        } else if (std::strcmp(argv[i], "-help") == 0 ||
                   std::strcmp(argv[i], "-h") == 0 ||
                   std::strcmp(argv[i], "-H") == 0) {
            std::cerr << std::endl << "usage: " << argv[0] << " [-verbose=#] [cycles]" << std::endl;
            std::cerr << "    -verbose=# : comparison verbose level [0-2]. (default:2)" << std::endl;
            std::cerr << "    cycles     : number of simulation cycles." << std::endl;
            std::cerr << std::endl;
            std::cerr << "    -cysim_help: display general options." << std::endl;
            std::cerr << std::endl;
            ::exit(1);
        } else {
            char *np;
            Cysim_int64 n = STRTOLL(argv[i], &np, 10);
            if (np != argv[i]) Cysim_cycles = n;
        }
    }
    // internal sig
    sc_signal<sc_uint<8> > input_row_a00;
    sc_signal<sc_uint<8> > input_row_a01;
    sc_signal<sc_uint<8> > input_row_a02;
    sc_signal<sc_uint<8> > sobel_ret;
    sc_clock CLOCK("CLOCK", 20000.0L, SC_PS, 0.5, 20000.0L, SC_PS, true);
    sc_signal<sc_uint<1> > RESET;
    RESET = 1;
    // DUT
    struct sobel *Cysim_user_sobel = new struct sobel("user_sobel");
    Cysim_user_sobel->input_row_a00(input_row_a00);
    Cysim_user_sobel->input_row_a01(input_row_a01);
    Cysim_user_sobel->input_row_a02(input_row_a02);
    Cysim_user_sobel->sobel_ret(sobel_ret);
    Cysim_user_sobel->CLOCK(CLOCK);
    Cysim_user_sobel->RESET(RESET);
    // Test unit
    sobel_test Cysim_testunit_sobel("testunit_sobel", *Cysim_user_sobel);
    Cysim_testunit_sobel.input_row_a00(input_row_a00);
    Cysim_testunit_sobel.input_row_a01(input_row_a01);
    Cysim_testunit_sobel.input_row_a02(input_row_a02);
    Cysim_testunit_sobel.sobel_ret(sobel_ret);
    Cysim_testunit_sobel.CLOCK(CLOCK);
    Cysim_testunit_sobel.RESET(RESET);
    // simulation
    sc_start();
    Cysim_testunit_sobel.print_compare_summary();
    Cysim_testunit_sobel.close_file();
    std::cout << sc_time_stamp() << std::endl;
    ::exit(0);
}
#endif // !NO_MAIN

namespace {
    void
    CysimInitModelLineInfo(void)
    {
    }
}
/* LCOV_EXCL_STOP */
