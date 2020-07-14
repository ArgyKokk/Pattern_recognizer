-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "02/15/2019 11:31:19"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pattern_recogniser_str IS
    PORT (
	clk : IN std_logic;
	data : IN std_logic;
	reset : IN std_logic;
	seg1 : OUT std_logic_vector(0 TO 6);
	seg2 : OUT std_logic_vector(0 TO 6)
	);
END pattern_recogniser_str;

-- Design Ports Information
-- seg1[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pattern_recogniser_str IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_seg1 : std_logic_vector(0 TO 6);
SIGNAL ww_seg2 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \u1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \u1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|matchValue~q\ : std_logic;
SIGNAL \u1|match~combout\ : std_logic;
SIGNAL \u2|Add0~29_sumout\ : std_logic;
SIGNAL \u2|Add0~30\ : std_logic;
SIGNAL \u2|Add0~33_sumout\ : std_logic;
SIGNAL \u2|Add0~34\ : std_logic;
SIGNAL \u2|Add0~25_sumout\ : std_logic;
SIGNAL \u2|Add0~26\ : std_logic;
SIGNAL \u2|Add0~21_sumout\ : std_logic;
SIGNAL \u2|Add0~22\ : std_logic;
SIGNAL \u2|Add0~17_sumout\ : std_logic;
SIGNAL \u2|Add0~18\ : std_logic;
SIGNAL \u2|Add0~13_sumout\ : std_logic;
SIGNAL \u2|Add0~14\ : std_logic;
SIGNAL \u2|Add0~9_sumout\ : std_logic;
SIGNAL \u2|Add0~10\ : std_logic;
SIGNAL \u2|Add0~5_sumout\ : std_logic;
SIGNAL \u2|Add0~6\ : std_logic;
SIGNAL \u2|Add0~1_sumout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[18]~18_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[22]~10_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u2|bcd1~2_combout\ : std_logic;
SIGNAL \u2|bcd1~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \u2|bcd1~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[32]~0_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[31]~14_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|StageOut[30]~19_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~26_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~22_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~18_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~14_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~10_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \u2|bcd1~0_combout\ : std_logic;
SIGNAL \u2|bcd1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u3|Mux6~0_combout\ : std_logic;
SIGNAL \u3|Mux5~0_combout\ : std_logic;
SIGNAL \u3|Mux4~0_combout\ : std_logic;
SIGNAL \u3|Mux3~0_combout\ : std_logic;
SIGNAL \u2|bcd1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u3|Mux2~0_combout\ : std_logic;
SIGNAL \u3|Mux1~0_combout\ : std_logic;
SIGNAL \u3|Mux0~0_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[60]~3_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[59]~16_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[58]~22_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[56]~30_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[56]~33_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~42_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~34_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~30_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~22_cout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \u2|bcd2~1_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \u2|bcd2~2_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \u2|bcd2~3_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \u2|bcd2~0_combout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux4~0_combout\ : std_logic;
SIGNAL \u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|Mux0~0_combout\ : std_logic;
SIGNAL \u2|bcd1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|bcd2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|trigger\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u2|ALT_INV_bcd1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_bcd1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data~input_o\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~32_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~31_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~28_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[37]~27_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~26_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~25_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~24_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~23_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~20_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~19_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~18_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~17_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~19_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~18_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~17_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~12_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~11_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~16_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~15_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~14_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~13_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~9_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~8_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~6_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~5_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~4_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~12_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~10_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~9_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~7_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~2_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~1_combout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_trigger\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|ALT_INV_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~2_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~1_combout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_matchValue~q\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_bcd2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_bcd1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data <= data;
ww_reset <= reset;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u2|ALT_INV_bcd1[2]~DUPLICATE_q\ <= NOT \u2|bcd1[2]~DUPLICATE_q\;
\u2|ALT_INV_bcd1[0]~DUPLICATE_q\ <= NOT \u2|bcd1[0]~DUPLICATE_q\;
\ALT_INV_data~input_o\ <= NOT \data~input_o\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[56]~33_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~32_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~31_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[56]~30_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~28_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[37]~27_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~26_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~25_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~24_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~23_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[58]~22_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~20_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~19_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~18_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~17_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~19_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[30]~19_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~18_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[18]~18_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~17_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[59]~16_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~12_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~11_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~16_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~15_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~14_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[31]~14_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~13_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~9_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~8_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~6_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~5_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~4_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[60]~3_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~12_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~10_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[22]~10_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~9_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~7_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~2_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~1_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\ <= NOT \u2|Div0|auto_generated|divider|divider|StageOut[32]~0_combout\;
\u2|ALT_INV_trigger\(1) <= NOT \u2|trigger\(1);
\u2|ALT_INV_trigger\(0) <= NOT \u2|trigger\(0);
\u1|ALT_INV_Q\(2) <= NOT \u1|Q\(2);
\u1|ALT_INV_Q\(1) <= NOT \u1|Q\(1);
\u1|ALT_INV_Q\(0) <= NOT \u1|Q\(0);
\u2|ALT_INV_trigger\(2) <= NOT \u2|trigger\(2);
\u2|ALT_INV_trigger\(3) <= NOT \u2|trigger\(3);
\u2|ALT_INV_trigger\(4) <= NOT \u2|trigger\(4);
\u2|ALT_INV_trigger\(5) <= NOT \u2|trigger\(5);
\u2|ALT_INV_trigger\(6) <= NOT \u2|trigger\(6);
\u2|ALT_INV_trigger\(7) <= NOT \u2|trigger\(7);
\u2|ALT_INV_trigger\(8) <= NOT \u2|trigger\(8);
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~2_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~1_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\ <= NOT \u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\;
\u1|ALT_INV_matchValue~q\ <= NOT \u1|matchValue~q\;
\u2|ALT_INV_LessThan0~1_combout\ <= NOT \u2|LessThan0~1_combout\;
\u2|ALT_INV_LessThan0~0_combout\ <= NOT \u2|LessThan0~0_combout\;
\u4|ALT_INV_Mux1~0_combout\ <= NOT \u4|Mux1~0_combout\;
\u4|ALT_INV_Mux2~0_combout\ <= NOT \u4|Mux2~0_combout\;
\u4|ALT_INV_Mux3~0_combout\ <= NOT \u4|Mux3~0_combout\;
\u4|ALT_INV_Mux4~0_combout\ <= NOT \u4|Mux4~0_combout\;
\u4|ALT_INV_Mux5~0_combout\ <= NOT \u4|Mux5~0_combout\;
\u4|ALT_INV_Mux6~0_combout\ <= NOT \u4|Mux6~0_combout\;
\u2|ALT_INV_bcd2\(3) <= NOT \u2|bcd2\(3);
\u2|ALT_INV_bcd2\(2) <= NOT \u2|bcd2\(2);
\u2|ALT_INV_bcd2\(1) <= NOT \u2|bcd2\(1);
\u2|ALT_INV_bcd2\(0) <= NOT \u2|bcd2\(0);
\u3|ALT_INV_Mux1~0_combout\ <= NOT \u3|Mux1~0_combout\;
\u3|ALT_INV_Mux2~0_combout\ <= NOT \u3|Mux2~0_combout\;
\u3|ALT_INV_Mux3~0_combout\ <= NOT \u3|Mux3~0_combout\;
\u3|ALT_INV_Mux4~0_combout\ <= NOT \u3|Mux4~0_combout\;
\u3|ALT_INV_Mux5~0_combout\ <= NOT \u3|Mux5~0_combout\;
\u3|ALT_INV_Mux6~0_combout\ <= NOT \u3|Mux6~0_combout\;
\u2|ALT_INV_bcd1\(3) <= NOT \u2|bcd1\(3);
\u2|ALT_INV_bcd1\(2) <= NOT \u2|bcd1\(2);
\u2|ALT_INV_bcd1\(1) <= NOT \u2|bcd1\(1);
\u2|ALT_INV_bcd1\(0) <= NOT \u2|bcd1\(0);
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~37_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_8~21_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_8~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_8~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_8~9_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~17_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\u2|ALT_INV_Add0~33_sumout\ <= NOT \u2|Add0~33_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\;
\u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\;
\u2|ALT_INV_Add0~29_sumout\ <= NOT \u2|Add0~29_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\u2|ALT_INV_Add0~25_sumout\ <= NOT \u2|Add0~25_sumout\;
\u2|ALT_INV_Add0~21_sumout\ <= NOT \u2|Add0~21_sumout\;
\u2|ALT_INV_Add0~17_sumout\ <= NOT \u2|Add0~17_sumout\;
\u2|ALT_INV_Add0~13_sumout\ <= NOT \u2|Add0~13_sumout\;
\u2|ALT_INV_Add0~9_sumout\ <= NOT \u2|Add0~9_sumout\;
\u2|ALT_INV_Add0~5_sumout\ <= NOT \u2|Add0~5_sumout\;
\u2|ALT_INV_Add0~1_sumout\ <= NOT \u2|Add0~1_sumout\;
\u2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \u2|Div0|auto_generated|divider|divider|op_9~1_sumout\;

-- Location: IOOBUF_X89_Y4_N96
\seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X89_Y13_N39
\seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X89_Y13_N56
\seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X89_Y4_N79
\seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X89_Y11_N96
\seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X89_Y11_N79
\seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X89_Y8_N39
\seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X89_Y8_N56
\seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOOBUF_X89_Y15_N56
\seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X89_Y15_N39
\seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X89_Y16_N56
\seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X89_Y16_N39
\seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X89_Y6_N56
\seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X89_Y6_N39
\seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\data~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

-- Location: LABCELL_X74_Y7_N33
\u1|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Q[0]~feeder_combout\ = ( \data~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data~input_o\,
	combout => \u1|Q[0]~feeder_combout\);

-- Location: FF_X74_Y7_N35
\u1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|Q[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Q\(0));

-- Location: LABCELL_X73_Y7_N39
\u1|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Q[1]~feeder_combout\ = ( \u1|Q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_Q\(0),
	combout => \u1|Q[1]~feeder_combout\);

-- Location: FF_X73_Y7_N41
\u1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|Q[1]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Q\(1));

