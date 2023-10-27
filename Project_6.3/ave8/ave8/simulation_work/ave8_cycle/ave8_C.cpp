/*
Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
cmscgen version : 7.40 (Linux 64-bit) Mar  9 2018 21:44:20
         (BIF version : 3.41z)
         (LICflex version : 1.53 cylmd)
         (GEN COMMON version : 3.66)

generated : Fri Oct 27 16:18:00 2023
options : -EE -input=file:cycle -compare=cycle -dump=VCD -dump_signal=PORT -org_type=design -enum_int=NO -out_dir=. -file cmscgen_file.ave8.txt 
checksum : 0000603091f13c6bb38f0d863d559619c7813d23ef29e720
timestamp_C : 20231027161728_10679_89656

bdltran version : 6.10.04  Thu Mar 22 14:18:17 JST 2018
bdltran options : -EE -c200 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /proj/cad/cwb-6.1/packages/cycloneV.BLIB -lfl /proj/cad/cwb-6.1/packages/cycloneV.FLIB +lfl ave8-amacro-auto.FLIB +lfl ave8-auto.FLIB -lfc ave8-auto.FCNT +lfc ave8-amacro-auto.FCNT -lml ave8-auto.MLIB -lmc ave8-auto.MCNT ave8.IFF 
parser options : -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name ave8_sw ../../ave8_sw.c -process=ave8
*/

/* LCOV_EXCL_START */
// include
#define CYSIM_IMPL_ave8
#include "ave8_C.h"
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
CysimBase_ave8::CysimBase_ave8(const sc_module_name& name_):
    in0("in0"), ave8_ret("ave8_ret"), CLOCK("CLOCK"), RESET("RESET") {}

ave8::ave8(const sc_module_name& name_): CysimBase_ave8(name_)
{
    Cysim_uint32 Cysim_i;

    add_attribute(*new sc_attribute<bool>("Cysim_Inst", true));
    CysimCtor_exec();

    // register update
    SC_METHOD(CysimRegUpdate_CLOCK_pos);
    sensitive << CLOCK.pos();
    dont_initialize();
    SC_METHOD(CysimRegUpdate_CLOCK_pos_RESET_pos_Async);
    sensitive << CLOCK.pos();
    sensitive << RESET;
    dont_initialize();

    // assign out
    CysimMethodIni_CysimAssignOut_1();

}
// assign out
void
ave8::CysimMethodIni_CysimAssignOut_1(void)
{
    SC_METHOD(CysimAssignOut_1);
    sensitive << ave8_ret_r;
}


void
ave8::CysimCtor_exec()
{
    Cysim_uint32 Cysim_j;
    CM_CHANGE_RESET(0)
    Cysim_State = ST1_01;
    CysimInitModelLineInfo();
}


