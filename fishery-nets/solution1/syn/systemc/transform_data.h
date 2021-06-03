// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _transform_data_HH_
#define _transform_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct transform_data : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > inputImage_data_stream_0_V_dout;
    sc_in< sc_logic > inputImage_data_stream_0_V_empty_n;
    sc_out< sc_logic > inputImage_data_stream_0_V_read;
    sc_in< sc_lv<8> > inputImage_data_stream_1_V_dout;
    sc_in< sc_logic > inputImage_data_stream_1_V_empty_n;
    sc_out< sc_logic > inputImage_data_stream_1_V_read;
    sc_in< sc_lv<8> > inputImage_data_stream_2_V_dout;
    sc_in< sc_logic > inputImage_data_stream_2_V_empty_n;
    sc_out< sc_logic > inputImage_data_stream_2_V_read;
    sc_out< sc_lv<32> > I_V_V_din;
    sc_in< sc_logic > I_V_V_full_n;
    sc_out< sc_logic > I_V_V_write;
    sc_out< sc_lv<32> > I_COPY_V_V_din;
    sc_in< sc_logic > I_COPY_V_V_full_n;
    sc_out< sc_logic > I_COPY_V_V_write;
    sc_out< sc_lv<32> > I_2_V_V_din;
    sc_in< sc_logic > I_2_V_V_full_n;
    sc_out< sc_logic > I_2_V_V_write;
    sc_out< sc_lv<32> > ONES_V_V_din;
    sc_in< sc_logic > ONES_V_V_full_n;
    sc_out< sc_logic > ONES_V_V_write;


    // Module declarations
    transform_data(sc_module_name name);
    SC_HAS_PROCESS(transform_data);

    ~transform_data();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > inputImage_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln25_reg_252;
    sc_signal< sc_logic > inputImage_data_stream_1_V_blk_n;
    sc_signal< sc_logic > inputImage_data_stream_2_V_blk_n;
    sc_signal< sc_logic > I_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > icmp_ln25_reg_252_pp0_iter3_reg;
    sc_signal< sc_logic > I_COPY_V_V_blk_n;
    sc_signal< sc_logic > I_2_V_V_blk_n;
    sc_signal< sc_logic > ONES_V_V_blk_n;
    sc_signal< sc_lv<17> > indvar_flatten_reg_125;
    sc_signal< sc_lv<1> > icmp_ln25_fu_136_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln25_reg_252_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln25_reg_252_pp0_iter2_reg;
    sc_signal< sc_lv<17> > add_ln25_fu_142_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > tmp_23_reg_261;
    sc_signal< sc_lv<18> > tmp_reg_266;
    sc_signal< sc_lv<24> > i_V_1_fu_175_p1;
    sc_signal< sc_lv<24> > i_V_1_reg_271;
    sc_signal< sc_lv<48> > r_V_fu_182_p2;
    sc_signal< sc_lv<48> > r_V_reg_276;
    sc_signal< sc_lv<1> > r_1_fu_192_p2;
    sc_signal< sc_lv<1> > r_1_reg_283;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<32> > tmp_V_202_fu_198_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<24> > i_V_fu_148_p3;
    sc_signal< sc_lv<24> > mul_ln1148_fu_159_p1;
    sc_signal< sc_lv<50> > mul_ln1148_fu_159_p2;
    sc_signal< sc_lv<24> > r_V_fu_182_p0;
    sc_signal< sc_lv<48> > zext_ln1116_fu_178_p1;
    sc_signal< sc_lv<24> > r_V_fu_182_p1;
    sc_signal< sc_lv<15> > trunc_ln718_fu_188_p1;
    sc_signal< sc_lv<1> > tmp_21_fu_212_p3;
    sc_signal< sc_lv<1> > r_fu_219_p2;
    sc_signal< sc_lv<1> > tmp_22_fu_224_p3;
    sc_signal< sc_lv<1> > and_ln412_fu_231_p2;
    sc_signal< sc_lv<17> > zext_ln412_fu_237_p1;
    sc_signal< sc_lv<17> > trunc_ln_fu_203_p4;
    sc_signal< sc_lv<17> > p_Val2_s_fu_241_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<50> > mul_ln1148_fu_159_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<32> ap_const_lv32_10000;
    static const sc_lv<17> ap_const_lv17_1FA40;
    static const sc_lv<17> ap_const_lv17_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<50> ap_const_lv50_1010102;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_I_2_V_V_blk_n();
    void thread_I_2_V_V_din();
    void thread_I_2_V_V_write();
    void thread_I_COPY_V_V_blk_n();
    void thread_I_COPY_V_V_din();
    void thread_I_COPY_V_V_write();
    void thread_I_V_V_blk_n();
    void thread_I_V_V_din();
    void thread_I_V_V_write();
    void thread_ONES_V_V_blk_n();
    void thread_ONES_V_V_din();
    void thread_ONES_V_V_write();
    void thread_add_ln25_fu_142_p2();
    void thread_and_ln412_fu_231_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_i_V_1_fu_175_p1();
    void thread_i_V_fu_148_p3();
    void thread_icmp_ln25_fu_136_p2();
    void thread_inputImage_data_stream_0_V_blk_n();
    void thread_inputImage_data_stream_0_V_read();
    void thread_inputImage_data_stream_1_V_blk_n();
    void thread_inputImage_data_stream_1_V_read();
    void thread_inputImage_data_stream_2_V_blk_n();
    void thread_inputImage_data_stream_2_V_read();
    void thread_internal_ap_ready();
    void thread_mul_ln1148_fu_159_p1();
    void thread_mul_ln1148_fu_159_p10();
    void thread_mul_ln1148_fu_159_p2();
    void thread_p_Val2_s_fu_241_p2();
    void thread_r_1_fu_192_p2();
    void thread_r_V_fu_182_p0();
    void thread_r_V_fu_182_p1();
    void thread_r_V_fu_182_p2();
    void thread_r_fu_219_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_21_fu_212_p3();
    void thread_tmp_22_fu_224_p3();
    void thread_tmp_V_202_fu_198_p1();
    void thread_trunc_ln718_fu_188_p1();
    void thread_trunc_ln_fu_203_p4();
    void thread_zext_ln1116_fu_178_p1();
    void thread_zext_ln412_fu_237_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