-- Location: FF_X73_Y7_N43
\u1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u1|Q\(1),
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Q\(2));

-- Location: LABCELL_X73_Y7_N33
\u1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = ( \u1|Q\(0) & ( (!\data~input_o\ & (\u1|Q\(1) & \u1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data~input_o\,
	datac => \u1|ALT_INV_Q\(1),
	datad => \u1|ALT_INV_Q\(2),
	dataf => \u1|ALT_INV_Q\(0),
	combout => \u1|Equal0~0_combout\);

-- Location: FF_X73_Y7_N35
\u1|matchValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|Equal0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|matchValue~q\);

-- Location: LABCELL_X73_Y7_N30
\u1|match\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|match~combout\ = ( \u1|matchValue~q\ & ( !\data~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data~input_o\,
	dataf => \u1|ALT_INV_matchValue~q\,
	combout => \u1|match~combout\);

-- Location: FF_X79_Y8_N53
\u2|trigger[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(8));

-- Location: LABCELL_X79_Y8_N30
\u2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~29_sumout\ = SUM(( \u2|trigger\(0) ) + ( VCC ) + ( !VCC ))
-- \u2|Add0~30\ = CARRY(( \u2|trigger\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_trigger\(0),
	cin => GND,
	sumout => \u2|Add0~29_sumout\,
	cout => \u2|Add0~30\);

-- Location: FF_X79_Y8_N40
\u2|trigger[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(0));

-- Location: LABCELL_X79_Y8_N33
\u2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~33_sumout\ = SUM(( \u2|trigger\(1) ) + ( GND ) + ( \u2|Add0~30\ ))
-- \u2|Add0~34\ = CARRY(( \u2|trigger\(1) ) + ( GND ) + ( \u2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_trigger\(1),
	cin => \u2|Add0~30\,
	sumout => \u2|Add0~33_sumout\,
	cout => \u2|Add0~34\);

-- Location: FF_X79_Y8_N35
\u2|trigger[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|Add0~33_sumout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(1));

-- Location: LABCELL_X79_Y8_N36
\u2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~25_sumout\ = SUM(( \u2|trigger\(2) ) + ( GND ) + ( \u2|Add0~34\ ))
-- \u2|Add0~26\ = CARRY(( \u2|trigger\(2) ) + ( GND ) + ( \u2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_trigger\(2),
	cin => \u2|Add0~34\,
	sumout => \u2|Add0~25_sumout\,
	cout => \u2|Add0~26\);

-- Location: FF_X79_Y8_N55
\u2|trigger[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(2));

-- Location: LABCELL_X79_Y8_N39
\u2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~21_sumout\ = SUM(( \u2|trigger\(3) ) + ( GND ) + ( \u2|Add0~26\ ))
-- \u2|Add0~22\ = CARRY(( \u2|trigger\(3) ) + ( GND ) + ( \u2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_trigger\(3),
	cin => \u2|Add0~26\,
	sumout => \u2|Add0~21_sumout\,
	cout => \u2|Add0~22\);

-- Location: FF_X79_Y8_N47
\u2|trigger[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(3));

-- Location: LABCELL_X79_Y8_N42
\u2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~17_sumout\ = SUM(( \u2|trigger\(4) ) + ( GND ) + ( \u2|Add0~22\ ))
-- \u2|Add0~18\ = CARRY(( \u2|trigger\(4) ) + ( GND ) + ( \u2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_trigger\(4),
	cin => \u2|Add0~22\,
	sumout => \u2|Add0~17_sumout\,
	cout => \u2|Add0~18\);

-- Location: FF_X79_Y8_N23
\u2|trigger[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(4));

-- Location: LABCELL_X79_Y8_N45
\u2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~13_sumout\ = SUM(( \u2|trigger\(5) ) + ( GND ) + ( \u2|Add0~18\ ))
-- \u2|Add0~14\ = CARRY(( \u2|trigger\(5) ) + ( GND ) + ( \u2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_trigger\(5),
	cin => \u2|Add0~18\,
	sumout => \u2|Add0~13_sumout\,
	cout => \u2|Add0~14\);

-- Location: FF_X79_Y8_N29
\u2|trigger[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(5));

-- Location: LABCELL_X79_Y8_N48
\u2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~9_sumout\ = SUM(( \u2|trigger\(6) ) + ( GND ) + ( \u2|Add0~14\ ))
-- \u2|Add0~10\ = CARRY(( \u2|trigger\(6) ) + ( GND ) + ( \u2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_trigger\(6),
	cin => \u2|Add0~14\,
	sumout => \u2|Add0~9_sumout\,
	cout => \u2|Add0~10\);

-- Location: FF_X79_Y8_N26
\u2|trigger[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(6));

-- Location: LABCELL_X79_Y8_N51
\u2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~5_sumout\ = SUM(( \u2|trigger\(7) ) + ( GND ) + ( \u2|Add0~10\ ))
-- \u2|Add0~6\ = CARRY(( \u2|trigger\(7) ) + ( GND ) + ( \u2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_trigger\(7),
	cin => \u2|Add0~10\,
	sumout => \u2|Add0~5_sumout\,
	cout => \u2|Add0~6\);

-- Location: FF_X79_Y8_N19
\u2|trigger[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u2|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|trigger\(7));

-- Location: LABCELL_X79_Y8_N54
\u2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Add0~1_sumout\ = SUM(( \u2|trigger\(8) ) + ( GND ) + ( \u2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_trigger\(8),
	cin => \u2|Add0~6\,
	sumout => \u2|Add0~1_sumout\);

-- Location: LABCELL_X80_Y8_N0
\u2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = ( \u2|Add0~17_sumout\ & ( \u2|Add0~13_sumout\ ) ) # ( !\u2|Add0~17_sumout\ & ( (\u2|Add0~13_sumout\ & ((\u2|Add0~21_sumout\) # (\u2|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~25_sumout\,
	datab => \u2|ALT_INV_Add0~21_sumout\,
	datac => \u2|ALT_INV_Add0~13_sumout\,
	dataf => \u2|ALT_INV_Add0~17_sumout\,
	combout => \u2|LessThan0~0_combout\);

-- Location: LABCELL_X80_Y8_N9
\u2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|LessThan0~1_combout\ = ( !\u2|Add0~5_sumout\ & ( (!\u2|Add0~1_sumout\ & ((!\u2|Add0~9_sumout\) # (!\u2|LessThan0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~1_sumout\,
	datac => \u2|ALT_INV_Add0~9_sumout\,
	datad => \u2|ALT_INV_LessThan0~0_combout\,
	dataf => \u2|ALT_INV_Add0~5_sumout\,
	combout => \u2|LessThan0~1_combout\);

-- Location: LABCELL_X80_Y8_N30
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \u2|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \u2|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X80_Y8_N33
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \u2|Add0~9_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \u2|Add0~9_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~9_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X80_Y8_N36
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\u2|Add0~5_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\u2|Add0~5_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\u2|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~5_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X80_Y8_N39
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( \u2|Add0~1_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( \u2|Add0~1_sumout\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Add0~1_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: LABCELL_X80_Y8_N42
\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X80_Y8_N24
\u2|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LABCELL_X80_Y8_N3
\u2|Div0|auto_generated|divider|divider|StageOut[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[18]~18_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Add0~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[18]~18_combout\);

-- Location: LABCELL_X80_Y8_N6
\u2|Div0|auto_generated|divider|divider|StageOut[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\ = ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\);

-- Location: LABCELL_X80_Y8_N15
\u2|Div0|auto_generated|divider|divider|StageOut[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add0~9_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\);

-- Location: LABCELL_X81_Y8_N30
\u2|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X81_Y8_N33
\u2|Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \u2|Add0~17_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( \u2|Add0~17_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~17_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X81_Y8_N36
\u2|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Add0~13_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_5~6\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Add0~13_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|ALT_INV_Add0~13_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X81_Y8_N39
\u2|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\) ) + ( VCC ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\u2|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[16]~15_combout\) ) + ( VCC ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~15_combout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~16_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X81_Y8_N42
\u2|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Add0~5_sumout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \u2|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\u2|Add0~5_sumout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~5_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X81_Y8_N45
\u2|Div0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( (\u2|Div0|auto_generated|divider|divider|StageOut[18]~18_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\) ) + ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~17_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~18_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_5~18\,
	cout => \u2|Div0|auto_generated|divider|divider|op_5~22_cout\);

-- Location: LABCELL_X81_Y8_N48
\u2|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X81_Y8_N54
\u2|Div0|auto_generated|divider|divider|StageOut[22]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LABCELL_X80_Y8_N48
\u2|Div0|auto_generated|divider|divider|StageOut[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\ = ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\);

-- Location: LABCELL_X80_Y8_N51
\u2|Div0|auto_generated|divider|divider|StageOut[17]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ = ( \u2|Add0~5_sumout\ & ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u2|ALT_INV_Add0~5_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\);

-- Location: LABCELL_X80_Y8_N12
\u2|Div0|auto_generated|divider|divider|StageOut[16]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \u2|Add0~9_sumout\ ) ) # ( !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add0~9_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\);

-- Location: LABCELL_X81_Y8_N3
\u2|Div0|auto_generated|divider|divider|StageOut[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ = ( \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\u2|Add0~13_sumout\) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (\u2|Add0~13_sumout\ & \u2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~13_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LABCELL_X81_Y8_N6
\u2|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X81_Y8_N9
\u2|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( \u2|Add0~21_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( \u2|Add0~21_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X81_Y8_N12
\u2|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~5_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Add0~17_sumout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~5_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Add0~17_sumout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u2|ALT_INV_Add0~17_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X81_Y8_N15
\u2|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~10\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X81_Y8_N18
\u2|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \u2|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~9_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X81_Y8_N21
\u2|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\u2|Div0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\)) # (\u2|Div0|auto_generated|divider|divider|StageOut[17]~11_combout\))) ) + ( \u2|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~12_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_6~18\,
	cout => \u2|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X81_Y8_N24
\u2|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X81_Y8_N57
\u2|Div0|auto_generated|divider|divider|StageOut[22]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[22]~10_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|StageOut[16]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~9_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[22]~10_combout\);

-- Location: LABCELL_X81_Y8_N0
\u2|Div0|auto_generated|divider|divider|StageOut[21]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ 
-- & ( \u2|Div0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\);

-- Location: LABCELL_X81_Y7_N3
\u2|Div0|auto_generated|divider|divider|StageOut[20]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\ = ( \u2|Add0~17_sumout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( \u2|Add0~17_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\ ) ) ) # ( !\u2|Add0~17_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|op_5~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datae => \u2|ALT_INV_Add0~17_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\);

-- Location: MLABCELL_X82_Y8_N36
\u2|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: MLABCELL_X82_Y8_N39
\u2|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( \u2|Add0~25_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( \u2|Add0~25_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~25_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X82_Y8_N42
\u2|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Add0~21_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \u2|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Add0~21_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|ALT_INV_Add0~21_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X82_Y8_N45
\u2|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \u2|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~1_combout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: MLABCELL_X82_Y8_N48
\u2|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_7~10\ ))
-- \u2|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: MLABCELL_X82_Y8_N51
\u2|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\u2|Div0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[22]~10_combout\)) # (\u2|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\))) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~10_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_7~14\,
	cout => \u2|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: MLABCELL_X82_Y8_N54
\u2|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X81_Y9_N33
\u2|bcd1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd1~2_combout\ = (\u2|LessThan0~1_combout\ & !\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u2|bcd1~2_combout\);

-- Location: FF_X81_Y9_N35
\u2|bcd1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~2_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1\(2));

-- Location: LABCELL_X81_Y9_N30
\u2|bcd1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd1~3_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\u2|LessThan0~1_combout\ ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u2|bcd1~3_combout\);

-- Location: FF_X81_Y9_N32
\u2|bcd1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~3_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1\(3));

-- Location: MLABCELL_X82_Y8_N3
\u2|Div0|auto_generated|divider|divider|StageOut[27]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\ = ( !\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \u2|Div0|auto_generated|divider|divider|op_6~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\);

-- Location: MLABCELL_X82_Y5_N15
\u2|Div0|auto_generated|divider|divider|StageOut[27]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[21]~6_combout\ & ( \u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~6_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: MLABCELL_X82_Y8_N33
\u2|Div0|auto_generated|divider|divider|StageOut[26]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ( (\u2|Div0|auto_generated|divider|divider|op_6~9_sumout\) # (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) 
-- # ( !\u2|Div0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_6~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~1_combout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\);

-- Location: MLABCELL_X82_Y8_N30
\u2|Div0|auto_generated|divider|divider|StageOut[25]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( (!\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\u2|Add0~21_sumout\) ) ) # ( 
-- !\u2|Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( (\u2|Div0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|ALT_INV_Add0~21_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\);

-- Location: MLABCELL_X82_Y8_N6
\u2|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: MLABCELL_X82_Y8_N9
\u2|Div0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( \u2|Add0~33_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_8~26_cout\ ))
-- \u2|Div0|auto_generated|divider|divider|op_8~22\ = CARRY(( \u2|Add0~33_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~33_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_8~26_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~22\);

-- Location: MLABCELL_X82_Y8_N12
\u2|Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Add0~25_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_8~22\ ))
-- \u2|Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Add0~25_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u2|ALT_INV_Add0~25_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_8~22\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~18\);

-- Location: MLABCELL_X82_Y8_N15
\u2|Div0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_8~18\ ))
-- \u2|Div0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~13_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_8~18\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~14\);

-- Location: MLABCELL_X82_Y8_N18
\u2|Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_8~14\ ))
-- \u2|Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~2_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_8~14\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~10\);

