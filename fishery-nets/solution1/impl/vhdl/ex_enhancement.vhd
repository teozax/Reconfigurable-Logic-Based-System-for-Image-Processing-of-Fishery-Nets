-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex_enhancement is
port (
    inputImage_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    inputImage_data_stream_0_V_empty_n : IN STD_LOGIC;
    inputImage_data_stream_0_V_read : OUT STD_LOGIC;
    inputImage_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    inputImage_data_stream_1_V_empty_n : IN STD_LOGIC;
    inputImage_data_stream_1_V_read : OUT STD_LOGIC;
    inputImage_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    inputImage_data_stream_2_V_empty_n : IN STD_LOGIC;
    inputImage_data_stream_2_V_read : OUT STD_LOGIC;
    I_enhanced_data_stream_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    I_enhanced_data_stream_V_full_n : IN STD_LOGIC;
    I_enhanced_data_stream_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of ex_enhancement is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal transform_data_U0_ap_start : STD_LOGIC;
    signal transform_data_U0_ap_done : STD_LOGIC;
    signal transform_data_U0_ap_continue : STD_LOGIC;
    signal transform_data_U0_ap_idle : STD_LOGIC;
    signal transform_data_U0_ap_ready : STD_LOGIC;
    signal transform_data_U0_start_out : STD_LOGIC;
    signal transform_data_U0_start_write : STD_LOGIC;
    signal transform_data_U0_inputImage_data_stream_0_V_read : STD_LOGIC;
    signal transform_data_U0_inputImage_data_stream_1_V_read : STD_LOGIC;
    signal transform_data_U0_inputImage_data_stream_2_V_read : STD_LOGIC;
    signal transform_data_U0_I_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal transform_data_U0_I_V_V_write : STD_LOGIC;
    signal transform_data_U0_I_COPY_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal transform_data_U0_I_COPY_V_V_write : STD_LOGIC;
    signal transform_data_U0_I_2_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal transform_data_U0_I_2_V_V_write : STD_LOGIC;
    signal transform_data_U0_ONES_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal transform_data_U0_ONES_V_V_write : STD_LOGIC;
    signal guidedfilter204_U0_I_enhanced_data_stream_V_din : STD_LOGIC_VECTOR (15 downto 0);
    signal guidedfilter204_U0_I_enhanced_data_stream_V_write : STD_LOGIC;
    signal guidedfilter204_U0_ONES_V_V_read : STD_LOGIC;
    signal guidedfilter204_U0_I_V_V_read : STD_LOGIC;
    signal guidedfilter204_U0_I_2_V_V_read : STD_LOGIC;
    signal guidedfilter204_U0_I_COPY_V_V_read : STD_LOGIC;
    signal guidedfilter204_U0_ap_start : STD_LOGIC;
    signal guidedfilter204_U0_ap_done : STD_LOGIC;
    signal guidedfilter204_U0_ap_ready : STD_LOGIC;
    signal guidedfilter204_U0_ap_idle : STD_LOGIC;
    signal guidedfilter204_U0_ap_continue : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal I_V_V_full_n : STD_LOGIC;
    signal I_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal I_V_V_empty_n : STD_LOGIC;
    signal I_COPY_V_V_full_n : STD_LOGIC;
    signal I_COPY_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal I_COPY_V_V_empty_n : STD_LOGIC;
    signal I_2_V_V_full_n : STD_LOGIC;
    signal I_2_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal I_2_V_V_empty_n : STD_LOGIC;
    signal ONES_V_V_full_n : STD_LOGIC;
    signal ONES_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal ONES_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_guidedfilter204_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_guidedfilter204_U0_full_n : STD_LOGIC;
    signal start_for_guidedfilter204_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_guidedfilter204_U0_empty_n : STD_LOGIC;
    signal guidedfilter204_U0_start_full_n : STD_LOGIC;
    signal guidedfilter204_U0_start_write : STD_LOGIC;

    component transform_data IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        inputImage_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        inputImage_data_stream_0_V_empty_n : IN STD_LOGIC;
        inputImage_data_stream_0_V_read : OUT STD_LOGIC;
        inputImage_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        inputImage_data_stream_1_V_empty_n : IN STD_LOGIC;
        inputImage_data_stream_1_V_read : OUT STD_LOGIC;
        inputImage_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        inputImage_data_stream_2_V_empty_n : IN STD_LOGIC;
        inputImage_data_stream_2_V_read : OUT STD_LOGIC;
        I_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        I_V_V_full_n : IN STD_LOGIC;
        I_V_V_write : OUT STD_LOGIC;
        I_COPY_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        I_COPY_V_V_full_n : IN STD_LOGIC;
        I_COPY_V_V_write : OUT STD_LOGIC;
        I_2_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        I_2_V_V_full_n : IN STD_LOGIC;
        I_2_V_V_write : OUT STD_LOGIC;
        ONES_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        ONES_V_V_full_n : IN STD_LOGIC;
        ONES_V_V_write : OUT STD_LOGIC );
    end component;


    component guidedfilter204 IS
    port (
        I_enhanced_data_stream_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        I_enhanced_data_stream_V_full_n : IN STD_LOGIC;
        I_enhanced_data_stream_V_write : OUT STD_LOGIC;
        ONES_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        ONES_V_V_empty_n : IN STD_LOGIC;
        ONES_V_V_read : OUT STD_LOGIC;
        I_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        I_V_V_empty_n : IN STD_LOGIC;
        I_V_V_read : OUT STD_LOGIC;
        I_2_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        I_2_V_V_empty_n : IN STD_LOGIC;
        I_2_V_V_read : OUT STD_LOGIC;
        I_COPY_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        I_COPY_V_V_empty_n : IN STD_LOGIC;
        I_COPY_V_V_read : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_guidedfcXB IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    transform_data_U0 : component transform_data
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => transform_data_U0_ap_start,
        start_full_n => start_for_guidedfilter204_U0_full_n,
        ap_done => transform_data_U0_ap_done,
        ap_continue => transform_data_U0_ap_continue,
        ap_idle => transform_data_U0_ap_idle,
        ap_ready => transform_data_U0_ap_ready,
        start_out => transform_data_U0_start_out,
        start_write => transform_data_U0_start_write,
        inputImage_data_stream_0_V_dout => inputImage_data_stream_0_V_dout,
        inputImage_data_stream_0_V_empty_n => inputImage_data_stream_0_V_empty_n,
        inputImage_data_stream_0_V_read => transform_data_U0_inputImage_data_stream_0_V_read,
        inputImage_data_stream_1_V_dout => inputImage_data_stream_1_V_dout,
        inputImage_data_stream_1_V_empty_n => inputImage_data_stream_1_V_empty_n,
        inputImage_data_stream_1_V_read => transform_data_U0_inputImage_data_stream_1_V_read,
        inputImage_data_stream_2_V_dout => inputImage_data_stream_2_V_dout,
        inputImage_data_stream_2_V_empty_n => inputImage_data_stream_2_V_empty_n,
        inputImage_data_stream_2_V_read => transform_data_U0_inputImage_data_stream_2_V_read,
        I_V_V_din => transform_data_U0_I_V_V_din,
        I_V_V_full_n => I_V_V_full_n,
        I_V_V_write => transform_data_U0_I_V_V_write,
        I_COPY_V_V_din => transform_data_U0_I_COPY_V_V_din,
        I_COPY_V_V_full_n => I_COPY_V_V_full_n,
        I_COPY_V_V_write => transform_data_U0_I_COPY_V_V_write,
        I_2_V_V_din => transform_data_U0_I_2_V_V_din,
        I_2_V_V_full_n => I_2_V_V_full_n,
        I_2_V_V_write => transform_data_U0_I_2_V_V_write,
        ONES_V_V_din => transform_data_U0_ONES_V_V_din,
        ONES_V_V_full_n => ONES_V_V_full_n,
        ONES_V_V_write => transform_data_U0_ONES_V_V_write);

    guidedfilter204_U0 : component guidedfilter204
    port map (
        I_enhanced_data_stream_V_din => guidedfilter204_U0_I_enhanced_data_stream_V_din,
        I_enhanced_data_stream_V_full_n => I_enhanced_data_stream_V_full_n,
        I_enhanced_data_stream_V_write => guidedfilter204_U0_I_enhanced_data_stream_V_write,
        ONES_V_V_dout => ONES_V_V_dout,
        ONES_V_V_empty_n => ONES_V_V_empty_n,
        ONES_V_V_read => guidedfilter204_U0_ONES_V_V_read,
        I_V_V_dout => I_V_V_dout,
        I_V_V_empty_n => I_V_V_empty_n,
        I_V_V_read => guidedfilter204_U0_I_V_V_read,
        I_2_V_V_dout => I_2_V_V_dout,
        I_2_V_V_empty_n => I_2_V_V_empty_n,
        I_2_V_V_read => guidedfilter204_U0_I_2_V_V_read,
        I_COPY_V_V_dout => I_COPY_V_V_dout,
        I_COPY_V_V_empty_n => I_COPY_V_V_empty_n,
        I_COPY_V_V_read => guidedfilter204_U0_I_COPY_V_V_read,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => guidedfilter204_U0_ap_start,
        ap_done => guidedfilter204_U0_ap_done,
        ap_ready => guidedfilter204_U0_ap_ready,
        ap_idle => guidedfilter204_U0_ap_idle,
        ap_continue => guidedfilter204_U0_ap_continue);

    I_V_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => transform_data_U0_I_V_V_din,
        if_full_n => I_V_V_full_n,
        if_write => transform_data_U0_I_V_V_write,
        if_dout => I_V_V_dout,
        if_empty_n => I_V_V_empty_n,
        if_read => guidedfilter204_U0_I_V_V_read);

    I_COPY_V_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => transform_data_U0_I_COPY_V_V_din,
        if_full_n => I_COPY_V_V_full_n,
        if_write => transform_data_U0_I_COPY_V_V_write,
        if_dout => I_COPY_V_V_dout,
        if_empty_n => I_COPY_V_V_empty_n,
        if_read => guidedfilter204_U0_I_COPY_V_V_read);

    I_2_V_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => transform_data_U0_I_2_V_V_din,
        if_full_n => I_2_V_V_full_n,
        if_write => transform_data_U0_I_2_V_V_write,
        if_dout => I_2_V_V_dout,
        if_empty_n => I_2_V_V_empty_n,
        if_read => guidedfilter204_U0_I_2_V_V_read);

    ONES_V_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => transform_data_U0_ONES_V_V_din,
        if_full_n => ONES_V_V_full_n,
        if_write => transform_data_U0_ONES_V_V_write,
        if_dout => ONES_V_V_dout,
        if_empty_n => ONES_V_V_empty_n,
        if_read => guidedfilter204_U0_ONES_V_V_read);

    start_for_guidedfcXB_U : component start_for_guidedfcXB
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_guidedfilter204_U0_din,
        if_full_n => start_for_guidedfilter204_U0_full_n,
        if_write => transform_data_U0_start_write,
        if_dout => start_for_guidedfilter204_U0_dout,
        if_empty_n => start_for_guidedfilter204_U0_empty_n,
        if_read => guidedfilter204_U0_ap_ready);




    I_enhanced_data_stream_V_din <= guidedfilter204_U0_I_enhanced_data_stream_V_din;
    I_enhanced_data_stream_V_write <= guidedfilter204_U0_I_enhanced_data_stream_V_write;
    ap_done <= guidedfilter204_U0_ap_done;
    ap_idle <= (transform_data_U0_ap_idle and guidedfilter204_U0_ap_idle);
    ap_ready <= transform_data_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= guidedfilter204_U0_ap_done;
    ap_sync_ready <= transform_data_U0_ap_ready;
    guidedfilter204_U0_ap_continue <= ap_continue;
    guidedfilter204_U0_ap_start <= start_for_guidedfilter204_U0_empty_n;
    guidedfilter204_U0_start_full_n <= ap_const_logic_1;
    guidedfilter204_U0_start_write <= ap_const_logic_0;
    inputImage_data_stream_0_V_read <= transform_data_U0_inputImage_data_stream_0_V_read;
    inputImage_data_stream_1_V_read <= transform_data_U0_inputImage_data_stream_1_V_read;
    inputImage_data_stream_2_V_read <= transform_data_U0_inputImage_data_stream_2_V_read;
    start_for_guidedfilter204_U0_din <= (0=>ap_const_logic_1, others=>'-');
    transform_data_U0_ap_continue <= ap_const_logic_1;
    transform_data_U0_ap_start <= ap_start;
end behav;
