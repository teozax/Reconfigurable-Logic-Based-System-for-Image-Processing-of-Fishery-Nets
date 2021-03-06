// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AddWeighted (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        src1_data_stream_V_dout,
        src1_data_stream_V_empty_n,
        src1_data_stream_V_read,
        src2_data_stream_V_dout,
        src2_data_stream_V_empty_n,
        src2_data_stream_V_read,
        dst_rows_V_dout,
        dst_rows_V_empty_n,
        dst_rows_V_read,
        dst_cols_V_dout,
        dst_cols_V_empty_n,
        dst_cols_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write,
        dst_rows_V_out_din,
        dst_rows_V_out_full_n,
        dst_rows_V_out_write,
        dst_cols_V_out_din,
        dst_cols_V_out_full_n,
        dst_cols_V_out_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] src1_data_stream_V_dout;
input   src1_data_stream_V_empty_n;
output   src1_data_stream_V_read;
input  [15:0] src2_data_stream_V_dout;
input   src2_data_stream_V_empty_n;
output   src2_data_stream_V_read;
input  [9:0] dst_rows_V_dout;
input   dst_rows_V_empty_n;
output   dst_rows_V_read;
input  [9:0] dst_cols_V_dout;
input   dst_cols_V_empty_n;
output   dst_cols_V_read;
output  [15:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;
output  [9:0] dst_rows_V_out_din;
input   dst_rows_V_out_full_n;
output   dst_rows_V_out_write;
output  [9:0] dst_cols_V_out_din;
input   dst_cols_V_out_full_n;
output   dst_cols_V_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg src1_data_stream_V_read;
reg src2_data_stream_V_read;
reg dst_rows_V_read;
reg dst_cols_V_read;
reg dst_data_stream_V_write;
reg dst_rows_V_out_write;
reg dst_cols_V_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    src1_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln355_reg_268;
reg    src2_data_stream_V_blk_n;
reg    dst_rows_V_blk_n;
reg    dst_cols_V_blk_n;
reg    dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln355_reg_268_pp0_iter1_reg;
reg    dst_rows_V_out_blk_n;
reg    dst_cols_V_out_blk_n;
reg   [31:0] t_V_12_reg_138;
wire  signed [31:0] rows_V_fu_149_p1;
reg  signed [31:0] rows_V_reg_249;
reg    ap_block_state1;
wire  signed [31:0] cols_V_fu_153_p1;
reg  signed [31:0] cols_V_reg_254;
wire   [0:0] icmp_ln354_fu_157_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_162_p2;
reg   [31:0] i_V_reg_263;
wire   [0:0] icmp_ln355_fu_168_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] j_V_fu_173_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [15:0] p_Val2_s_fu_241_p3;
reg   [15:0] p_Val2_s_reg_277;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [31:0] t_V_reg_127;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire  signed [9:0] rows_V_fu_149_p0;
wire  signed [9:0] cols_V_fu_153_p0;
wire   [16:0] zext_ln215_1_fu_183_p1;
wire   [16:0] zext_ln215_fu_179_p1;
wire   [16:0] sum_V_fu_187_p2;
wire   [0:0] p_Result_s_fu_193_p3;
wire   [0:0] tmp_84_fu_207_p3;
wire   [0:0] xor_ln785_fu_215_p2;
wire   [0:0] overflow_fu_221_p2;
wire   [0:0] or_ln340_fu_235_p2;
wire   [15:0] select_ln340_fu_227_p3;
wire   [15:0] p_Val2_82_fu_201_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln354_fu_157_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln354_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((icmp_ln354_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln355_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_12_reg_138 <= j_V_fu_173_p2;
    end else if (((icmp_ln354_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_12_reg_138 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_127 <= i_V_reg_263;
    end else if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_127 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_V_reg_254 <= cols_V_fu_153_p1;
        rows_V_reg_249 <= rows_V_fu_149_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_263 <= i_V_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln355_reg_268 <= icmp_ln355_fu_168_p2;
        icmp_ln355_reg_268_pp0_iter1_reg <= icmp_ln355_reg_268;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln355_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_s_reg_277 <= p_Val2_s_fu_241_p3;
    end
end

always @ (*) begin
    if ((icmp_ln355_fu_168_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln354_fu_157_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_blk_n = dst_cols_V_empty_n;
    end else begin
        dst_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_out_blk_n = dst_cols_V_out_full_n;
    end else begin
        dst_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_out_write = 1'b1;
    end else begin
        dst_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_read = 1'b1;
    end else begin
        dst_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        dst_data_stream_V_blk_n = dst_data_stream_V_full_n;
    end else begin
        dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_data_stream_V_write = 1'b1;
    end else begin
        dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_blk_n = dst_rows_V_empty_n;
    end else begin
        dst_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_out_blk_n = dst_rows_V_out_full_n;
    end else begin
        dst_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_out_write = 1'b1;
    end else begin
        dst_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_read = 1'b1;
    end else begin
        dst_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln354_fu_157_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src1_data_stream_V_blk_n = src1_data_stream_V_empty_n;
    end else begin
        src1_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src1_data_stream_V_read = 1'b1;
    end else begin
        src1_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src2_data_stream_V_blk_n = src2_data_stream_V_empty_n;
    end else begin
        src2_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln355_reg_268 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src2_data_stream_V_read = 1'b1;
    end else begin
        src2_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln354_fu_157_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln355_fu_168_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln355_fu_168_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln355_reg_268 == 1'd0) & (src2_data_stream_V_empty_n == 1'b0)) | ((icmp_ln355_reg_268 == 1'd0) & (src1_data_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln355_reg_268 == 1'd0) & (src2_data_stream_V_empty_n == 1'b0)) | ((icmp_ln355_reg_268 == 1'd0) & (src1_data_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln355_reg_268 == 1'd0) & (src2_data_stream_V_empty_n == 1'b0)) | ((icmp_ln355_reg_268 == 1'd0) & (src1_data_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((dst_cols_V_out_full_n == 1'b0) | (dst_rows_V_out_full_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((icmp_ln355_reg_268 == 1'd0) & (src2_data_stream_V_empty_n == 1'b0)) | ((icmp_ln355_reg_268 == 1'd0) & (src1_data_stream_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((icmp_ln355_reg_268_pp0_iter1_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign cols_V_fu_153_p0 = dst_cols_V_dout;

assign cols_V_fu_153_p1 = cols_V_fu_153_p0;

assign dst_cols_V_out_din = dst_cols_V_dout;

assign dst_data_stream_V_din = p_Val2_s_reg_277;

assign dst_rows_V_out_din = dst_rows_V_dout;

assign i_V_fu_162_p2 = (t_V_reg_127 + 32'd1);

assign icmp_ln354_fu_157_p2 = ((t_V_reg_127 == rows_V_reg_249) ? 1'b1 : 1'b0);

assign icmp_ln355_fu_168_p2 = ((t_V_12_reg_138 == cols_V_reg_254) ? 1'b1 : 1'b0);

assign j_V_fu_173_p2 = (t_V_12_reg_138 + 32'd1);

assign or_ln340_fu_235_p2 = (p_Result_s_fu_193_p3 | overflow_fu_221_p2);

assign overflow_fu_221_p2 = (xor_ln785_fu_215_p2 & tmp_84_fu_207_p3);

assign p_Result_s_fu_193_p3 = sum_V_fu_187_p2[32'd16];

assign p_Val2_82_fu_201_p2 = (src1_data_stream_V_dout - src2_data_stream_V_dout);

assign p_Val2_s_fu_241_p3 = ((or_ln340_fu_235_p2[0:0] === 1'b1) ? select_ln340_fu_227_p3 : p_Val2_82_fu_201_p2);

assign rows_V_fu_149_p0 = dst_rows_V_dout;

assign rows_V_fu_149_p1 = rows_V_fu_149_p0;

assign select_ln340_fu_227_p3 = ((xor_ln785_fu_215_p2[0:0] === 1'b1) ? 16'd65535 : 16'd0);

assign start_out = real_start;

assign sum_V_fu_187_p2 = (zext_ln215_1_fu_183_p1 - zext_ln215_fu_179_p1);

assign tmp_84_fu_207_p3 = sum_V_fu_187_p2[32'd16];

assign xor_ln785_fu_215_p2 = (p_Result_s_fu_193_p3 ^ 1'd1);

assign zext_ln215_1_fu_183_p1 = src1_data_stream_V_dout;

assign zext_ln215_fu_179_p1 = src2_data_stream_V_dout;

endmodule //AddWeighted