-- Location: MLABCELL_X82_Y8_N21
\u2|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\u2|Div0|auto_generated|divider|divider|op_7~13_sumout\)) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[27]~7_combout\) # (\u2|Div0|auto_generated|divider|divider|StageOut[27]~4_combout\)))) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~4_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~7_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_8~10\,
	cout => \u2|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: MLABCELL_X82_Y8_N24
\u2|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X81_Y9_N27
\u2|bcd1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd1~1_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\u2|LessThan0~1_combout\ ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \u2|bcd1~1_combout\);

-- Location: FF_X81_Y9_N29
\u2|bcd1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~1_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1\(1));

-- Location: LABCELL_X81_Y9_N54
\u2|Div0|auto_generated|divider|divider|StageOut[32]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[32]~0_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_7~9_sumout\ & ( !\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[32]~0_combout\);

-- Location: LABCELL_X81_Y9_N57
\u2|Div0|auto_generated|divider|divider|StageOut[32]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[26]~2_combout\ & ( \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~2_combout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: MLABCELL_X82_Y8_N0
\u2|Div0|auto_generated|divider|divider|StageOut[31]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[31]~14_combout\ = ( \u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\ & ( (\u2|Div0|auto_generated|divider|divider|op_7~17_sumout\) # (\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\) 
-- ) ) # ( !\u2|Div0|auto_generated|divider|divider|StageOut[25]~13_combout\ & ( (!\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \u2|Div0|auto_generated|divider|divider|op_7~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~13_combout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[31]~14_combout\);

-- Location: MLABCELL_X82_Y5_N18
\u2|Div0|auto_generated|divider|divider|StageOut[30]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|StageOut[30]~19_combout\ = ( \u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \u2|Add0~25_sumout\ ) ) # ( !\u2|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \u2|Div0|auto_generated|divider|divider|op_7~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~25_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u2|Div0|auto_generated|divider|divider|StageOut[30]~19_combout\);

