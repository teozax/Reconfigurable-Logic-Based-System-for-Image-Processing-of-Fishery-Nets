// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ex_enhancement.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ex_enhancement::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<16> ex_enhancement::ap_const_lv16_0 = "0000000000000000";
const sc_logic ex_enhancement::ap_const_logic_1 = sc_dt::Log_1;

ex_enhancement::ex_enhancement(sc_module_name name) : sc_module(name), mVcdFile(0) {
    transform_data_U0 = new transform_data("transform_data_U0");
    transform_data_U0->ap_clk(ap_clk);
    transform_data_U0->ap_rst(ap_rst);
    transform_data_U0->ap_start(transform_data_U0_ap_start);
    transform_data_U0->start_full_n(start_for_guidedfilter204_U0_full_n);
    transform_data_U0->ap_done(transform_data_U0_ap_done);
    transform_data_U0->ap_continue(transform_data_U0_ap_continue);
    transform_data_U0->ap_idle(transform_data_U0_ap_idle);
    transform_data_U0->ap_ready(transform_data_U0_ap_ready);
    transform_data_U0->start_out(transform_data_U0_start_out);
    transform_data_U0->start_write(transform_data_U0_start_write);
    transform_data_U0->inputImage_data_stream_0_V_dout(inputImage_data_stream_0_V_dout);
    transform_data_U0->inputImage_data_stream_0_V_empty_n(inputImage_data_stream_0_V_empty_n);
    transform_data_U0->inputImage_data_stream_0_V_read(transform_data_U0_inputImage_data_stream_0_V_read);
    transform_data_U0->inputImage_data_stream_1_V_dout(inputImage_data_stream_1_V_dout);
    transform_data_U0->inputImage_data_stream_1_V_empty_n(inputImage_data_stream_1_V_empty_n);
    transform_data_U0->inputImage_data_stream_1_V_read(transform_data_U0_inputImage_data_stream_1_V_read);
    transform_data_U0->inputImage_data_stream_2_V_dout(inputImage_data_stream_2_V_dout);
    transform_data_U0->inputImage_data_stream_2_V_empty_n(inputImage_data_stream_2_V_empty_n);
    transform_data_U0->inputImage_data_stream_2_V_read(transform_data_U0_inputImage_data_stream_2_V_read);
    transform_data_U0->I_V_V_din(transform_data_U0_I_V_V_din);
    transform_data_U0->I_V_V_full_n(I_V_V_full_n);
    transform_data_U0->I_V_V_write(transform_data_U0_I_V_V_write);
    transform_data_U0->I_COPY_V_V_din(transform_data_U0_I_COPY_V_V_din);
    transform_data_U0->I_COPY_V_V_full_n(I_COPY_V_V_full_n);
    transform_data_U0->I_COPY_V_V_write(transform_data_U0_I_COPY_V_V_write);
    transform_data_U0->I_2_V_V_din(transform_data_U0_I_2_V_V_din);
    transform_data_U0->I_2_V_V_full_n(I_2_V_V_full_n);
    transform_data_U0->I_2_V_V_write(transform_data_U0_I_2_V_V_write);
    transform_data_U0->ONES_V_V_din(transform_data_U0_ONES_V_V_din);
    transform_data_U0->ONES_V_V_full_n(ONES_V_V_full_n);
    transform_data_U0->ONES_V_V_write(transform_data_U0_ONES_V_V_write);
    guidedfilter204_U0 = new guidedfilter204("guidedfilter204_U0");
    guidedfilter204_U0->I_enhanced_data_stream_V_din(guidedfilter204_U0_I_enhanced_data_stream_V_din);
    guidedfilter204_U0->I_enhanced_data_stream_V_full_n(I_enhanced_data_stream_V_full_n);
    guidedfilter204_U0->I_enhanced_data_stream_V_write(guidedfilter204_U0_I_enhanced_data_stream_V_write);
    guidedfilter204_U0->ONES_V_V_dout(ONES_V_V_dout);
    guidedfilter204_U0->ONES_V_V_empty_n(ONES_V_V_empty_n);
    guidedfilter204_U0->ONES_V_V_read(guidedfilter204_U0_ONES_V_V_read);
    guidedfilter204_U0->I_V_V_dout(I_V_V_dout);
    guidedfilter204_U0->I_V_V_empty_n(I_V_V_empty_n);
    guidedfilter204_U0->I_V_V_read(guidedfilter204_U0_I_V_V_read);
    guidedfilter204_U0->I_2_V_V_dout(I_2_V_V_dout);
    guidedfilter204_U0->I_2_V_V_empty_n(I_2_V_V_empty_n);
    guidedfilter204_U0->I_2_V_V_read(guidedfilter204_U0_I_2_V_V_read);
    guidedfilter204_U0->I_COPY_V_V_dout(I_COPY_V_V_dout);
    guidedfilter204_U0->I_COPY_V_V_empty_n(I_COPY_V_V_empty_n);
    guidedfilter204_U0->I_COPY_V_V_read(guidedfilter204_U0_I_COPY_V_V_read);
    guidedfilter204_U0->ap_clk(ap_clk);
    guidedfilter204_U0->ap_rst(ap_rst);
    guidedfilter204_U0->ap_start(guidedfilter204_U0_ap_start);
    guidedfilter204_U0->ap_done(guidedfilter204_U0_ap_done);
    guidedfilter204_U0->ap_ready(guidedfilter204_U0_ap_ready);
    guidedfilter204_U0->ap_idle(guidedfilter204_U0_ap_idle);
    guidedfilter204_U0->ap_continue(guidedfilter204_U0_ap_continue);
    I_V_V_U = new fifo_w32_d2_A("I_V_V_U");
    I_V_V_U->clk(ap_clk);
    I_V_V_U->reset(ap_rst);
    I_V_V_U->if_read_ce(ap_var_for_const0);
    I_V_V_U->if_write_ce(ap_var_for_const0);
    I_V_V_U->if_din(transform_data_U0_I_V_V_din);
    I_V_V_U->if_full_n(I_V_V_full_n);
    I_V_V_U->if_write(transform_data_U0_I_V_V_write);
    I_V_V_U->if_dout(I_V_V_dout);
    I_V_V_U->if_empty_n(I_V_V_empty_n);
    I_V_V_U->if_read(guidedfilter204_U0_I_V_V_read);
    I_COPY_V_V_U = new fifo_w32_d2_A("I_COPY_V_V_U");
    I_COPY_V_V_U->clk(ap_clk);
    I_COPY_V_V_U->reset(ap_rst);
    I_COPY_V_V_U->if_read_ce(ap_var_for_const0);
    I_COPY_V_V_U->if_write_ce(ap_var_for_const0);
    I_COPY_V_V_U->if_din(transform_data_U0_I_COPY_V_V_din);
    I_COPY_V_V_U->if_full_n(I_COPY_V_V_full_n);
    I_COPY_V_V_U->if_write(transform_data_U0_I_COPY_V_V_write);
    I_COPY_V_V_U->if_dout(I_COPY_V_V_dout);
    I_COPY_V_V_U->if_empty_n(I_COPY_V_V_empty_n);
    I_COPY_V_V_U->if_read(guidedfilter204_U0_I_COPY_V_V_read);
    I_2_V_V_U = new fifo_w32_d2_A("I_2_V_V_U");
    I_2_V_V_U->clk(ap_clk);
    I_2_V_V_U->reset(ap_rst);
    I_2_V_V_U->if_read_ce(ap_var_for_const0);
    I_2_V_V_U->if_write_ce(ap_var_for_const0);
    I_2_V_V_U->if_din(transform_data_U0_I_2_V_V_din);
    I_2_V_V_U->if_full_n(I_2_V_V_full_n);
    I_2_V_V_U->if_write(transform_data_U0_I_2_V_V_write);
    I_2_V_V_U->if_dout(I_2_V_V_dout);
    I_2_V_V_U->if_empty_n(I_2_V_V_empty_n);
    I_2_V_V_U->if_read(guidedfilter204_U0_I_2_V_V_read);
    ONES_V_V_U = new fifo_w32_d2_A("ONES_V_V_U");
    ONES_V_V_U->clk(ap_clk);
    ONES_V_V_U->reset(ap_rst);
    ONES_V_V_U->if_read_ce(ap_var_for_const0);
    ONES_V_V_U->if_write_ce(ap_var_for_const0);
    ONES_V_V_U->if_din(transform_data_U0_ONES_V_V_din);
    ONES_V_V_U->if_full_n(ONES_V_V_full_n);
    ONES_V_V_U->if_write(transform_data_U0_ONES_V_V_write);
    ONES_V_V_U->if_dout(ONES_V_V_dout);
    ONES_V_V_U->if_empty_n(ONES_V_V_empty_n);
    ONES_V_V_U->if_read(guidedfilter204_U0_ONES_V_V_read);
    start_for_guidedfcXB_U = new start_for_guidedfcXB("start_for_guidedfcXB_U");
    start_for_guidedfcXB_U->clk(ap_clk);
    start_for_guidedfcXB_U->reset(ap_rst);
    start_for_guidedfcXB_U->if_read_ce(ap_var_for_const0);
    start_for_guidedfcXB_U->if_write_ce(ap_var_for_const0);
    start_for_guidedfcXB_U->if_din(start_for_guidedfilter204_U0_din);
    start_for_guidedfcXB_U->if_full_n(start_for_guidedfilter204_U0_full_n);
    start_for_guidedfcXB_U->if_write(transform_data_U0_start_write);
    start_for_guidedfcXB_U->if_dout(start_for_guidedfilter204_U0_dout);
    start_for_guidedfcXB_U->if_empty_n(start_for_guidedfilter204_U0_empty_n);
    start_for_guidedfcXB_U->if_read(guidedfilter204_U0_ap_ready);

    SC_METHOD(thread_I_enhanced_data_stream_V_din);
    sensitive << ( guidedfilter204_U0_I_enhanced_data_stream_V_din );

    SC_METHOD(thread_I_enhanced_data_stream_V_write);
    sensitive << ( guidedfilter204_U0_I_enhanced_data_stream_V_write );

    SC_METHOD(thread_ap_done);
    sensitive << ( guidedfilter204_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( transform_data_U0_ap_idle );
    sensitive << ( guidedfilter204_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( transform_data_U0_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( guidedfilter204_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( transform_data_U0_ap_ready );

    SC_METHOD(thread_guidedfilter204_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_guidedfilter204_U0_ap_start);
    sensitive << ( start_for_guidedfilter204_U0_empty_n );

    SC_METHOD(thread_guidedfilter204_U0_start_full_n);

    SC_METHOD(thread_guidedfilter204_U0_start_write);

    SC_METHOD(thread_inputImage_data_stream_0_V_read);
    sensitive << ( transform_data_U0_inputImage_data_stream_0_V_read );

    SC_METHOD(thread_inputImage_data_stream_1_V_read);
    sensitive << ( transform_data_U0_inputImage_data_stream_1_V_read );

    SC_METHOD(thread_inputImage_data_stream_2_V_read);
    sensitive << ( transform_data_U0_inputImage_data_stream_2_V_read );

    SC_METHOD(thread_start_for_guidedfilter204_U0_din);

    SC_METHOD(thread_transform_data_U0_ap_continue);

    SC_METHOD(thread_transform_data_U0_ap_start);
    sensitive << ( ap_start );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ex_enhancement_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, inputImage_data_stream_0_V_dout, "(port)inputImage_data_stream_0_V_dout");
    sc_trace(mVcdFile, inputImage_data_stream_0_V_empty_n, "(port)inputImage_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, inputImage_data_stream_0_V_read, "(port)inputImage_data_stream_0_V_read");
    sc_trace(mVcdFile, inputImage_data_stream_1_V_dout, "(port)inputImage_data_stream_1_V_dout");
    sc_trace(mVcdFile, inputImage_data_stream_1_V_empty_n, "(port)inputImage_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, inputImage_data_stream_1_V_read, "(port)inputImage_data_stream_1_V_read");
    sc_trace(mVcdFile, inputImage_data_stream_2_V_dout, "(port)inputImage_data_stream_2_V_dout");
    sc_trace(mVcdFile, inputImage_data_stream_2_V_empty_n, "(port)inputImage_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, inputImage_data_stream_2_V_read, "(port)inputImage_data_stream_2_V_read");
    sc_trace(mVcdFile, I_enhanced_data_stream_V_din, "(port)I_enhanced_data_stream_V_din");
    sc_trace(mVcdFile, I_enhanced_data_stream_V_full_n, "(port)I_enhanced_data_stream_V_full_n");
    sc_trace(mVcdFile, I_enhanced_data_stream_V_write, "(port)I_enhanced_data_stream_V_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, transform_data_U0_ap_start, "transform_data_U0_ap_start");
    sc_trace(mVcdFile, transform_data_U0_ap_done, "transform_data_U0_ap_done");
    sc_trace(mVcdFile, transform_data_U0_ap_continue, "transform_data_U0_ap_continue");
    sc_trace(mVcdFile, transform_data_U0_ap_idle, "transform_data_U0_ap_idle");
    sc_trace(mVcdFile, transform_data_U0_ap_ready, "transform_data_U0_ap_ready");
    sc_trace(mVcdFile, transform_data_U0_start_out, "transform_data_U0_start_out");
    sc_trace(mVcdFile, transform_data_U0_start_write, "transform_data_U0_start_write");
    sc_trace(mVcdFile, transform_data_U0_inputImage_data_stream_0_V_read, "transform_data_U0_inputImage_data_stream_0_V_read");
    sc_trace(mVcdFile, transform_data_U0_inputImage_data_stream_1_V_read, "transform_data_U0_inputImage_data_stream_1_V_read");
    sc_trace(mVcdFile, transform_data_U0_inputImage_data_stream_2_V_read, "transform_data_U0_inputImage_data_stream_2_V_read");
    sc_trace(mVcdFile, transform_data_U0_I_V_V_din, "transform_data_U0_I_V_V_din");
    sc_trace(mVcdFile, transform_data_U0_I_V_V_write, "transform_data_U0_I_V_V_write");
    sc_trace(mVcdFile, transform_data_U0_I_COPY_V_V_din, "transform_data_U0_I_COPY_V_V_din");
    sc_trace(mVcdFile, transform_data_U0_I_COPY_V_V_write, "transform_data_U0_I_COPY_V_V_write");
    sc_trace(mVcdFile, transform_data_U0_I_2_V_V_din, "transform_data_U0_I_2_V_V_din");
    sc_trace(mVcdFile, transform_data_U0_I_2_V_V_write, "transform_data_U0_I_2_V_V_write");
    sc_trace(mVcdFile, transform_data_U0_ONES_V_V_din, "transform_data_U0_ONES_V_V_din");
    sc_trace(mVcdFile, transform_data_U0_ONES_V_V_write, "transform_data_U0_ONES_V_V_write");
    sc_trace(mVcdFile, guidedfilter204_U0_I_enhanced_data_stream_V_din, "guidedfilter204_U0_I_enhanced_data_stream_V_din");
    sc_trace(mVcdFile, guidedfilter204_U0_I_enhanced_data_stream_V_write, "guidedfilter204_U0_I_enhanced_data_stream_V_write");
    sc_trace(mVcdFile, guidedfilter204_U0_ONES_V_V_read, "guidedfilter204_U0_ONES_V_V_read");
    sc_trace(mVcdFile, guidedfilter204_U0_I_V_V_read, "guidedfilter204_U0_I_V_V_read");
    sc_trace(mVcdFile, guidedfilter204_U0_I_2_V_V_read, "guidedfilter204_U0_I_2_V_V_read");
    sc_trace(mVcdFile, guidedfilter204_U0_I_COPY_V_V_read, "guidedfilter204_U0_I_COPY_V_V_read");
    sc_trace(mVcdFile, guidedfilter204_U0_ap_start, "guidedfilter204_U0_ap_start");
    sc_trace(mVcdFile, guidedfilter204_U0_ap_done, "guidedfilter204_U0_ap_done");
    sc_trace(mVcdFile, guidedfilter204_U0_ap_ready, "guidedfilter204_U0_ap_ready");
    sc_trace(mVcdFile, guidedfilter204_U0_ap_idle, "guidedfilter204_U0_ap_idle");
    sc_trace(mVcdFile, guidedfilter204_U0_ap_continue, "guidedfilter204_U0_ap_continue");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, I_V_V_full_n, "I_V_V_full_n");
    sc_trace(mVcdFile, I_V_V_dout, "I_V_V_dout");
    sc_trace(mVcdFile, I_V_V_empty_n, "I_V_V_empty_n");
    sc_trace(mVcdFile, I_COPY_V_V_full_n, "I_COPY_V_V_full_n");
    sc_trace(mVcdFile, I_COPY_V_V_dout, "I_COPY_V_V_dout");
    sc_trace(mVcdFile, I_COPY_V_V_empty_n, "I_COPY_V_V_empty_n");
    sc_trace(mVcdFile, I_2_V_V_full_n, "I_2_V_V_full_n");
    sc_trace(mVcdFile, I_2_V_V_dout, "I_2_V_V_dout");
    sc_trace(mVcdFile, I_2_V_V_empty_n, "I_2_V_V_empty_n");
    sc_trace(mVcdFile, ONES_V_V_full_n, "ONES_V_V_full_n");
    sc_trace(mVcdFile, ONES_V_V_dout, "ONES_V_V_dout");
    sc_trace(mVcdFile, ONES_V_V_empty_n, "ONES_V_V_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_guidedfilter204_U0_din, "start_for_guidedfilter204_U0_din");
    sc_trace(mVcdFile, start_for_guidedfilter204_U0_full_n, "start_for_guidedfilter204_U0_full_n");
    sc_trace(mVcdFile, start_for_guidedfilter204_U0_dout, "start_for_guidedfilter204_U0_dout");
    sc_trace(mVcdFile, start_for_guidedfilter204_U0_empty_n, "start_for_guidedfilter204_U0_empty_n");
    sc_trace(mVcdFile, guidedfilter204_U0_start_full_n, "guidedfilter204_U0_start_full_n");
    sc_trace(mVcdFile, guidedfilter204_U0_start_write, "guidedfilter204_U0_start_write");
#endif

    }
}

ex_enhancement::~ex_enhancement() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete transform_data_U0;
    delete guidedfilter204_U0;
    delete I_V_V_U;
    delete I_COPY_V_V_U;
    delete I_2_V_V_U;
    delete ONES_V_V_U;
    delete start_for_guidedfcXB_U;
}

void ex_enhancement::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void ex_enhancement::thread_I_enhanced_data_stream_V_din() {
    I_enhanced_data_stream_V_din = guidedfilter204_U0_I_enhanced_data_stream_V_din.read();
}

void ex_enhancement::thread_I_enhanced_data_stream_V_write() {
    I_enhanced_data_stream_V_write = guidedfilter204_U0_I_enhanced_data_stream_V_write.read();
}

void ex_enhancement::thread_ap_done() {
    ap_done = guidedfilter204_U0_ap_done.read();
}

void ex_enhancement::thread_ap_idle() {
    ap_idle = (transform_data_U0_ap_idle.read() & guidedfilter204_U0_ap_idle.read());
}

void ex_enhancement::thread_ap_ready() {
    ap_ready = transform_data_U0_ap_ready.read();
}

void ex_enhancement::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void ex_enhancement::thread_ap_sync_done() {
    ap_sync_done = guidedfilter204_U0_ap_done.read();
}

void ex_enhancement::thread_ap_sync_ready() {
    ap_sync_ready = transform_data_U0_ap_ready.read();
}

void ex_enhancement::thread_guidedfilter204_U0_ap_continue() {
    guidedfilter204_U0_ap_continue = ap_continue.read();
}

void ex_enhancement::thread_guidedfilter204_U0_ap_start() {
    guidedfilter204_U0_ap_start = start_for_guidedfilter204_U0_empty_n.read();
}

void ex_enhancement::thread_guidedfilter204_U0_start_full_n() {
    guidedfilter204_U0_start_full_n = ap_const_logic_1;
}

void ex_enhancement::thread_guidedfilter204_U0_start_write() {
    guidedfilter204_U0_start_write = ap_const_logic_0;
}

void ex_enhancement::thread_inputImage_data_stream_0_V_read() {
    inputImage_data_stream_0_V_read = transform_data_U0_inputImage_data_stream_0_V_read.read();
}

void ex_enhancement::thread_inputImage_data_stream_1_V_read() {
    inputImage_data_stream_1_V_read = transform_data_U0_inputImage_data_stream_1_V_read.read();
}

void ex_enhancement::thread_inputImage_data_stream_2_V_read() {
    inputImage_data_stream_2_V_read = transform_data_U0_inputImage_data_stream_2_V_read.read();
}

void ex_enhancement::thread_start_for_guidedfilter204_U0_din() {
    start_for_guidedfilter204_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void ex_enhancement::thread_transform_data_U0_ap_continue() {
    transform_data_U0_ap_continue = ap_const_logic_1;
}

void ex_enhancement::thread_transform_data_U0_ap_start() {
    transform_data_U0_ap_start = ap_start.read();
}

}