// register update
void
ave8::CysimRegUpdate_CLOCK_pos()
{
    Cysim_uint32 M_15; // BITWIDTH:9
    Cysim_uint32 M_14; // BITWIDTH:9
    {
        switch(Cysim_State.read())
        {
        case ST1_01:
        {
            RG_08 = (CYSIM_MASK32(9) & (RG_buffer_4.read() + RG_buffer_5.read())); // ../../ave8_sw.c:28,39 OPR_OUT_WIDTH:9
            M_14 = (CYSIM_MASK32(9) & (RG_buffer_2.read() + RG_buffer_3.read())); // ../../ave8_sw.c:28,39 OPR_OUT_WIDTH:9
            M_15 = (CYSIM_MASK32(9) & (RG_buffer.read() + RG_buffer_1.read())); // ../../ave8_sw.c:28,39 OPR_OUT_WIDTH:9
            RG_07 = (CYSIM_MASK32(10) & (M_15 + M_14)); // ../../ave8_sw.c:39 OPR_OUT_WIDTH:10
            RG_buffer_7 = in0.read().to_uint();
            break;
        }
        case ST1_02:
        {
            RG_10 = (CYSIM_MASK32(11) & (RG_07 + RG_08.read())); // ../../ave8_sw.c:39 OPR_OUT_WIDTH:11
            RG_08 = (CYSIM_MASK32(9) & (RG_buffer_6.read() + RG_buffer_7.read())); // ../../ave8_sw.c:35,39 OPR_OUT_WIDTH:9
            break;
        }
        }
    }
}
// FSM
void
ave8::CysimRegUpdate_CLOCK_pos_RESET_pos_Async()
{
    if (!(CLOCK.event() && (int)CLOCK.read() != 0) && (int)RESET.read() == 0) return;

    Cysim_uint32 sum1_t; // BITWIDTH:11
    if(RESET.read()) {
        RG_buffer = 0x0U;
        RG_buffer_1 = 0x0U;
        RG_buffer_2 = 0x0U;
        RG_buffer_3 = 0x0U;
        RG_buffer_4 = 0x0U;
        RG_buffer_5 = 0x0U;
        RG_buffer_6 = 0x0U;
        ave8_ret_r = 0;
        Cysim_State = ST1_01;
    } else {
        switch(Cysim_State.read())
        {
        case ST1_01:
        {
            RG_buffer = RG_buffer.read(); // ../../ave8_sw.c:28
            RG_buffer_1 = RG_buffer_1.read(); // ../../ave8_sw.c:28
            RG_buffer_2 = RG_buffer_2.read(); // ../../ave8_sw.c:28
            RG_buffer_3 = RG_buffer_3.read(); // ../../ave8_sw.c:28
            RG_buffer_4 = RG_buffer_4.read(); // ../../ave8_sw.c:28
            RG_buffer_5 = RG_buffer_5.read(); // ../../ave8_sw.c:28
            Cysim_State = ST1_02;
            break;
        }
        case ST1_02:
        {
            Cysim_State = ST1_03;
            break;
        }
        case ST1_03:
        {
            sum1_t = (CYSIM_MASK32(11) & (RG_10.read() + RG_08.read())); // ../../ave8_sw.c:39 OPR_OUT_WIDTH:11
            ave8_ret_r = (sum1_t >> 3); // ../../ave8_sw.c:43,46
            RG_buffer_6 = RG_buffer_5.read(); // ../../ave8_sw.c:28
            RG_buffer_5 = RG_buffer_4.read(); // ../../ave8_sw.c:28
            RG_buffer_4 = RG_buffer_3.read(); // ../../ave8_sw.c:28
            RG_buffer_3 = RG_buffer_2.read(); // ../../ave8_sw.c:28
            RG_buffer_2 = RG_buffer_1.read(); // ../../ave8_sw.c:28
            RG_buffer_1 = RG_buffer.read(); // ../../ave8_sw.c:28
            RG_buffer = RG_buffer_7.read(); // ../../ave8_sw.c:32
            Cysim_State = ST1_01;
            break;
        }
        }
    }
}

// assign out

//----------------------------------------------
// [sensitivities]
//     ave8_ret_r
// [destinations]
//     ave8_ret
//----------------------------------------------
void
ave8::CysimAssignOut_1(void)
{
    ave8_ret = (sc_uint<8>)(ave8_ret_r.read()); // ../../ave8_sw.c:20 ALWAYS_CON
}