-- Location: LABCELL_X81_Y9_N0
\u2|Div0|auto_generated|divider|divider|op_9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~26_cout\);

-- Location: LABCELL_X81_Y9_N3
\u2|Div0|auto_generated|divider|divider|op_9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~22_cout\ = CARRY(( \u2|Add0~29_sumout\ ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~29_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_9~26_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~22_cout\);

-- Location: LABCELL_X81_Y9_N6
\u2|Div0|auto_generated|divider|divider|op_9~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~18_cout\ = CARRY(( GND ) + ( (!\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_8~21_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Add0~33_sumout\)) ) + ( \u2|Div0|auto_generated|divider|divider|op_9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|ALT_INV_Add0~33_sumout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_9~22_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~18_cout\);

-- Location: LABCELL_X81_Y9_N9
\u2|Div0|auto_generated|divider|divider|op_9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~14_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_8~17_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[30]~19_combout\)) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_9~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~19_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_9~18_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~14_cout\);

-- Location: LABCELL_X81_Y9_N12
\u2|Div0|auto_generated|divider|divider|op_9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~10_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Div0|auto_generated|divider|divider|op_8~13_sumout\))) # (\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Div0|auto_generated|divider|divider|StageOut[31]~14_combout\)) ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_9~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~14_combout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_9~14_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~10_cout\);

