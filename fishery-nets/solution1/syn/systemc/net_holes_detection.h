// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _net_holes_detection_HH_
#define _net_holes_detection_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Block_codeRepl7833_p.h"
#include "AXIvideo2Mat.h"
#include "ex_enhancement.h"
#include "Duplicate266.h"
#include "Loop_loop_height_pro.h"
#include "Loop_loop_height_pro_1.h"
#include "AddWeighted.h"
#include "Duplicate269.h"
#include "Duplicate270.h"
#include "Duplicate.h"
#include "MinMaxLoc.h"
#include "mat2gray.h"
#include "mean_filter_2D.h"
#include "adaptive_threshold.h"
#include "threshold.h"
#include "ccl.h"
#include "AXIstream2Mat.h"
#include "Mat2AXIvideo.h"
#include "fifo_w10_d3_A.h"
#include "fifo_w10_d6_A.h"
#include "fifo_w10_d8_A.h"
#include "fifo_w8_d2_A.h"
#include "fifo_w16_d2_A.h"
#include "fifo_w10_d2_A.h"
#include "fifo_w32_d2_A_x.h"
#include "start_for_DuplicaduH.h"
#include "start_for_AddWeigdvH.h"
#include "start_for_DuplicadwH.h"
#include "start_for_DuplicadxH.h"
#include "start_for_ex_enhadyH.h"
#include "start_for_Loop_lodzI.h"
#include "start_for_Loop_lodAI.h"
#include "start_for_DuplicadBI.h"
#include "start_for_mat2gradCI.h"
#include "start_for_adaptivdDI.h"
#include "start_for_MinMaxLdEI.h"
#include "start_for_threshodFJ.h"
#include "start_for_mean_fidGJ.h"
#include "start_for_AXIstredHJ.h"
#include "start_for_ccl_U0.h"
#include "start_for_Mat2AXIdIJ.h"
#include "net_holes_detection_CONTROL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 4,
         unsigned int C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32>
struct net_holes_detection : public sc_module {
    // Port declarations 38
    sc_in< sc_logic > s_axi_CONTROL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CONTROL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH/8> > s_axi_CONTROL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CONTROL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CONTROL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CONTROL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > interrupt;
    sc_in< sc_lv<24> > INPUT_STREAM_TDATA;
    sc_in< sc_lv<3> > INPUT_STREAM_TKEEP;
    sc_in< sc_lv<3> > INPUT_STREAM_TSTRB;
    sc_in< sc_lv<1> > INPUT_STREAM_TUSER;
    sc_in< sc_lv<1> > INPUT_STREAM_TLAST;
    sc_in< sc_lv<1> > INPUT_STREAM_TID;
    sc_in< sc_lv<1> > INPUT_STREAM_TDEST;
    sc_out< sc_lv<24> > OUTPUT_STREAM_TDATA;
    sc_out< sc_lv<3> > OUTPUT_STREAM_TKEEP;
    sc_out< sc_lv<3> > OUTPUT_STREAM_TSTRB;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TUSER;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TLAST;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TID;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TDEST;
    sc_in< sc_logic > INPUT_STREAM_TVALID;
    sc_out< sc_logic > INPUT_STREAM_TREADY;
    sc_out< sc_logic > OUTPUT_STREAM_TVALID;
    sc_in< sc_logic > OUTPUT_STREAM_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    net_holes_detection(sc_module_name name);
    SC_HAS_PROCESS(net_holes_detection);