// SystemC callbacks
void
ave8::before_end_of_elaboration(void)
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
ave8::end_of_elaboration(void)
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
ave8::start_of_simulation(void)
{
}
void
ave8::end_of_simulation(void)
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
ave8::register_dump(sc_trace_file* Cysim_tf)
{
    std::string nm(this->name());
    for (std::size_t pos = 0; (pos = nm.find('.', pos)) != std::string::npos; ) nm[pos] = '/';
    this->register_dump(Cysim_tf, nm + "/");
}
void
ave8::register_dump(sc_trace_file* Cysim_tf, const std::string& Cysim_param_path)
{
    if (!Cysim_is_elaboration_done) {
        // deferred registration of tracing signals
        Cysim_traces.push_back(Cysim_trace(Cysim_tf, Cysim_param_path));
        return;
    }
    sc_trace(Cysim_tf, Cysim_State, Cysim_param_path + "Cysim_State", 2);
    sc_trace(Cysim_tf, in0, Cysim_param_path + "in0");
    sc_trace(Cysim_tf, ave8_ret, Cysim_param_path + "ave8_ret");
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

ave8_test::ave8_test(sc_module_name Cysim_param_name, struct ave8 &Cysim_dut) : Cysim_main_dut(Cysim_dut)
{
    typedef ave8_test SC_CURRENT_USER_MODULE;
    trace_dump();
    SC_THREAD(do_test);
    sensitive << CLOCK.pos();
}
void
ave8_test::trace_dump()
{
    // VCD dump
    Cysim_tf = sc_create_vcd_trace_file("ave8_test");
    Cysim_main_dut.register_dump(Cysim_tf);

    // I/O
    Cysim_finished_wait = 0;
    Cysim_if_in0.open("in0.clv");
    Cysim_if_in0 >> std::hex;
    if (Cysim_if_in0.is_open()) {
        if ((Cysim_if_in0 >> std::ws).eof()) {
            Cysim_flags_i_in0 = 1;
        } else {
            Cysim_flags_i_in0 = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(in0.clv)" << std::endl;
        Cysim_flags_i_in0 = 1;
    }
    Cysim_ef_ave8_ret.open("ave8_ret.clv");
    Cysim_ef_ave8_ret >> std::hex;
    if (Cysim_ef_ave8_ret.is_open()) {
        if ((Cysim_ef_ave8_ret >> std::ws).eof()) {
            Cysim_flags_e_ave8_ret = 1;
        } else {
            Cysim_flags_e_ave8_ret = (1<<1);
            Cysim_finished_wait ++;
        }
    } else {
        std::cerr << "Cannot open file(ave8_ret.clv)" << std::endl;
        Cysim_flags_e_ave8_ret = 1;
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
ave8_test::do_test()
{
    const sc_time Cysim_delay_min = sc_get_time_resolution();
    const sc_time Cysim_delay_1(Cysim_delay_min);
    const sc_time Cysim_delay_2(Cysim_delay_min * 2);
    const sc_time Cysim_delay_reset(2000.0L / 4, SC_PS);
    RESET = 1;
    int Cysim_reset_ini_1 = 1;
    int Cysim_reset_ini_2 = 1;
    int Cysim_reset_ini_5 = 1;
    input_method();
    wait();

    if (Cysim_cycles > 0) Cysim_cycles += 100;
    for (Cysim_int64 Cysim_i = 1; Cysim_cycles < 0 || Cysim_i < Cysim_cycles; Cysim_i++) 
    {
        wait(Cysim_delay_1);
        if(!Cysim_reset_ini_1){
            input_method();
        }

        if (Cysim_i < 100) {
        } else if (Cysim_i == 100) {
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
ave8_test::input_data(Cysim_T& in, istream& is, int& flags, const Cysim_T& prev)
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
    Cysim_uint64 tmp = STRTOULL(str.c_str(), 0, 16);
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
ave8_test::input_dataSC(Cysim_T& in, istream& is, int& flags, const Cysim_T& prev)
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
    str.insert(0, "0xus");
    in(Cysim_W-1, 0) = str.c_str();
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
ave8_test::input_dataSC(sc_logic& in, istream& is, int& flags, const sc_logic& prev)
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
ave8_test::input_feed()
{
}
void
ave8_test::input_method()
{
    {
        sc_uint<8> Cysim_tmp;
        input_dataSC<8>(Cysim_tmp, Cysim_if_in0, Cysim_flags_i_in0, in0.read());
        if(!(Cysim_flags_i_in0 & 1)){
            in0 = Cysim_tmp;
        }
    }
}
void
ave8_test::print_compare_summary(const char *name, CysimCompareCount &count)
{
    std::cout << std::dec << name << "\t\t" << count.match << "\t" << count.notmatch << "\n";
    Cysim_total_count.match += count.match;
    Cysim_total_count.notmatch += count.notmatch;
}
void
ave8_test::print_compare_summary()
{
    std::cout << "*****************************************\n";
    std::cout << "Signal\t\tmatched\t\terror\n";
    std::cout << "-----------------------------------------\n";

    print_compare_summary("ave8_ret", Cysim_count_ave8_ret);
    std::cout << "-----------------------------------------\n";
    std::cout << std::dec << "Total\t\t" << Cysim_total_count.match << "\t"
         << Cysim_total_count.notmatch << '\n';
    std::cout << "*****************************************\n";
}

template <int Cysim_W, class Cysim_T>
void
ave8_test::print_compare(const Cysim_T& out, const char* name, CysimCompare<Cysim_T >& count, int& flags, istream& is, bool& hdr_out)
{
    bool is_print = (Cysim_verbose > 0 && !Cysim_reset_ini_3);
    if (is_print) {
        if (hdr_out) {
            std::cout << "---------- " << sc_time_stamp() << " ----------\n";
            hdr_out = false;
        }
        std::cout << std::hex << "out:" << name << '=';
        if (Cysim_W <= 8) std::cout << (Cysim_int32)(CYSIM_MASK64(Cysim_W) & out) << '\t';
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
                if (Cysim_W <= 8) std::cout << (Cysim_int32)(CYSIM_MASK64(Cysim_W) & ept) << '\t';
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
    std::cout << std::dec;
}
template <int Cysim_W, class Cysim_T>
void
ave8_test::print_compareSC(const Cysim_T& out, const char* name, CysimCompare<Cysim_T >& count, int& flags, istream& is, bool& hdr_out)
{
    bool is_print = (Cysim_verbose > 0 && !Cysim_reset_ini_3);
    if (is_print) {
        if (hdr_out) {
            std::cout << "---------- " << sc_time_stamp() << " ----------\n";
            hdr_out = false;
        }
        std::cout << "out:" << name << '=';
        cysim::printHex(std::cout, out, 32) << '\t';
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
                std::cout << "ept:" << name << '=';
                cysim::printHex(std::cout, ept, 32) << '\t';
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
    std::cout << std::dec;
}
template <int Cysim_W>
void
ave8_test::print_compareSC(const sc_logic& out, const char* name, CysimCompare<sc_logic >& count, int& flags, istream& is, bool& hdr_out)
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
    std::cout << std::dec;
}
void
ave8_test::print_compare()
{
    bool Cysim_hdr = true;
    if (Cysim_reset_ini_3) Cysim_hdr = false;
    else if (Cysim_verbose > 1) {
        std::cout << "---------- " << sc_time_stamp() << " ----------\n";
        Cysim_hdr = false;
    }
    print_compareSC<8>(ave8_ret.read(), "ave8_ret", Cysim_count_ave8_ret, Cysim_flags_e_ave8_ret, Cysim_ef_ave8_ret, Cysim_hdr);
}
void
ave8_test::log_file_out(ostream &Cysim_param_os, Cysim_int64 Cysim_param_cycle)
{
    Cysim_param_os << std::dec << "********** Cycle " << Cysim_param_cycle << " **********\n";
    Cysim_param_os << "State\t" << Cysim_main_dut.Cysim_State << '\n';
    Cysim_param_os << std::hex << std::setfill('0') << std::uppercase;
    if(!(Cysim_flags_i_in0 & 1)){
        cysim::printHex(Cysim_param_os << "input\tin0\t", in0.read()) << '\n';
    }
    cysim::printHex(Cysim_param_os << "output\tave8_ret\t", ave8_ret.read()) << '\n';
    Cysim_param_os << std::nouppercase;
}
void
ave8_test::close_file()
{
    Cysim_if_in0.close();
    Cysim_ef_ave8_ret.close();
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
    sc_signal<sc_uint<8> > in0;
    sc_signal<sc_uint<8> > ave8_ret;
    sc_clock CLOCK("CLOCK", 2000.0L, SC_PS, 0.5, 2000.0L, SC_PS, true);
    sc_signal<sc_uint<1> > RESET;
    RESET = 1;
    // DUT
    struct ave8 *Cysim_user_ave8 = new struct ave8("user_ave8");
    Cysim_user_ave8->in0(in0);
    Cysim_user_ave8->ave8_ret(ave8_ret);
    Cysim_user_ave8->CLOCK(CLOCK);
    Cysim_user_ave8->RESET(RESET);
    // Test unit
    ave8_test Cysim_testunit_ave8("testunit_ave8", *Cysim_user_ave8);
    Cysim_testunit_ave8.in0(in0);
    Cysim_testunit_ave8.ave8_ret(ave8_ret);
    Cysim_testunit_ave8.CLOCK(CLOCK);
    Cysim_testunit_ave8.RESET(RESET);
    // simulation
    sc_start();
    Cysim_testunit_ave8.print_compare_summary();
    Cysim_testunit_ave8.close_file();
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