-- Location: LABCELL_X81_Y9_N15
\u2|Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\u2|Div0|auto_generated|divider|divider|op_8~9_sumout\)))) # (\u2|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u2|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\)) # (\u2|Div0|auto_generated|divider|divider|StageOut[32]~0_combout\))) ) + ( VCC ) + ( \u2|Div0|auto_generated|divider|divider|op_9~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~0_combout\,
	datab => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \u2|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	cin => \u2|Div0|auto_generated|divider|divider|op_9~10_cout\,
	cout => \u2|Div0|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X81_Y9_N18
\u2|Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \u2|Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: LABCELL_X81_Y9_N24
\u2|bcd1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd1~0_combout\ = ( !\u2|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \u2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	dataf => \u2|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \u2|bcd1~0_combout\);

-- Location: FF_X81_Y9_N26
\u2|bcd1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~0_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y9_N36
\u3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux6~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(1) & (\u2|bcd1\(2))) # (\u2|bcd1\(1) & ((\u2|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datac => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux6~0_combout\);

-- Location: LABCELL_X81_Y9_N39
\u3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux5~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(2) $ (\u2|bcd1\(3))) # (\u2|bcd1\(1)) ) ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(2) & ((\u2|bcd1\(1)))) # (\u2|bcd1\(2) & (\u2|bcd1\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101110011001111111111001100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datad => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux5~0_combout\);

