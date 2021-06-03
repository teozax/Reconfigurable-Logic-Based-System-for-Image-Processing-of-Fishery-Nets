-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity threshold is
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
    IN_data_stream_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    IN_data_stream_V_empty_n : IN STD_LOGIC;
    IN_data_stream_V_read : OUT STD_LOGIC;
    Luminance_img_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    Luminance_img_V_V_full_n : IN STD_LOGIC;
    Luminance_img_V_V_write : OUT STD_LOGIC );
end;


architecture behav of threshold is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv17_1FA40 : STD_LOGIC_VECTOR (16 downto 0) := "11111101001000000";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_800C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000001000000000001100";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal IN_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln887_reg_118 : STD_LOGIC_VECTOR (0 downto 0);
    signal Luminance_img_V_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln887_reg_118_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_69 : STD_LOGIC_VECTOR (16 downto 0);
    signal icmp_ln887_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln887_fu_86_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal icmp_ln1497_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_reg_127 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal pix_V_fu_92_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal pix_V_1_fu_106_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_69_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln887_fu_80_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten_reg_69 <= add_ln887_fu_86_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_69 <= ap_const_lv17_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1497_reg_127 <= icmp_ln1497_fu_100_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln887_reg_118 <= icmp_ln887_fu_80_p2;
                icmp_ln887_reg_118_pp0_iter1_reg <= icmp_ln887_reg_118;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, icmp_ln887_fu_80_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln887_fu_80_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln887_fu_80_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    IN_data_stream_V_blk_n_assign_proc : process(IN_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln887_reg_118)
    begin
        if (((icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_data_stream_V_blk_n <= IN_data_stream_V_empty_n;
        else 
            IN_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    IN_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln887_reg_118, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            IN_data_stream_V_read <= ap_const_logic_1;
        else 
            IN_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;


    Luminance_img_V_V_blk_n_assign_proc : process(Luminance_img_V_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln887_reg_118_pp0_iter1_reg)
    begin
        if (((icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Luminance_img_V_V_blk_n <= Luminance_img_V_V_full_n;
        else 
            Luminance_img_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    Luminance_img_V_V_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pix_V_1_fu_106_p3),32));

    Luminance_img_V_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln887_reg_118_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            Luminance_img_V_V_write <= ap_const_logic_1;
        else 
            Luminance_img_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    add_ln887_fu_86_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_69) + unsigned(ap_const_lv17_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(IN_data_stream_V_empty_n, Luminance_img_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln887_reg_118, ap_enable_reg_pp0_iter2, icmp_ln887_reg_118_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = Luminance_img_V_V_full_n) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_logic_0 = IN_data_stream_V_empty_n) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(IN_data_stream_V_empty_n, Luminance_img_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln887_reg_118, ap_enable_reg_pp0_iter2, icmp_ln887_reg_118_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = Luminance_img_V_V_full_n) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_logic_0 = IN_data_stream_V_empty_n) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(IN_data_stream_V_empty_n, Luminance_img_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln887_reg_118, ap_enable_reg_pp0_iter2, icmp_ln887_reg_118_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = Luminance_img_V_V_full_n) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_logic_0 = IN_data_stream_V_empty_n) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(IN_data_stream_V_empty_n, icmp_ln887_reg_118)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((icmp_ln887_reg_118 = ap_const_lv1_0) and (ap_const_logic_0 = IN_data_stream_V_empty_n));
    end process;


    ap_block_state4_pp0_stage0_iter2_assign_proc : process(Luminance_img_V_V_full_n, icmp_ln887_reg_118_pp0_iter1_reg)
    begin
                ap_block_state4_pp0_stage0_iter2 <= ((icmp_ln887_reg_118_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_0 = Luminance_img_V_V_full_n));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln887_fu_80_p2)
    begin
        if ((icmp_ln887_fu_80_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    icmp_ln1497_fu_100_p2 <= "1" when (signed(pix_V_fu_92_p3) < signed(ap_const_lv32_800C)) else "0";
    icmp_ln887_fu_80_p2 <= "1" when (indvar_flatten_reg_69 = ap_const_lv17_1FA40) else "0";

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    pix_V_1_fu_106_p3 <= (icmp_ln1497_reg_127 & ap_const_lv16_0);
    pix_V_fu_92_p3 <= (IN_data_stream_V_dout & ap_const_lv16_0);

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
