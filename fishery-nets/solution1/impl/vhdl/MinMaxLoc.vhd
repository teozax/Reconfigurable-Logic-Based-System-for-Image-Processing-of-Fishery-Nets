-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MinMaxLoc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_data_stream_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    src_data_stream_V_empty_n : IN STD_LOGIC;
    src_data_stream_V_read : OUT STD_LOGIC;
    min_val_out_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    min_val_out_full_n : IN STD_LOGIC;
    min_val_out_write : OUT STD_LOGIC;
    max_val_out_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    max_val_out_full_n : IN STD_LOGIC;
    max_val_out_write : OUT STD_LOGIC );
end;


architecture behav of MinMaxLoc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv9_10E : STD_LOGIC_VECTOR (8 downto 0) := "100001110";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_1E0 : STD_LOGIC_VECTOR (8 downto 0) := "111100000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal src_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln1233_reg_217 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_val_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln1232_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal max_val_out_blk_n : STD_LOGIC;
    signal t_V_5_reg_103 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal i_V_fu_138_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_V_reg_212 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln1233_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_V_fu_150_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_reg_92 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ret_V_37_fu_64 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_min_val_fu_176_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_V_fu_68 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln1237_fu_162_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln1237_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1242_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
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
                elsif ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ret_V_37_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1233_reg_217 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ret_V_37_fu_64 <= p_min_val_fu_176_p3;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ret_V_37_fu_64 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;

    ret_V_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1233_reg_217 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ret_V_fu_68 <= select_ln1237_fu_162_p3;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ret_V_fu_68 <= ap_const_lv16_FFFF;
            end if; 
        end if;
    end process;

    t_V_5_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1233_fu_144_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                t_V_5_reg_103 <= j_V_fu_150_p2;
            elsif ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_5_reg_103 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    t_V_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                t_V_reg_92 <= i_V_reg_212;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_92 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_V_reg_212 <= i_V_fu_138_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1233_reg_217 <= icmp_ln1233_fu_144_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, min_val_out_full_n, max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2, icmp_ln1233_fu_144_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1233_fu_144_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1233_fu_144_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(src_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln1233_reg_217)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln1233_reg_217 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(src_data_stream_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln1233_reg_217)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln1233_reg_217 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(min_val_out_full_n, max_val_out_full_n, icmp_ln1232_fu_132_p2)
    begin
                ap_block_state2 <= (((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(src_data_stream_V_empty_n, icmp_ln1233_reg_217)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((icmp_ln1233_reg_217 = ap_const_lv1_0) and (src_data_stream_V_empty_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln1233_fu_144_p2)
    begin
        if ((icmp_ln1233_fu_144_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, min_val_out_full_n, max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(min_val_out_full_n, max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_V_fu_138_p2 <= std_logic_vector(unsigned(t_V_reg_92) + unsigned(ap_const_lv9_1));
    icmp_ln1232_fu_132_p2 <= "1" when (t_V_reg_92 = ap_const_lv9_10E) else "0";
    icmp_ln1233_fu_144_p2 <= "1" when (t_V_5_reg_103 = ap_const_lv9_1E0) else "0";
    icmp_ln1237_fu_156_p2 <= "1" when (unsigned(src_data_stream_V_dout) < unsigned(ret_V_fu_68)) else "0";
    icmp_ln1242_fu_170_p2 <= "1" when (unsigned(src_data_stream_V_dout) > unsigned(ret_V_37_fu_64)) else "0";
    j_V_fu_150_p2 <= std_logic_vector(unsigned(t_V_5_reg_103) + unsigned(ap_const_lv9_1));

    max_val_out_blk_n_assign_proc : process(max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if (((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            max_val_out_blk_n <= max_val_out_full_n;
        else 
            max_val_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    max_val_out_din <= ret_V_37_fu_64;

    max_val_out_write_assign_proc : process(min_val_out_full_n, max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            max_val_out_write <= ap_const_logic_1;
        else 
            max_val_out_write <= ap_const_logic_0;
        end if; 
    end process;


    min_val_out_blk_n_assign_proc : process(min_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if (((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            min_val_out_blk_n <= min_val_out_full_n;
        else 
            min_val_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    min_val_out_din <= ret_V_fu_68;

    min_val_out_write_assign_proc : process(min_val_out_full_n, max_val_out_full_n, ap_CS_fsm_state2, icmp_ln1232_fu_132_p2)
    begin
        if ((not((((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (max_val_out_full_n = ap_const_logic_0)) or ((icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (min_val_out_full_n = ap_const_logic_0)))) and (icmp_ln1232_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            min_val_out_write <= ap_const_logic_1;
        else 
            min_val_out_write <= ap_const_logic_0;
        end if; 
    end process;

    p_min_val_fu_176_p3 <= 
        src_data_stream_V_dout when (icmp_ln1242_fu_170_p2(0) = '1') else 
        ret_V_37_fu_64;
    select_ln1237_fu_162_p3 <= 
        src_data_stream_V_dout when (icmp_ln1237_fu_156_p2(0) = '1') else 
        ret_V_fu_68;

    src_data_stream_V_blk_n_assign_proc : process(src_data_stream_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln1233_reg_217)
    begin
        if (((icmp_ln1233_reg_217 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_data_stream_V_blk_n <= src_data_stream_V_empty_n;
        else 
            src_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1233_reg_217, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1233_reg_217 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_data_stream_V_read <= ap_const_logic_1;
        else 
            src_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