-- Location: LABCELL_X81_Y9_N42
\u3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux4~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ & ( !\u2|bcd1\(3) $ (((\u2|bcd1\(1)) # (\u2|bcd1\(2)))) ) ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(1) & (\u2|bcd1\(2))) # (\u2|bcd1\(1) & ((\u2|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001110010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datac => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux4~0_combout\);

-- Location: LABCELL_X81_Y9_N51
\u3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux3~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(1) & (\u2|bcd1\(2))) # (\u2|bcd1\(1) & ((\u2|bcd1\(3)))) ) ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(2) & (\u2|bcd1\(3) & \u2|bcd1\(1))) # (\u2|bcd1\(2) & ((\u2|bcd1\(1)) # 
-- (\u2|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datad => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux3~0_combout\);

-- Location: FF_X81_Y9_N34
\u2|bcd1[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~2_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1[2]~DUPLICATE_q\);

-- Location: FF_X81_Y9_N25
\u2|bcd1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd1~0_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd1\(0));

-- Location: MLABCELL_X82_Y11_N3
\u3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux2~0_combout\ = ( !\u2|bcd1\(0) & ( (!\u2|bcd1[2]~DUPLICATE_q\ & \u2|bcd1\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1[2]~DUPLICATE_q\,
	datac => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1\(0),
	combout => \u3|Mux2~0_combout\);

-- Location: LABCELL_X81_Y9_N45
\u3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux1~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(2) & (!\u2|bcd1\(3) $ (\u2|bcd1\(1)))) # (\u2|bcd1\(2) & ((\u2|bcd1\(1)) # (\u2|bcd1\(3)))) ) ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(1) & (\u2|bcd1\(2))) # (\u2|bcd1\(1) & 
-- ((\u2|bcd1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001110011001011101111001100101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datad => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux1~0_combout\);

-- Location: LABCELL_X81_Y9_N48
\u3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|Mux0~0_combout\ = ( \u2|bcd1[0]~DUPLICATE_q\ & ( (!\u2|bcd1\(2) $ (!\u2|bcd1\(1))) # (\u2|bcd1\(3)) ) ) # ( !\u2|bcd1[0]~DUPLICATE_q\ & ( ((\u2|bcd1\(1)) # (\u2|bcd1\(3))) # (\u2|bcd1\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd1\(2),
	datab => \u2|ALT_INV_bcd1\(3),
	datac => \u2|ALT_INV_bcd1\(1),
	dataf => \u2|ALT_INV_bcd1[0]~DUPLICATE_q\,
	combout => \u3|Mux0~0_combout\);

-- Location: LABCELL_X79_Y8_N0
\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \u2|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \u2|Add0~13_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Add0~13_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X79_Y8_N3
\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \u2|Add0~9_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \u2|Add0~9_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~9_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X79_Y8_N6
\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\u2|Add0~5_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\u2|Add0~5_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\u2|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Add0~5_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X79_Y8_N9
\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ = SUM(( \u2|Add0~1_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ = CARRY(( \u2|Add0~1_sumout\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \u2|ALT_INV_Add0~1_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	shareout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\);

-- Location: LABCELL_X79_Y8_N12
\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ = SUM(( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ ) + ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	sharein => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\,
	sumout => \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\);

-- Location: LABCELL_X79_Y8_N27
\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\ = (\u2|Add0~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\);

-- Location: LABCELL_X79_Y8_N21
\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\ = ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\);

-- Location: LABCELL_X79_Y8_N18
\u2|Mod0|auto_generated|divider|divider|StageOut[28]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\ = (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\);

-- Location: LABCELL_X79_Y8_N24
\u2|Mod0|auto_generated|divider|divider|StageOut[28]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\ = ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \u2|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~9_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\);

-- Location: MLABCELL_X78_Y8_N24
\u2|Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X78_Y8_N27
\u2|Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \u2|Add0~17_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( \u2|Add0~17_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~17_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X78_Y8_N30
\u2|Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\u2|Add0~13_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\u2|Add0~13_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \u2|ALT_INV_Add0~13_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X78_Y8_N33
\u2|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( VCC ) + ( (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\) ) + ( 
-- \u2|Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( VCC ) + ( (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~24_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~23_combout\) ) + ( 
-- \u2|Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~23_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~24_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X78_Y8_N36
\u2|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\u2|Add0~5_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\u2|Add0~5_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \u2|ALT_INV_Add0~5_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X78_Y8_N39
\u2|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\) ) + ( VCC ) + ( 
-- \u2|Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\) ) + ( VCC ) + ( 
-- \u2|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~6_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X78_Y8_N42
\u2|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X80_Y8_N54
\u2|Mod0|auto_generated|divider|divider|StageOut[29]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\ = (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & !\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\);

-- Location: LABCELL_X80_Y8_N18
\u2|Mod0|auto_generated|divider|divider|StageOut[29]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\ = ( \u2|Add0~5_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \u2|ALT_INV_Add0~5_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\);

-- Location: LABCELL_X80_Y8_N27
\u2|Mod0|auto_generated|divider|divider|StageOut[28]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\ = ( \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\) # (\u2|Add0~9_sumout\) ) ) # ( 
-- !\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( (\u2|Add0~9_sumout\ & \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Add0~9_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\);

-- Location: LABCELL_X80_Y8_N21
\u2|Mod0|auto_generated|divider|divider|StageOut[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\ = ( \u2|Add0~13_sumout\ & ( (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\) # (\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\) ) ) # ( 
-- !\u2|Add0~13_sumout\ & ( (!\u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & \u2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \u2|ALT_INV_Add0~13_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\);

-- Location: MLABCELL_X78_Y8_N0
\u2|Mod0|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\);

-- Location: MLABCELL_X78_Y8_N3
\u2|Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \u2|Add0~21_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( \u2|Add0~21_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~21_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~14_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: MLABCELL_X78_Y8_N6
\u2|Mod0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Add0~17_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Add0~17_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|ALT_INV_Add0~17_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~30\);

-- Location: MLABCELL_X78_Y8_N9
\u2|Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~30\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~26_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~30\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: MLABCELL_X78_Y8_N12
\u2|Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~19_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X78_Y8_N15
\u2|Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~12_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X78_Y8_N18
\u2|Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011000010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~6_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X78_Y8_N21
\u2|Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X79_Y7_N42
\u2|Mod0|auto_generated|divider|divider|StageOut[50]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\ = (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\);

-- Location: MLABCELL_X78_Y8_N51
\u2|Mod0|auto_generated|divider|divider|StageOut[40]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\);

-- Location: MLABCELL_X78_Y8_N48
\u2|Mod0|auto_generated|divider|divider|StageOut[40]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~7_combout\) # 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[30]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~6_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~7_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\);

-- Location: MLABCELL_X78_Y8_N54
\u2|Mod0|auto_generated|divider|divider|StageOut[39]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\) ) 
-- ) # ( !\u2|Mod0|auto_generated|divider|divider|StageOut[29]~13_combout\ & ( (!\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|StageOut[29]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~12_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~13_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\);

-- Location: MLABCELL_X78_Y8_N57
\u2|Mod0|auto_generated|divider|divider|StageOut[38]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\);

-- Location: LABCELL_X80_Y8_N57
\u2|Mod0|auto_generated|divider|divider|StageOut[38]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|StageOut[28]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~19_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\);

-- Location: LABCELL_X79_Y7_N6
\u2|Mod0|auto_generated|divider|divider|StageOut[37]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|StageOut[27]~26_combout\ ) ) # ( 
-- !\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[27]~26_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\);

-- Location: LABCELL_X79_Y7_N24
\u2|Mod0|auto_generated|divider|divider|StageOut[36]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \u2|Add0~17_sumout\ ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \u2|Mod0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \u2|ALT_INV_Add0~17_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\);

-- Location: LABCELL_X79_Y6_N0
\u2|Mod0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X79_Y6_N3
\u2|Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( \u2|Add0~25_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( \u2|Add0~25_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~25_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~18_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X79_Y6_N6
\u2|Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Add0~21_sumout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Add0~21_sumout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|ALT_INV_Add0~21_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X79_Y6_N9
\u2|Mod0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~34\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~31_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~34\);

-- Location: LABCELL_X79_Y6_N12
\u2|Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~34\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[37]~27_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~34\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X79_Y6_N15
\u2|Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~30\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~18_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~20_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X79_Y6_N18
\u2|Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X79_Y6_N21
\u2|Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~5_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~8_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X79_Y6_N24
\u2|Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X79_Y7_N45
\u2|Mod0|auto_generated|divider|divider|StageOut[50]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- !\u2|Mod0|auto_generated|divider|divider|StageOut[40]~8_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|StageOut[40]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~5_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~8_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LABCELL_X79_Y7_N48
\u2|Mod0|auto_generated|divider|divider|StageOut[49]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|op_6~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LABCELL_X79_Y7_N51
\u2|Mod0|auto_generated|divider|divider|StageOut[49]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[39]~14_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[39]~14_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\);