    ~net_holes_detection();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    net_holes_detection_CONTROL_BUS_s_axi<C_S_AXI_CONTROL_BUS_ADDR_WIDTH,C_S_AXI_CONTROL_BUS_DATA_WIDTH>* net_holes_detection_CONTROL_BUS_s_axi_U;
    Block_codeRepl7833_p* Block_codeRepl7833_p_U0;
    AXIvideo2Mat* AXIvideo2Mat_U0;
    ex_enhancement* ex_enhancement_U0;
    Duplicate266* Duplicate266_U0;
    Loop_loop_height_pro* Loop_loop_height_pro_U0;
    Loop_loop_height_pro_1* Loop_loop_height_pro_1_U0;
    AddWeighted* AddWeighted_U0;
    Duplicate269* Duplicate269_U0;
    Duplicate270* Duplicate270_U0;
    Duplicate* Duplicate_U0;
    MinMaxLoc* MinMaxLoc_U0;
    mat2gray* mat2gray_U0;
    mean_filter_2D* mean_filter_2D_U0;
    adaptive_threshold* adaptive_threshold_U0;
    threshold* threshold_U0;
    ccl* ccl_U0;
    AXIstream2Mat* AXIstream2Mat_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w10_d3_A* I_enhanced_rows_V_c_U;
    fifo_w10_d3_A* I_enhanced_cols_V_c_U;
    fifo_w10_d6_A* img_2_rows_V_c_U;
    fifo_w10_d6_A* img_2_cols_V_c_U;
    fifo_w10_d8_A* img_3_rows_V_c_U;
    fifo_w10_d8_A* img_3_cols_V_c_U;
    fifo_w10_d8_A* img_4_rows_V_c_U;
    fifo_w10_d8_A* img_4_cols_V_c_U;
    fifo_w8_d2_A* img_0_data_stream_0_U;
    fifo_w8_d2_A* img_0_data_stream_1_U;
    fifo_w8_d2_A* img_0_data_stream_2_U;
    fifo_w16_d2_A* I_enhanced_data_stre_U;
    fifo_w16_d2_A* I_enh1_data_stream_0_U;
    fifo_w16_d2_A* I_enh2_data_stream_0_U;
    fifo_w16_d2_A* img_1_data_stream_0_U;
    fifo_w16_d2_A* Background_data_stre_U;
    fifo_w16_d2_A* img_2_data_stream_0_U;
    fifo_w10_d2_A* img_2_rows_V_c7940_U;
    fifo_w10_d2_A* img_2_cols_V_c7941_U;
    fifo_w16_d2_A* img_3_data_stream_0_U;
    fifo_w16_d2_A* img_4_data_stream_0_U;
    fifo_w16_d2_A* img_8_data_stream_0_U;
    fifo_w16_d2_A* img_9_data_stream_0_U;
    fifo_w16_d2_A* img_10_data_stream_0_U;
    fifo_w16_d2_A* img_11_data_stream_0_U;
    fifo_w16_d2_A* min_value_c_U;
    fifo_w16_d2_A* max_value_c_U;
    fifo_w16_d2_A* img_5_data_stream_0_U;
    fifo_w16_d2_A* img_6_data_stream_0_U;
    fifo_w32_d2_A_x* help_V_V_U;
    fifo_w32_d2_A_x* Luminance_img_V_V_U;
    fifo_w32_d2_A_x* LI_V_V_U;
    fifo_w8_d2_A* img_12_data_stream_0_U;
    fifo_w8_d2_A* img_12_data_stream_1_U;
    fifo_w8_d2_A* img_12_data_stream_2_U;
    start_for_DuplicaduH* start_for_DuplicaduH_U;
    start_for_AddWeigdvH* start_for_AddWeigdvH_U;
    start_for_DuplicadwH* start_for_DuplicadwH_U;
    start_for_DuplicadxH* start_for_DuplicadxH_U;
    start_for_ex_enhadyH* start_for_ex_enhadyH_U;
    start_for_Loop_lodzI* start_for_Loop_lodzI_U;
    start_for_Loop_lodAI* start_for_Loop_lodAI_U;
    start_for_DuplicadBI* start_for_DuplicadBI_U;
    start_for_mat2gradCI* start_for_mat2gradCI_U;
    start_for_adaptivdDI* start_for_adaptivdDI_U;
    start_for_MinMaxLdEI* start_for_MinMaxLdEI_U;
    start_for_threshodFJ* start_for_threshodFJ_U;
    start_for_mean_fidGJ* start_for_mean_fidGJ_U;
    start_for_AXIstredHJ* start_for_AXIstredHJ_U;
    start_for_ccl_U0* start_for_ccl_U0_U;
    start_for_Mat2AXIdIJ* start_for_Mat2AXIdIJ_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_ap_start;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_start_full_n;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_ap_done;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_ap_continue;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_ap_idle;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_ap_ready;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_start_out;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_start_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_I_enhanced_rows_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_I_enhanced_rows_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_I_enhanced_cols_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_I_enhanced_cols_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_2_rows_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_2_rows_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_2_cols_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_2_cols_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_3_rows_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_3_rows_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_3_cols_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_3_cols_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_4_rows_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_4_rows_V_out_write;
    sc_signal< sc_lv<10> > Block_codeRepl7833_p_U0_img_4_cols_V_out_din;
    sc_signal< sc_logic > Block_codeRepl7833_p_U0_img_4_cols_V_out_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_out;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_0_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_0_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_1_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_1_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_2_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_2_V_write;
    sc_signal< sc_logic > ex_enhancement_U0_inputImage_data_stream_0_V_read;
    sc_signal< sc_logic > ex_enhancement_U0_inputImage_data_stream_1_V_read;
    sc_signal< sc_logic > ex_enhancement_U0_inputImage_data_stream_2_V_read;
    sc_signal< sc_lv<16> > ex_enhancement_U0_I_enhanced_data_stream_V_din;
    sc_signal< sc_logic > ex_enhancement_U0_I_enhanced_data_stream_V_write;
    sc_signal< sc_logic > ex_enhancement_U0_ap_start;
    sc_signal< sc_logic > ex_enhancement_U0_ap_done;
    sc_signal< sc_logic > ex_enhancement_U0_ap_ready;
    sc_signal< sc_logic > ex_enhancement_U0_ap_idle;
    sc_signal< sc_logic > ex_enhancement_U0_ap_continue;
    sc_signal< sc_logic > Duplicate266_U0_ap_start;
    sc_signal< sc_logic > Duplicate266_U0_ap_done;
    sc_signal< sc_logic > Duplicate266_U0_ap_continue;
    sc_signal< sc_logic > Duplicate266_U0_ap_idle;
    sc_signal< sc_logic > Duplicate266_U0_ap_ready;
    sc_signal< sc_logic > Duplicate266_U0_start_out;
    sc_signal< sc_logic > Duplicate266_U0_start_write;
    sc_signal< sc_logic > Duplicate266_U0_src_rows_V_read;
    sc_signal< sc_logic > Duplicate266_U0_src_cols_V_read;
    sc_signal< sc_logic > Duplicate266_U0_src_data_stream_V_read;
    sc_signal< sc_lv<16> > Duplicate266_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > Duplicate266_U0_dst1_data_stream_V_write;
    sc_signal< sc_lv<16> > Duplicate266_U0_dst2_data_stream_V_din;
    sc_signal< sc_logic > Duplicate266_U0_dst2_data_stream_V_write;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_ap_start;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_ap_done;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_ap_continue;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_ap_idle;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_ap_ready;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_start_out;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_start_write;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_I_enh1_data_stream_0_V_read;
    sc_signal< sc_lv<16> > Loop_loop_height_pro_U0_img_1_data_stream_0_V_din;
    sc_signal< sc_logic > Loop_loop_height_pro_U0_img_1_data_stream_0_V_write;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_ap_start;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_ap_done;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_ap_continue;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_ap_idle;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_ap_ready;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_img_1_data_stream_0_V_read;
    sc_signal< sc_lv<16> > Loop_loop_height_pro_1_U0_Background_data_stream_0_V_din;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_Background_data_stream_0_V_write;
    sc_signal< sc_logic > AddWeighted_U0_ap_start;
    sc_signal< sc_logic > AddWeighted_U0_ap_done;
    sc_signal< sc_logic > AddWeighted_U0_ap_continue;
    sc_signal< sc_logic > AddWeighted_U0_ap_idle;
    sc_signal< sc_logic > AddWeighted_U0_ap_ready;
    sc_signal< sc_logic > AddWeighted_U0_start_out;
    sc_signal< sc_logic > AddWeighted_U0_start_write;
    sc_signal< sc_logic > AddWeighted_U0_src1_data_stream_V_read;
    sc_signal< sc_logic > AddWeighted_U0_src2_data_stream_V_read;
    sc_signal< sc_logic > AddWeighted_U0_dst_rows_V_read;
    sc_signal< sc_logic > AddWeighted_U0_dst_cols_V_read;
    sc_signal< sc_lv<16> > AddWeighted_U0_dst_data_stream_V_din;
    sc_signal< sc_logic > AddWeighted_U0_dst_data_stream_V_write;
    sc_signal< sc_lv<10> > AddWeighted_U0_dst_rows_V_out_din;
    sc_signal< sc_logic > AddWeighted_U0_dst_rows_V_out_write;
    sc_signal< sc_lv<10> > AddWeighted_U0_dst_cols_V_out_din;
    sc_signal< sc_logic > AddWeighted_U0_dst_cols_V_out_write;
    sc_signal< sc_logic > Duplicate269_U0_ap_start;
    sc_signal< sc_logic > Duplicate269_U0_ap_done;
    sc_signal< sc_logic > Duplicate269_U0_ap_continue;
    sc_signal< sc_logic > Duplicate269_U0_ap_idle;
    sc_signal< sc_logic > Duplicate269_U0_ap_ready;
    sc_signal< sc_logic > Duplicate269_U0_src_rows_V_read;
    sc_signal< sc_logic > Duplicate269_U0_src_cols_V_read;
    sc_signal< sc_logic > Duplicate269_U0_src_data_stream_V_read;
    sc_signal< sc_lv<16> > Duplicate269_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > Duplicate269_U0_dst1_data_stream_V_write;
    sc_signal< sc_lv<16> > Duplicate269_U0_dst2_data_stream_V_din;
    sc_signal< sc_logic > Duplicate269_U0_dst2_data_stream_V_write;
    sc_signal< sc_logic > Duplicate270_U0_ap_start;
    sc_signal< sc_logic > Duplicate270_U0_start_full_n;
    sc_signal< sc_logic > Duplicate270_U0_ap_done;
    sc_signal< sc_logic > Duplicate270_U0_ap_continue;
    sc_signal< sc_logic > Duplicate270_U0_ap_idle;
    sc_signal< sc_logic > Duplicate270_U0_ap_ready;
    sc_signal< sc_logic > Duplicate270_U0_start_out;
    sc_signal< sc_logic > Duplicate270_U0_start_write;
    sc_signal< sc_logic > Duplicate270_U0_src_rows_V_read;
    sc_signal< sc_logic > Duplicate270_U0_src_cols_V_read;
    sc_signal< sc_logic > Duplicate270_U0_src_data_stream_V_read;
    sc_signal< sc_lv<16> > Duplicate270_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > Duplicate270_U0_dst1_data_stream_V_write;
    sc_signal< sc_lv<16> > Duplicate270_U0_dst2_data_stream_V_din;
    sc_signal< sc_logic > Duplicate270_U0_dst2_data_stream_V_write;
    sc_signal< sc_logic > Duplicate_U0_ap_start;
    sc_signal< sc_logic > Duplicate_U0_start_full_n;
    sc_signal< sc_logic > Duplicate_U0_ap_done;
    sc_signal< sc_logic > Duplicate_U0_ap_continue;
    sc_signal< sc_logic > Duplicate_U0_ap_idle;
    sc_signal< sc_logic > Duplicate_U0_ap_ready;
    sc_signal< sc_logic > Duplicate_U0_start_out;
    sc_signal< sc_logic > Duplicate_U0_start_write;
    sc_signal< sc_logic > Duplicate_U0_src_rows_V_read;
    sc_signal< sc_logic > Duplicate_U0_src_cols_V_read;
    sc_signal< sc_logic > Duplicate_U0_src_data_stream_V_read;
    sc_signal< sc_lv<16> > Duplicate_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > Duplicate_U0_dst1_data_stream_V_write;
    sc_signal< sc_lv<16> > Duplicate_U0_dst2_data_stream_V_din;
    sc_signal< sc_logic > Duplicate_U0_dst2_data_stream_V_write;
    sc_signal< sc_logic > MinMaxLoc_U0_ap_start;
    sc_signal< sc_logic > MinMaxLoc_U0_ap_done;
    sc_signal< sc_logic > MinMaxLoc_U0_ap_continue;
    sc_signal< sc_logic > MinMaxLoc_U0_ap_idle;
    sc_signal< sc_logic > MinMaxLoc_U0_ap_ready;
    sc_signal< sc_logic > MinMaxLoc_U0_src_data_stream_V_read;
    sc_signal< sc_lv<16> > MinMaxLoc_U0_min_val_out_din;
    sc_signal< sc_logic > MinMaxLoc_U0_min_val_out_write;
    sc_signal< sc_lv<16> > MinMaxLoc_U0_max_val_out_din;
    sc_signal< sc_logic > MinMaxLoc_U0_max_val_out_write;
    sc_signal< sc_logic > mat2gray_U0_ap_start;
    sc_signal< sc_logic > mat2gray_U0_ap_done;
    sc_signal< sc_logic > mat2gray_U0_ap_continue;
    sc_signal< sc_logic > mat2gray_U0_ap_idle;
    sc_signal< sc_logic > mat2gray_U0_ap_ready;
    sc_signal< sc_logic > mat2gray_U0_start_out;
    sc_signal< sc_logic > mat2gray_U0_start_write;
    sc_signal< sc_logic > mat2gray_U0_M_data_stream_V_read;
    sc_signal< sc_lv<16> > mat2gray_U0_I_data_stream_V_din;
    sc_signal< sc_logic > mat2gray_U0_I_data_stream_V_write;
    sc_signal< sc_logic > mat2gray_U0_min_value_read;
    sc_signal< sc_logic > mat2gray_U0_max_value_read;
    sc_signal< sc_logic > mean_filter_2D_U0_ap_start;
    sc_signal< sc_logic > mean_filter_2D_U0_ap_done;
    sc_signal< sc_logic > mean_filter_2D_U0_ap_continue;
    sc_signal< sc_logic > mean_filter_2D_U0_ap_idle;
    sc_signal< sc_logic > mean_filter_2D_U0_ap_ready;
    sc_signal< sc_logic > mean_filter_2D_U0_img_in_data_stream_V_read;
    sc_signal< sc_lv<16> > mean_filter_2D_U0_img_out_data_stream_V_din;
    sc_signal< sc_logic > mean_filter_2D_U0_img_out_data_stream_V_write;
    sc_signal< sc_logic > adaptive_threshold_U0_ap_start;
    sc_signal< sc_logic > adaptive_threshold_U0_ap_done;
    sc_signal< sc_logic > adaptive_threshold_U0_ap_continue;
    sc_signal< sc_logic > adaptive_threshold_U0_ap_idle;
    sc_signal< sc_logic > adaptive_threshold_U0_ap_ready;
    sc_signal< sc_logic > adaptive_threshold_U0_start_out;
    sc_signal< sc_logic > adaptive_threshold_U0_start_write;
    sc_signal< sc_logic > adaptive_threshold_U0_IN_data_stream_V_read;
    sc_signal< sc_logic > adaptive_threshold_U0_IN1_data_stream_V_read;
    sc_signal< sc_lv<32> > adaptive_threshold_U0_help_V_V_din;
    sc_signal< sc_logic > adaptive_threshold_U0_help_V_V_write;
    sc_signal< sc_logic > threshold_U0_ap_start;
    sc_signal< sc_logic > threshold_U0_ap_done;
    sc_signal< sc_logic > threshold_U0_ap_continue;
    sc_signal< sc_logic > threshold_U0_ap_idle;
    sc_signal< sc_logic > threshold_U0_ap_ready;
    sc_signal< sc_logic > threshold_U0_start_out;
    sc_signal< sc_logic > threshold_U0_start_write;
    sc_signal< sc_logic > threshold_U0_IN_data_stream_V_read;
    sc_signal< sc_lv<32> > threshold_U0_Luminance_img_V_V_din;
    sc_signal< sc_logic > threshold_U0_Luminance_img_V_V_write;
    sc_signal< sc_logic > ccl_U0_ap_start;
    sc_signal< sc_logic > ccl_U0_ap_done;
    sc_signal< sc_logic > ccl_U0_ap_continue;
    sc_signal< sc_logic > ccl_U0_ap_idle;
    sc_signal< sc_logic > ccl_U0_ap_ready;
    sc_signal< sc_logic > ccl_U0_Luminance_img_V_V_read;
    sc_signal< sc_lv<32> > ccl_U0_LI_V_V_din;
    sc_signal< sc_logic > ccl_U0_LI_V_V_write;
    sc_signal< sc_logic > AXIstream2Mat_U0_ap_start;
    sc_signal< sc_logic > AXIstream2Mat_U0_ap_done;
    sc_signal< sc_logic > AXIstream2Mat_U0_ap_continue;
    sc_signal< sc_logic > AXIstream2Mat_U0_ap_idle;
    sc_signal< sc_logic > AXIstream2Mat_U0_ap_ready;
    sc_signal< sc_logic > AXIstream2Mat_U0_start_out;
    sc_signal< sc_logic > AXIstream2Mat_U0_start_write;
    sc_signal< sc_lv<8> > AXIstream2Mat_U0_my_image_data_stream_0_V_din;
    sc_signal< sc_logic > AXIstream2Mat_U0_my_image_data_stream_0_V_write;
    sc_signal< sc_lv<8> > AXIstream2Mat_U0_my_image_data_stream_1_V_din;
    sc_signal< sc_logic > AXIstream2Mat_U0_my_image_data_stream_1_V_write;
    sc_signal< sc_lv<8> > AXIstream2Mat_U0_my_image_data_stream_2_V_din;
    sc_signal< sc_logic > AXIstream2Mat_U0_my_image_data_stream_2_V_write;
    sc_signal< sc_logic > AXIstream2Mat_U0_LI_V_V_read;
    sc_signal< sc_logic > AXIstream2Mat_U0_help_V_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_0_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_1_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_2_V_read;
    sc_signal< sc_lv<24> > Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > I_enhanced_rows_V_c_full_n;
    sc_signal< sc_lv<10> > I_enhanced_rows_V_c_dout;
    sc_signal< sc_logic > I_enhanced_rows_V_c_empty_n;
    sc_signal< sc_logic > I_enhanced_cols_V_c_full_n;
    sc_signal< sc_lv<10> > I_enhanced_cols_V_c_dout;
    sc_signal< sc_logic > I_enhanced_cols_V_c_empty_n;
    sc_signal< sc_logic > img_2_rows_V_c_full_n;
    sc_signal< sc_lv<10> > img_2_rows_V_c_dout;
    sc_signal< sc_logic > img_2_rows_V_c_empty_n;
    sc_signal< sc_logic > img_2_cols_V_c_full_n;
    sc_signal< sc_lv<10> > img_2_cols_V_c_dout;
    sc_signal< sc_logic > img_2_cols_V_c_empty_n;
    sc_signal< sc_logic > img_3_rows_V_c_full_n;
    sc_signal< sc_lv<10> > img_3_rows_V_c_dout;
    sc_signal< sc_logic > img_3_rows_V_c_empty_n;
    sc_signal< sc_logic > img_3_cols_V_c_full_n;
    sc_signal< sc_lv<10> > img_3_cols_V_c_dout;
    sc_signal< sc_logic > img_3_cols_V_c_empty_n;
    sc_signal< sc_logic > img_4_rows_V_c_full_n;
    sc_signal< sc_lv<10> > img_4_rows_V_c_dout;
    sc_signal< sc_logic > img_4_rows_V_c_empty_n;
    sc_signal< sc_logic > img_4_cols_V_c_full_n;
    sc_signal< sc_lv<10> > img_4_cols_V_c_dout;
    sc_signal< sc_logic > img_4_cols_V_c_empty_n;
    sc_signal< sc_logic > img_0_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_0_dout;
    sc_signal< sc_logic > img_0_data_stream_0_empty_n;
    sc_signal< sc_logic > img_0_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_1_dout;
    sc_signal< sc_logic > img_0_data_stream_1_empty_n;
    sc_signal< sc_logic > img_0_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_2_dout;
    sc_signal< sc_logic > img_0_data_stream_2_empty_n;
    sc_signal< sc_logic > I_enhanced_data_stre_full_n;
    sc_signal< sc_lv<16> > I_enhanced_data_stre_dout;
    sc_signal< sc_logic > I_enhanced_data_stre_empty_n;
    sc_signal< sc_logic > I_enh1_data_stream_0_full_n;
    sc_signal< sc_lv<16> > I_enh1_data_stream_0_dout;
    sc_signal< sc_logic > I_enh1_data_stream_0_empty_n;
    sc_signal< sc_logic > I_enh2_data_stream_0_full_n;
    sc_signal< sc_lv<16> > I_enh2_data_stream_0_dout;
    sc_signal< sc_logic > I_enh2_data_stream_0_empty_n;
    sc_signal< sc_logic > img_1_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_1_data_stream_0_dout;
    sc_signal< sc_logic > img_1_data_stream_0_empty_n;
    sc_signal< sc_logic > Background_data_stre_full_n;
    sc_signal< sc_lv<16> > Background_data_stre_dout;
    sc_signal< sc_logic > Background_data_stre_empty_n;
    sc_signal< sc_logic > img_2_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_2_data_stream_0_dout;
    sc_signal< sc_logic > img_2_data_stream_0_empty_n;
    sc_signal< sc_logic > img_2_rows_V_c7940_full_n;
    sc_signal< sc_lv<10> > img_2_rows_V_c7940_dout;
    sc_signal< sc_logic > img_2_rows_V_c7940_empty_n;
    sc_signal< sc_logic > img_2_cols_V_c7941_full_n;
    sc_signal< sc_lv<10> > img_2_cols_V_c7941_dout;
    sc_signal< sc_logic > img_2_cols_V_c7941_empty_n;
    sc_signal< sc_logic > img_3_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_3_data_stream_0_dout;
    sc_signal< sc_logic > img_3_data_stream_0_empty_n;
    sc_signal< sc_logic > img_4_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_4_data_stream_0_dout;
    sc_signal< sc_logic > img_4_data_stream_0_empty_n;
    sc_signal< sc_logic > img_8_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_8_data_stream_0_dout;
    sc_signal< sc_logic > img_8_data_stream_0_empty_n;
    sc_signal< sc_logic > img_9_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_9_data_stream_0_dout;
    sc_signal< sc_logic > img_9_data_stream_0_empty_n;
    sc_signal< sc_logic > img_10_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_10_data_stream_0_dout;
    sc_signal< sc_logic > img_10_data_stream_0_empty_n;
    sc_signal< sc_logic > img_11_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_11_data_stream_0_dout;
    sc_signal< sc_logic > img_11_data_stream_0_empty_n;
    sc_signal< sc_logic > min_value_c_full_n;
    sc_signal< sc_lv<16> > min_value_c_dout;
    sc_signal< sc_logic > min_value_c_empty_n;
    sc_signal< sc_logic > max_value_c_full_n;
    sc_signal< sc_lv<16> > max_value_c_dout;
    sc_signal< sc_logic > max_value_c_empty_n;
    sc_signal< sc_logic > img_5_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_5_data_stream_0_dout;
    sc_signal< sc_logic > img_5_data_stream_0_empty_n;
    sc_signal< sc_logic > img_6_data_stream_0_full_n;
    sc_signal< sc_lv<16> > img_6_data_stream_0_dout;
    sc_signal< sc_logic > img_6_data_stream_0_empty_n;
    sc_signal< sc_logic > help_V_V_full_n;
    sc_signal< sc_lv<32> > help_V_V_dout;
    sc_signal< sc_logic > help_V_V_empty_n;
    sc_signal< sc_logic > Luminance_img_V_V_full_n;
    sc_signal< sc_lv<32> > Luminance_img_V_V_dout;
    sc_signal< sc_logic > Luminance_img_V_V_empty_n;
    sc_signal< sc_logic > LI_V_V_full_n;
    sc_signal< sc_lv<32> > LI_V_V_dout;
    sc_signal< sc_logic > LI_V_V_empty_n;
    sc_signal< sc_logic > img_12_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_12_data_stream_0_dout;
    sc_signal< sc_logic > img_12_data_stream_0_empty_n;
    sc_signal< sc_logic > img_12_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_12_data_stream_1_dout;
    sc_signal< sc_logic > img_12_data_stream_1_empty_n;
    sc_signal< sc_logic > img_12_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_12_data_stream_2_dout;
    sc_signal< sc_logic > img_12_data_stream_2_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > ap_sync_reg_Block_codeRepl7833_p_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_Block_codeRepl7833_p_U0_ap_ready;
    sc_signal< sc_lv<2> > Block_codeRepl7833_p_U0_ap_ready_count;
    sc_signal< sc_logic > ap_sync_reg_AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_lv<2> > AXIvideo2Mat_U0_ap_ready_count;
    sc_signal< sc_lv<1> > start_for_Duplicate266_U0_din;
    sc_signal< sc_logic > start_for_Duplicate266_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Duplicate266_U0_dout;
    sc_signal< sc_logic > start_for_Duplicate266_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_AddWeighted_U0_din;
    sc_signal< sc_logic > start_for_AddWeighted_U0_full_n;
    sc_signal< sc_lv<1> > start_for_AddWeighted_U0_dout;
    sc_signal< sc_logic > start_for_AddWeighted_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Duplicate270_U0_din;
    sc_signal< sc_logic > start_for_Duplicate270_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Duplicate270_U0_dout;
    sc_signal< sc_logic > start_for_Duplicate270_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Duplicate_U0_din;
    sc_signal< sc_logic > start_for_Duplicate_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Duplicate_U0_dout;
    sc_signal< sc_logic > start_for_Duplicate_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_ex_enhancement_U0_din;
    sc_signal< sc_logic > start_for_ex_enhancement_U0_full_n;
    sc_signal< sc_lv<1> > start_for_ex_enhancement_U0_dout;
    sc_signal< sc_logic > start_for_ex_enhancement_U0_empty_n;
    sc_signal< sc_logic > ex_enhancement_U0_start_full_n;
    sc_signal< sc_logic > ex_enhancement_U0_start_write;
    sc_signal< sc_lv<1> > start_for_Loop_loop_height_pro_U0_din;
    sc_signal< sc_logic > start_for_Loop_loop_height_pro_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_loop_height_pro_U0_dout;
    sc_signal< sc_logic > start_for_Loop_loop_height_pro_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Loop_loop_height_pro_1_U0_din;
    sc_signal< sc_logic > start_for_Loop_loop_height_pro_1_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_loop_height_pro_1_U0_dout;
    sc_signal< sc_logic > start_for_Loop_loop_height_pro_1_U0_empty_n;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_start_full_n;
    sc_signal< sc_logic > Loop_loop_height_pro_1_U0_start_write;
    sc_signal< sc_lv<1> > start_for_Duplicate269_U0_din;
    sc_signal< sc_logic > start_for_Duplicate269_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Duplicate269_U0_dout;
    sc_signal< sc_logic > start_for_Duplicate269_U0_empty_n;
    sc_signal< sc_logic > Duplicate269_U0_start_full_n;
    sc_signal< sc_logic > Duplicate269_U0_start_write;
    sc_signal< sc_lv<1> > start_for_mat2gray_U0_din;
    sc_signal< sc_logic > start_for_mat2gray_U0_full_n;
    sc_signal< sc_lv<1> > start_for_mat2gray_U0_dout;
    sc_signal< sc_logic > start_for_mat2gray_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_adaptive_threshold_U0_din;
    sc_signal< sc_logic > start_for_adaptive_threshold_U0_full_n;
    sc_signal< sc_lv<1> > start_for_adaptive_threshold_U0_dout;
    sc_signal< sc_logic > start_for_adaptive_threshold_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_MinMaxLoc_U0_din;
    sc_signal< sc_logic > start_for_MinMaxLoc_U0_full_n;
    sc_signal< sc_lv<1> > start_for_MinMaxLoc_U0_dout;
    sc_signal< sc_logic > start_for_MinMaxLoc_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_threshold_U0_din;
    sc_signal< sc_logic > start_for_threshold_U0_full_n;
    sc_signal< sc_lv<1> > start_for_threshold_U0_dout;
    sc_signal< sc_logic > start_for_threshold_U0_empty_n;
    sc_signal< sc_logic > MinMaxLoc_U0_start_full_n;
    sc_signal< sc_logic > MinMaxLoc_U0_start_write;
    sc_signal< sc_lv<1> > start_for_mean_filter_2D_U0_din;
    sc_signal< sc_logic > start_for_mean_filter_2D_U0_full_n;
    sc_signal< sc_lv<1> > start_for_mean_filter_2D_U0_dout;
    sc_signal< sc_logic > start_for_mean_filter_2D_U0_empty_n;
    sc_signal< sc_logic > mean_filter_2D_U0_start_full_n;
    sc_signal< sc_logic > mean_filter_2D_U0_start_write;
    sc_signal< sc_lv<1> > start_for_AXIstream2Mat_U0_din;
    sc_signal< sc_logic > start_for_AXIstream2Mat_U0_full_n;
    sc_signal< sc_lv<1> > start_for_AXIstream2Mat_U0_dout;
    sc_signal< sc_logic > start_for_AXIstream2Mat_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_ccl_U0_din;
    sc_signal< sc_logic > start_for_ccl_U0_full_n;
    sc_signal< sc_lv<1> > start_for_ccl_U0_dout;
    sc_signal< sc_logic > start_for_ccl_U0_empty_n;
    sc_signal< sc_logic > ccl_U0_start_full_n;
    sc_signal< sc_logic > ccl_U0_start_write;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_AXIstream2Mat_U0_ap_continue();
    void thread_AXIstream2Mat_U0_ap_start();
    void thread_AXIvideo2Mat_U0_ap_continue();
    void thread_AXIvideo2Mat_U0_ap_start();
    void thread_AddWeighted_U0_ap_continue();
    void thread_AddWeighted_U0_ap_start();
    void thread_Block_codeRepl7833_p_U0_ap_continue();
    void thread_Block_codeRepl7833_p_U0_ap_start();
    void thread_Block_codeRepl7833_p_U0_start_full_n();
    void thread_Duplicate266_U0_ap_continue();
    void thread_Duplicate266_U0_ap_start();
    void thread_Duplicate269_U0_ap_continue();
    void thread_Duplicate269_U0_ap_start();
    void thread_Duplicate269_U0_start_full_n();
    void thread_Duplicate269_U0_start_write();
    void thread_Duplicate270_U0_ap_continue();
    void thread_Duplicate270_U0_ap_start();
    void thread_Duplicate270_U0_start_full_n();
    void thread_Duplicate_U0_ap_continue();
    void thread_Duplicate_U0_ap_start();
    void thread_Duplicate_U0_start_full_n();
    void thread_INPUT_STREAM_TREADY();
    void thread_Loop_loop_height_pro_1_U0_ap_continue();
    void thread_Loop_loop_height_pro_1_U0_ap_start();
    void thread_Loop_loop_height_pro_1_U0_start_full_n();
    void thread_Loop_loop_height_pro_1_U0_start_write();
    void thread_Loop_loop_height_pro_U0_ap_continue();
    void thread_Loop_loop_height_pro_U0_ap_start();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_ap_start();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_MinMaxLoc_U0_ap_continue();
    void thread_MinMaxLoc_U0_ap_start();
    void thread_MinMaxLoc_U0_start_full_n();
    void thread_MinMaxLoc_U0_start_write();
    void thread_OUTPUT_STREAM_TDATA();
    void thread_OUTPUT_STREAM_TDEST();
    void thread_OUTPUT_STREAM_TID();
    void thread_OUTPUT_STREAM_TKEEP();
    void thread_OUTPUT_STREAM_TLAST();
    void thread_OUTPUT_STREAM_TSTRB();
    void thread_OUTPUT_STREAM_TUSER();
    void thread_OUTPUT_STREAM_TVALID();
    void thread_adaptive_threshold_U0_ap_continue();
    void thread_adaptive_threshold_U0_ap_start();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_AXIvideo2Mat_U0_ap_ready();
    void thread_ap_sync_Block_codeRepl7833_p_U0_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_ccl_U0_ap_continue();
    void thread_ccl_U0_ap_start();
    void thread_ccl_U0_start_full_n();
    void thread_ccl_U0_start_write();
    void thread_ex_enhancement_U0_ap_continue();
    void thread_ex_enhancement_U0_ap_start();
    void thread_ex_enhancement_U0_start_full_n();
    void thread_ex_enhancement_U0_start_write();
    void thread_mat2gray_U0_ap_continue();
    void thread_mat2gray_U0_ap_start();
    void thread_mean_filter_2D_U0_ap_continue();
    void thread_mean_filter_2D_U0_ap_start();
    void thread_mean_filter_2D_U0_start_full_n();
    void thread_mean_filter_2D_U0_start_write();
    void thread_start_for_AXIstream2Mat_U0_din();
    void thread_start_for_AddWeighted_U0_din();
    void thread_start_for_Duplicate266_U0_din();
    void thread_start_for_Duplicate269_U0_din();
    void thread_start_for_Duplicate270_U0_din();
    void thread_start_for_Duplicate_U0_din();
    void thread_start_for_Loop_loop_height_pro_1_U0_din();
    void thread_start_for_Loop_loop_height_pro_U0_din();
    void thread_start_for_Mat2AXIvideo_U0_din();
    void thread_start_for_MinMaxLoc_U0_din();
    void thread_start_for_adaptive_threshold_U0_din();
    void thread_start_for_ccl_U0_din();
    void thread_start_for_ex_enhancement_U0_din();
    void thread_start_for_mat2gray_U0_din();
    void thread_start_for_mean_filter_2D_U0_din();
    void thread_start_for_threshold_U0_din();
    void thread_threshold_U0_ap_continue();
    void thread_threshold_U0_ap_start();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
