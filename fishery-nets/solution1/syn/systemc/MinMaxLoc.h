// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _MinMaxLoc_HH_
#define _MinMaxLoc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct MinMaxLoc : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > src_data_stream_V_dout;
    sc_in< sc_logic > src_data_stream_V_empty_n;
    sc_out< sc_logic > src_data_stream_V_read;
    sc_out< sc_lv<16> > min_val_out_din;
    sc_in< sc_logic > min_val_out_full_n;
    sc_out< sc_logic > min_val_out_write;
    sc_out< sc_lv<16> > max_val_out_din;
    sc_in< sc_logic > max_val_out_full_n;
    sc_out< sc_logic > max_val_out_write;


    // Module declarations
    MinMaxLoc(sc_module_name name);
    SC_HAS_PROCESS(MinMaxLoc);

    ~MinMaxLoc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > src_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln1233_reg_217;
    sc_signal< sc_logic > min_val_out_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln1232_fu_132_p2;
    sc_signal< sc_logic > max_val_out_blk_n;
    sc_signal< sc_lv<9> > t_V_5_reg_103;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<9> > i_V_fu_138_p2;
    sc_signal< sc_lv<9> > i_V_reg_212;
    sc_signal< sc_lv<1> > icmp_ln1233_fu_144_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > j_V_fu_150_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<9> > t_V_reg_92;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<16> > ret_V_37_fu_64;
    sc_signal< sc_lv<16> > p_min_val_fu_176_p3;
    sc_signal< sc_lv<16> > ret_V_fu_68;
    sc_signal< sc_lv<16> > select_ln1237_fu_162_p3;
    sc_signal< sc_lv<1> > icmp_ln1237_fu_156_p2;
    sc_signal< sc_lv<1> > icmp_ln1242_fu_170_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<9> ap_const_lv9_10E;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<9> ap_const_lv9_1E0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_i_V_fu_138_p2();
    void thread_icmp_ln1232_fu_132_p2();
    void thread_icmp_ln1233_fu_144_p2();
    void thread_icmp_ln1237_fu_156_p2();
    void thread_icmp_ln1242_fu_170_p2();
    void thread_j_V_fu_150_p2();
    void thread_max_val_out_blk_n();
    void thread_max_val_out_din();
    void thread_max_val_out_write();
    void thread_min_val_out_blk_n();
    void thread_min_val_out_din();
    void thread_min_val_out_write();
    void thread_p_min_val_fu_176_p3();
    void thread_select_ln1237_fu_162_p3();
    void thread_src_data_stream_V_blk_n();
    void thread_src_data_stream_V_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