-- Location: LABCELL_X79_Y7_N9
\u2|Mod0|auto_generated|divider|divider|StageOut[48]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\) 
-- ) ) # ( !\u2|Mod0|auto_generated|divider|divider|StageOut[38]~20_combout\ & ( (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_6~21_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|StageOut[38]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~18_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[38]~20_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\);

-- Location: LABCELL_X79_Y7_N12
\u2|Mod0|auto_generated|divider|divider|StageOut[47]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\ = (!\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|op_6~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\);

-- Location: LABCELL_X79_Y7_N57
\u2|Mod0|auto_generated|divider|divider|StageOut[47]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[37]~27_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[37]~27_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\);

-- Location: LABCELL_X79_Y7_N27
\u2|Mod0|auto_generated|divider|divider|StageOut[46]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\) 
-- ) ) # ( !\u2|Mod0|auto_generated|divider|divider|StageOut[36]~31_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_6~29_sumout\ & !\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[36]~31_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\);

-- Location: LABCELL_X79_Y7_N30
\u2|Mod0|auto_generated|divider|divider|StageOut[45]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\ = ( \u2|Add0~21_sumout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\) ) ) # ( !\u2|Add0~21_sumout\ & ( 
-- (\u2|Mod0|auto_generated|divider|divider|op_6~5_sumout\ & !\u2|Mod0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \u2|ALT_INV_Add0~21_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\);

-- Location: LABCELL_X79_Y6_N30
\u2|Mod0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X79_Y6_N33
\u2|Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( \u2|Add0~33_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( \u2|Add0~33_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~33_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~22_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X79_Y6_N36
\u2|Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Add0~25_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Add0~25_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u2|ALT_INV_Add0~25_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X79_Y6_N39
\u2|Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~1_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X79_Y6_N42
\u2|Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~32_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~38\);

-- Location: LABCELL_X79_Y6_N45
\u2|Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~38\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~25_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~28_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~38\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X79_Y6_N48
\u2|Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X79_Y6_N51
\u2|Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\))) ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~11_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X79_Y6_N54
\u2|Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~4_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~9_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X79_Y6_N57
\u2|Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X79_Y7_N39
\u2|Mod0|auto_generated|divider|divider|StageOut[60]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[60]~3_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_7~13_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[60]~3_combout\);

-- Location: LABCELL_X79_Y7_N36
\u2|Mod0|auto_generated|divider|divider|StageOut[60]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) ) # ( 
-- !\u2|Mod0|auto_generated|divider|divider|StageOut[50]~4_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|StageOut[50]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~9_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~4_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\);

-- Location: LABCELL_X79_Y7_N54
\u2|Mod0|auto_generated|divider|divider|StageOut[59]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[59]~16_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\ & ( ((!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\)) # (\u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\) ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_7~21_sumout\ & ( 
-- (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[49]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~11_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[59]~16_combout\);

-- Location: LABCELL_X79_Y7_N3
\u2|Mod0|auto_generated|divider|divider|StageOut[58]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_7~25_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\);

-- Location: LABCELL_X79_Y7_N0
\u2|Mod0|auto_generated|divider|divider|StageOut[58]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[58]~22_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[58]~22_combout\);

-- Location: LABCELL_X79_Y7_N15
\u2|Mod0|auto_generated|divider|divider|StageOut[57]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\) 
-- ) ) # ( !\u2|Mod0|auto_generated|divider|divider|StageOut[47]~25_combout\ & ( (!\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_7~29_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|StageOut[47]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~28_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[47]~25_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\);

-- Location: LABCELL_X79_Y7_N21
\u2|Mod0|auto_generated|divider|divider|StageOut[56]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[56]~30_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_7~33_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[56]~30_combout\);

-- Location: LABCELL_X79_Y7_N18
\u2|Mod0|auto_generated|divider|divider|StageOut[56]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[56]~33_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[46]~32_combout\ & ( \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[46]~32_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[56]~33_combout\);

-- Location: LABCELL_X79_Y7_N33
\u2|Mod0|auto_generated|divider|divider|StageOut[55]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\ = ( \u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\) ) ) 
-- # ( !\u2|Mod0|auto_generated|divider|divider|StageOut[45]~1_combout\ & ( (\u2|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & !\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[45]~1_combout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\);

-- Location: LABCELL_X80_Y6_N3
\u2|Mod0|auto_generated|divider|divider|StageOut[54]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \u2|Add0~25_sumout\ ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \u2|Mod0|auto_generated|divider|divider|op_7~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_Add0~25_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LABCELL_X80_Y6_N24
\u2|Mod0|auto_generated|divider|divider|op_9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\);

-- Location: LABCELL_X80_Y6_N27
\u2|Mod0|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( \u2|Add0~29_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_9~6\ = CARRY(( \u2|Add0~29_sumout\ ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_Add0~29_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~26_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~6\);

-- Location: LABCELL_X80_Y6_N30
\u2|Mod0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Add0~33_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~6\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Add0~33_sumout\)) ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|ALT_INV_Add0~33_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~6\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X80_Y6_N33
\u2|Mod0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~10\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\)) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~10\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X80_Y6_N36
\u2|Mod0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~14\ ))
-- \u2|Mod0|auto_generated|divider|divider|op_9~18\ = CARRY(( GND ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~2_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~14\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X80_Y6_N39
\u2|Mod0|auto_generated|divider|divider|op_9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~42_cout\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_8~37_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[56]~33_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[56]~30_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~30_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[56]~33_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~18\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~42_cout\);

-- Location: LABCELL_X80_Y6_N42
\u2|Mod0|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~33_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[57]~29_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~29_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~42_cout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~38_cout\);

-- Location: LABCELL_X80_Y6_N45
\u2|Mod0|auto_generated|divider|divider|op_9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~34_cout\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_8~29_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[58]~22_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~17_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~22_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~38_cout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~34_cout\);

-- Location: LABCELL_X80_Y6_N48
\u2|Mod0|auto_generated|divider|divider|op_9~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~30_cout\ = CARRY(( VCC ) + ( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~25_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|StageOut[59]~16_combout\)) ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~16_combout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~34_cout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~30_cout\);

-- Location: LABCELL_X80_Y6_N51
\u2|Mod0|auto_generated|divider|divider|op_9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~22_cout\ = CARRY(( (!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_8~17_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\u2|Mod0|auto_generated|divider|divider|StageOut[60]~10_combout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[60]~3_combout\)))) ) + ( VCC ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~3_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~10_combout\,
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~30_cout\,
	cout => \u2|Mod0|auto_generated|divider|divider|op_9~22_cout\);

-- Location: LABCELL_X80_Y6_N54
\u2|Mod0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \u2|Mod0|auto_generated|divider|divider|op_9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u2|Mod0|auto_generated|divider|divider|op_9~22_cout\,
	sumout => \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: LABCELL_X80_Y6_N6
\u2|bcd2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd2~1_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ & ( (!\u2|LessThan0~1_combout\) # ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Add0~33_sumout\))) ) ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( 
-- \u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ ) ) # ( \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ & ( (!\u2|LessThan0~1_combout\) # 
-- ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Add0~33_sumout\))) ) ) ) # ( 
-- !\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_9~9_sumout\ & ( !\u2|LessThan0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010111110111111111111111111111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|ALT_INV_Add0~33_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datae => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	combout => \u2|bcd2~1_combout\);

-- Location: FF_X80_Y6_N7
\u2|bcd2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd2~1_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd2\(1));

-- Location: LABCELL_X80_Y6_N12
\u2|bcd2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd2~2_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\ & ( (\u2|LessThan0~1_combout\ & ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\))))) ) ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ 
-- & ( \u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\ & ( \u2|LessThan0~1_combout\ ) ) ) # ( \u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_9~13_sumout\ & ( (\u2|LessThan0~1_combout\ & 
-- ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_8~9_sumout\)) # (\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\u2|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010000010101010101010101010001000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	combout => \u2|bcd2~2_combout\);

-- Location: FF_X80_Y6_N13
\u2|bcd2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd2~2_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd2\(2));

-- Location: LABCELL_X80_Y6_N18
\u2|bcd2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd2~3_combout\ = ( \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\u2|LessThan0~1_combout\) # ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- ((!\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\))) ) ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ & ( \u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ 
-- & ( (!\u2|LessThan0~1_combout\) # ((\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((!\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\)))) ) ) ) # ( 
-- \u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( (!\u2|LessThan0~1_combout\) # ((!\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\) # 
-- ((\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\))) ) ) ) # ( !\u2|Mod0|auto_generated|divider|divider|op_9~17_sumout\ & ( !\u2|Mod0|auto_generated|divider|divider|op_8~13_sumout\ & 
-- ( (!\u2|LessThan0~1_combout\) # ((\u2|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|StageOut[55]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011111110101111101110101110101011111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	datab => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~2_combout\,
	datae => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	dataf => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \u2|bcd2~3_combout\);

-- Location: FF_X80_Y6_N19
\u2|bcd2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd2~3_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd2\(3));

-- Location: LABCELL_X80_Y6_N0
\u2|bcd2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|bcd2~0_combout\ = ( \u2|Add0~29_sumout\ & ( (\u2|LessThan0~1_combout\ & ((\u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\) # (\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\))) ) ) # ( !\u2|Add0~29_sumout\ & ( (\u2|LessThan0~1_combout\ & 
-- (!\u2|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & \u2|Mod0|auto_generated|divider|divider|op_9~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_LessThan0~1_combout\,
	datac => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \u2|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	dataf => \u2|ALT_INV_Add0~29_sumout\,
	combout => \u2|bcd2~0_combout\);

-- Location: FF_X80_Y6_N1
\u2|bcd2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|bcd2~0_combout\,
	clrn => \reset~input_o\,
	ena => \u1|match~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|bcd2\(0));

-- Location: MLABCELL_X82_Y5_N33
\u4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(2)) # (\u2|bcd2\(1)) ) ) ) # ( !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (!\u2|bcd2\(1) & \u2|bcd2\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd2\(1),
	datac => \u2|ALT_INV_bcd2\(2),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux6~0_combout\);

-- Location: MLABCELL_X82_Y5_N6
\u4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (!\u2|bcd2\(2)) # (\u2|bcd2\(1)) ) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( 
-- !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (!\u2|bcd2\(2) & \u2|bcd2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111111001111110011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_bcd2\(2),
	datac => \u2|ALT_INV_bcd2\(1),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y5_N45
\u4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux4~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (\u2|bcd2\(2)) # (\u2|bcd2\(1)) ) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (!\u2|bcd2\(1) & !\u2|bcd2\(2)) ) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(2)) # (\u2|bcd2\(1)) ) ) ) # ( 
-- !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (!\u2|bcd2\(1) & \u2|bcd2\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110100000101000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd2\(1),
	datac => \u2|ALT_INV_bcd2\(2),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y5_N48
\u4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (\u2|bcd2\(2) & !\u2|bcd2\(1)) ) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( 
-- !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(2) & \u2|bcd2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_bcd2\(2),
	datac => \u2|ALT_INV_bcd2\(1),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y5_N27
\u4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = ( !\u2|bcd2\(2) & ( !\u2|bcd2\(0) & ( \u2|bcd2\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd2\(1),
	datae => \u2|ALT_INV_bcd2\(2),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y5_N0
\u4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) & ( !\u2|bcd2\(2) $ (\u2|bcd2\(1)) ) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(1)) # (\u2|bcd2\(2)) ) ) ) # ( 
-- !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(2) & !\u2|bcd2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111111000011110000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_bcd2\(2),
	datac => \u2|ALT_INV_bcd2\(1),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux1~0_combout\);

-- Location: MLABCELL_X82_Y5_N39
\u4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|Mux0~0_combout\ = ( \u2|bcd2\(3) & ( \u2|bcd2\(0) ) ) # ( !\u2|bcd2\(3) & ( \u2|bcd2\(0) & ( !\u2|bcd2\(1) $ (!\u2|bcd2\(2)) ) ) ) # ( \u2|bcd2\(3) & ( !\u2|bcd2\(0) ) ) # ( !\u2|bcd2\(3) & ( !\u2|bcd2\(0) & ( (\u2|bcd2\(2)) # (\u2|bcd2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111101011010010110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_bcd2\(1),
	datac => \u2|ALT_INV_bcd2\(2),
	datae => \u2|ALT_INV_bcd2\(3),
	dataf => \u2|ALT_INV_bcd2\(0),
	combout => \u4|Mux0~0_combout\);

-- Location: LABCELL_X60_Y30_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


