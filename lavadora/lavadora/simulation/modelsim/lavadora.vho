-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/25/2024 21:45:15"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lavadora IS
    PORT (
	encendida : IN std_logic;
	lleno : IN std_logic;
	cerrado : IN std_logic;
	reloj : IN std_logic;
	reset : IN std_logic;
	llenado : BUFFER std_logic;
	vaciado : BUFFER std_logic;
	tiempo_faltante1 : BUFFER std_logic_vector(6 DOWNTO 0);
	tiempo_faltante2 : BUFFER std_logic_vector(6 DOWNTO 0);
	giro_bcd : BUFFER std_logic_vector(6 DOWNTO 0);
	velocidad_bcd : BUFFER std_logic_vector(6 DOWNTO 0);
	alarma : BUFFER std_logic
	);
END lavadora;

-- Design Ports Information
-- llenado	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vaciado	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_faltante2[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro_bcd[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad_bcd[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encendida	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lleno	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrado	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lavadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_encendida : std_logic;
SIGNAL ww_lleno : std_logic;
SIGNAL ww_cerrado : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_llenado : std_logic;
SIGNAL ww_vaciado : std_logic;
SIGNAL ww_tiempo_faltante1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tiempo_faltante2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_giro_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_velocidad_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_alarma : std_logic;
SIGNAL \U3|u_c|proceso_habilitado~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|u_d|out1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \llenado~output_o\ : std_logic;
SIGNAL \vaciado~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[0]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[1]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[2]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[3]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[4]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[5]~output_o\ : std_logic;
SIGNAL \tiempo_faltante1[6]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[0]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[1]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[2]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[3]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[4]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[5]~output_o\ : std_logic;
SIGNAL \tiempo_faltante2[6]~output_o\ : std_logic;
SIGNAL \giro_bcd[0]~output_o\ : std_logic;
SIGNAL \giro_bcd[1]~output_o\ : std_logic;
SIGNAL \giro_bcd[2]~output_o\ : std_logic;
SIGNAL \giro_bcd[3]~output_o\ : std_logic;
SIGNAL \giro_bcd[4]~output_o\ : std_logic;
SIGNAL \giro_bcd[5]~output_o\ : std_logic;
SIGNAL \giro_bcd[6]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[0]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[1]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[2]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[3]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[4]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[5]~output_o\ : std_logic;
SIGNAL \velocidad_bcd[6]~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \encendida~input_o\ : std_logic;
SIGNAL \cerrado~input_o\ : std_logic;
SIGNAL \lleno~input_o\ : std_logic;
SIGNAL \U0|Mux0~0_combout\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \U3|u_d|Add0~0_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~1\ : std_logic;
SIGNAL \U3|u_d|Add0~2_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~3\ : std_logic;
SIGNAL \U3|u_d|Add0~4_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~5\ : std_logic;
SIGNAL \U3|u_d|Add0~6_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~7\ : std_logic;
SIGNAL \U3|u_d|Add0~8_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~9\ : std_logic;
SIGNAL \U3|u_d|Add0~10_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~11\ : std_logic;
SIGNAL \U3|u_d|Add0~12_combout\ : std_logic;
SIGNAL \U3|u_d|count1~8_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~13\ : std_logic;
SIGNAL \U3|u_d|Add0~14_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~15\ : std_logic;
SIGNAL \U3|u_d|Add0~16_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~17\ : std_logic;
SIGNAL \U3|u_d|Add0~18_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~19\ : std_logic;
SIGNAL \U3|u_d|Add0~20_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~21\ : std_logic;
SIGNAL \U3|u_d|Add0~22_combout\ : std_logic;
SIGNAL \U3|u_d|count1~7_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~23\ : std_logic;
SIGNAL \U3|u_d|Add0~24_combout\ : std_logic;
SIGNAL \U3|u_d|count1~6_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~25\ : std_logic;
SIGNAL \U3|u_d|Add0~26_combout\ : std_logic;
SIGNAL \U3|u_d|count1~5_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~27\ : std_logic;
SIGNAL \U3|u_d|Add0~28_combout\ : std_logic;
SIGNAL \U3|u_d|count1~4_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~29\ : std_logic;
SIGNAL \U3|u_d|Add0~30_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~31\ : std_logic;
SIGNAL \U3|u_d|Add0~32_combout\ : std_logic;
SIGNAL \U3|u_d|count1~3_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~33\ : std_logic;
SIGNAL \U3|u_d|Add0~34_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~35\ : std_logic;
SIGNAL \U3|u_d|Add0~36_combout\ : std_logic;
SIGNAL \U3|u_d|count1~2_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~37\ : std_logic;
SIGNAL \U3|u_d|Add0~38_combout\ : std_logic;
SIGNAL \U3|u_d|count1~1_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~39\ : std_logic;
SIGNAL \U3|u_d|Add0~40_combout\ : std_logic;
SIGNAL \U3|u_d|count1~0_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~41\ : std_logic;
SIGNAL \U3|u_d|Add0~42_combout\ : std_logic;
SIGNAL \U3|u_d|count1~10_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~43\ : std_logic;
SIGNAL \U3|u_d|Add0~44_combout\ : std_logic;
SIGNAL \U3|u_d|count1~11_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~45\ : std_logic;
SIGNAL \U3|u_d|Add0~46_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~6_combout\ : std_logic;
SIGNAL \U3|u_d|Add0~47\ : std_logic;
SIGNAL \U3|u_d|Add0~48_combout\ : std_logic;
SIGNAL \U3|u_d|count1~9_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~5_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~1_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~0_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~2_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~3_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~4_combout\ : std_logic;
SIGNAL \U3|u_d|Equal0~7_combout\ : std_logic;
SIGNAL \U3|u_d|out1~0_combout\ : std_logic;
SIGNAL \U3|u_d|out1~feeder_combout\ : std_logic;
SIGNAL \U3|u_d|out1~q\ : std_logic;
SIGNAL \U3|u_d|out1~clkctrl_outclk\ : std_logic;
SIGNAL \U2|fin~0_combout\ : std_logic;
SIGNAL \U2|fin[3]~3_combout\ : std_logic;
SIGNAL \U2|fin~2_combout\ : std_logic;
SIGNAL \U1|cout[3]~0_combout\ : std_logic;
SIGNAL \U6|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U1|vaciado~2_combout\ : std_logic;
SIGNAL \U6|load~1_combout\ : std_logic;
SIGNAL \U6|Add0~1\ : std_logic;
SIGNAL \U6|Add0~2_combout\ : std_logic;
SIGNAL \U6|active~1_combout\ : std_logic;
SIGNAL \U6|Add0~5\ : std_logic;
SIGNAL \U6|Add0~6_combout\ : std_logic;
SIGNAL \U6|Add0~7\ : std_logic;
SIGNAL \U6|Add0~8_combout\ : std_logic;
SIGNAL \U6|Add0~9\ : std_logic;
SIGNAL \U6|Add0~10_combout\ : std_logic;
SIGNAL \U6|Add0~11\ : std_logic;
SIGNAL \U6|Add0~12_combout\ : std_logic;
SIGNAL \U6|Add0~13\ : std_logic;
SIGNAL \U6|Add0~14_combout\ : std_logic;
SIGNAL \U6|Equal1~7_combout\ : std_logic;
SIGNAL \U6|Add0~15\ : std_logic;
SIGNAL \U6|Add0~16_combout\ : std_logic;
SIGNAL \U6|Add0~17\ : std_logic;
SIGNAL \U6|Add0~18_combout\ : std_logic;
SIGNAL \U6|Add0~19\ : std_logic;
SIGNAL \U6|Add0~20_combout\ : std_logic;
SIGNAL \U6|Add0~21\ : std_logic;
SIGNAL \U6|Add0~22_combout\ : std_logic;
SIGNAL \U6|Equal1~6_combout\ : std_logic;
SIGNAL \U6|Add0~23\ : std_logic;
SIGNAL \U6|Add0~24_combout\ : std_logic;
SIGNAL \U6|Add0~25\ : std_logic;
SIGNAL \U6|Add0~26_combout\ : std_logic;
SIGNAL \U6|Add0~27\ : std_logic;
SIGNAL \U6|Add0~28_combout\ : std_logic;
SIGNAL \U6|Add0~29\ : std_logic;
SIGNAL \U6|Add0~30_combout\ : std_logic;
SIGNAL \U6|Equal1~5_combout\ : std_logic;
SIGNAL \U6|Equal1~8_combout\ : std_logic;
SIGNAL \U6|Add0~31\ : std_logic;
SIGNAL \U6|Add0~32_combout\ : std_logic;
SIGNAL \U6|Add0~33\ : std_logic;
SIGNAL \U6|Add0~34_combout\ : std_logic;
SIGNAL \U6|Add0~35\ : std_logic;
SIGNAL \U6|Add0~36_combout\ : std_logic;
SIGNAL \U6|Add0~37\ : std_logic;
SIGNAL \U6|Add0~38_combout\ : std_logic;
SIGNAL \U6|Add0~39\ : std_logic;
SIGNAL \U6|Add0~40_combout\ : std_logic;
SIGNAL \U6|Add0~41\ : std_logic;
SIGNAL \U6|Add0~42_combout\ : std_logic;
SIGNAL \U6|Add0~43\ : std_logic;
SIGNAL \U6|Add0~44_combout\ : std_logic;
SIGNAL \U6|Add0~45\ : std_logic;
SIGNAL \U6|Add0~46_combout\ : std_logic;
SIGNAL \U6|Add0~47\ : std_logic;
SIGNAL \U6|Add0~48_combout\ : std_logic;
SIGNAL \U6|Add0~49\ : std_logic;
SIGNAL \U6|Add0~50_combout\ : std_logic;
SIGNAL \U6|Add0~51\ : std_logic;
SIGNAL \U6|Add0~52_combout\ : std_logic;
SIGNAL \U6|Add0~53\ : std_logic;
SIGNAL \U6|Add0~54_combout\ : std_logic;
SIGNAL \U6|Add0~55\ : std_logic;
SIGNAL \U6|Add0~56_combout\ : std_logic;
SIGNAL \U6|Add0~57\ : std_logic;
SIGNAL \U6|Add0~58_combout\ : std_logic;
SIGNAL \U6|Add0~59\ : std_logic;
SIGNAL \U6|Add0~60_combout\ : std_logic;
SIGNAL \U6|Add0~61\ : std_logic;
SIGNAL \U6|Add0~62_combout\ : std_logic;
SIGNAL \U6|Equal1~0_combout\ : std_logic;
SIGNAL \U6|Equal1~1_combout\ : std_logic;
SIGNAL \U6|Equal1~3_combout\ : std_logic;
SIGNAL \U6|Equal1~2_combout\ : std_logic;
SIGNAL \U6|Equal1~4_combout\ : std_logic;
SIGNAL \U6|active~0_combout\ : std_logic;
SIGNAL \U6|active~2_combout\ : std_logic;
SIGNAL \U6|counter~1_combout\ : std_logic;
SIGNAL \U6|Add0~3\ : std_logic;
SIGNAL \U6|Add0~4_combout\ : std_logic;
SIGNAL \U6|counter~0_combout\ : std_logic;
SIGNAL \U6|active~3_combout\ : std_logic;
SIGNAL \U6|active~4_combout\ : std_logic;
SIGNAL \U6|active~q\ : std_logic;
SIGNAL \U6|load~0_combout\ : std_logic;
SIGNAL \U6|load~q\ : std_logic;
SIGNAL \U3|u_c|cnt[1]~2_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[0]~3_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~0_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[5]~4_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~1\ : std_logic;
SIGNAL \U3|u_c|Add0~2_combout\ : std_logic;
SIGNAL \U3|u_c|cnt~9_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[4]~1_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[6]~7_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~3\ : std_logic;
SIGNAL \U3|u_c|Add0~4_combout\ : std_logic;
SIGNAL \U3|u_c|cnt~12_combout\ : std_logic;
SIGNAL \U3|u_c|cnt~13_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~5\ : std_logic;
SIGNAL \U3|u_c|Add0~6_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[3]~10_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[3]~11_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~7\ : std_logic;
SIGNAL \U3|u_c|Add0~8_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[5]~0_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~9\ : std_logic;
SIGNAL \U3|u_c|Add0~10_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[6]~5_combout\ : std_logic;
SIGNAL \U3|u_c|Add0~11\ : std_logic;
SIGNAL \U3|u_c|Add0~12_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[6]~6_combout\ : std_logic;
SIGNAL \U3|u_c|cnt[6]~8_combout\ : std_logic;
SIGNAL \U3|u_c|Equal0~0_combout\ : std_logic;
SIGNAL \U3|u_c|Equal0~1_combout\ : std_logic;
SIGNAL \U3|u_c|proceso_habilitado~0_combout\ : std_logic;
SIGNAL \U3|u_c|proceso_habilitado~feeder_combout\ : std_logic;
SIGNAL \U3|u_c|proceso_habilitado~q\ : std_logic;
SIGNAL \U3|u_c|proceso_habilitado~clkctrl_outclk\ : std_logic;
SIGNAL \U2|fin~1_combout\ : std_logic;
SIGNAL \U1|llenado~0_combout\ : std_logic;
SIGNAL \U1|vaciado~3_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux6~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux5~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux4~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux3~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux2~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux1~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|Mux0~0_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux6~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux5~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux4~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux3~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux2~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux1~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Mux9~0_combout\ : std_logic;
SIGNAL \U5|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U5|Mux4~1_combout\ : std_logic;
SIGNAL \U5|Mux2~0_combout\ : std_logic;
SIGNAL \U1|alarma~0_combout\ : std_logic;
SIGNAL \U2|fin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|u_c|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U6|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|u_d|count1\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U6|ALT_INV_load~q\ : std_logic;
SIGNAL \U5|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \U3|u_deco_dece|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|u_deco_uni|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_encendida <= encendida;
ww_lleno <= lleno;
ww_cerrado <= cerrado;
ww_reloj <= reloj;
ww_reset <= reset;
llenado <= ww_llenado;
vaciado <= ww_vaciado;
tiempo_faltante1 <= ww_tiempo_faltante1;
tiempo_faltante2 <= ww_tiempo_faltante2;
giro_bcd <= ww_giro_bcd;
velocidad_bcd <= ww_velocidad_bcd;
alarma <= ww_alarma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U3|u_c|proceso_habilitado~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|u_c|proceso_habilitado~q\);

\U3|u_d|out1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|u_d|out1~q\);

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\U6|ALT_INV_load~q\ <= NOT \U6|load~q\;
\U5|ALT_INV_Mux4~0_combout\ <= NOT \U5|Mux4~0_combout\;
\U3|u_deco_dece|ALT_INV_Mux6~0_combout\ <= NOT \U3|u_deco_dece|Mux6~0_combout\;
\U3|u_deco_uni|ALT_INV_Mux6~0_combout\ <= NOT \U3|u_deco_uni|Mux6~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\llenado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|llenado~0_combout\,
	devoe => ww_devoe,
	o => \llenado~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\vaciado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|vaciado~3_combout\,
	devoe => ww_devoe,
	o => \vaciado~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\tiempo_faltante1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\tiempo_faltante1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\tiempo_faltante1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\tiempo_faltante1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\tiempo_faltante1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\tiempo_faltante1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\tiempo_faltante1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_uni|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\tiempo_faltante2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\tiempo_faltante2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\tiempo_faltante2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\tiempo_faltante2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\tiempo_faltante2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\tiempo_faltante2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\tiempo_faltante2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|u_deco_dece|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \tiempo_faltante2[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\giro_bcd[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\giro_bcd[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\giro_bcd[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\giro_bcd[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\giro_bcd[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\giro_bcd[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \giro_bcd[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\giro_bcd[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \giro_bcd[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\velocidad_bcd[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\velocidad_bcd[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\velocidad_bcd[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\velocidad_bcd[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\velocidad_bcd[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\velocidad_bcd[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \velocidad_bcd[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\velocidad_bcd[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \velocidad_bcd[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|alarma~0_combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\encendida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encendida,
	o => \encendida~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\cerrado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrado,
	o => \cerrado~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\lleno~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lleno,
	o => \lleno~input_o\);

-- Location: LCCOMB_X17_Y23_N26
\U0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Mux0~0_combout\ = (\encendida~input_o\ & (\cerrado~input_o\ & \lleno~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encendida~input_o\,
	datac => \cerrado~input_o\,
	datad => \lleno~input_o\,
	combout => \U0|Mux0~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\reloj~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G9
\reloj~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y2_N8
\U3|u_d|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~0_combout\ = \U3|u_d|count1\(0) $ (VCC)
-- \U3|u_d|Add0~1\ = CARRY(\U3|u_d|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(0),
	datad => VCC,
	combout => \U3|u_d|Add0~0_combout\,
	cout => \U3|u_d|Add0~1\);

-- Location: FF_X19_Y2_N9
\U3|u_d|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(0));

-- Location: LCCOMB_X19_Y2_N10
\U3|u_d|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~2_combout\ = (\U3|u_d|count1\(1) & (!\U3|u_d|Add0~1\)) # (!\U3|u_d|count1\(1) & ((\U3|u_d|Add0~1\) # (GND)))
-- \U3|u_d|Add0~3\ = CARRY((!\U3|u_d|Add0~1\) # (!\U3|u_d|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(1),
	datad => VCC,
	cin => \U3|u_d|Add0~1\,
	combout => \U3|u_d|Add0~2_combout\,
	cout => \U3|u_d|Add0~3\);

-- Location: FF_X19_Y2_N11
\U3|u_d|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(1));

-- Location: LCCOMB_X19_Y2_N12
\U3|u_d|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~4_combout\ = (\U3|u_d|count1\(2) & (\U3|u_d|Add0~3\ $ (GND))) # (!\U3|u_d|count1\(2) & (!\U3|u_d|Add0~3\ & VCC))
-- \U3|u_d|Add0~5\ = CARRY((\U3|u_d|count1\(2) & !\U3|u_d|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(2),
	datad => VCC,
	cin => \U3|u_d|Add0~3\,
	combout => \U3|u_d|Add0~4_combout\,
	cout => \U3|u_d|Add0~5\);

-- Location: FF_X19_Y2_N13
\U3|u_d|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(2));

-- Location: LCCOMB_X19_Y2_N14
\U3|u_d|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~6_combout\ = (\U3|u_d|count1\(3) & (!\U3|u_d|Add0~5\)) # (!\U3|u_d|count1\(3) & ((\U3|u_d|Add0~5\) # (GND)))
-- \U3|u_d|Add0~7\ = CARRY((!\U3|u_d|Add0~5\) # (!\U3|u_d|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(3),
	datad => VCC,
	cin => \U3|u_d|Add0~5\,
	combout => \U3|u_d|Add0~6_combout\,
	cout => \U3|u_d|Add0~7\);

-- Location: FF_X19_Y2_N15
\U3|u_d|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(3));

-- Location: LCCOMB_X19_Y2_N16
\U3|u_d|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~8_combout\ = (\U3|u_d|count1\(4) & (\U3|u_d|Add0~7\ $ (GND))) # (!\U3|u_d|count1\(4) & (!\U3|u_d|Add0~7\ & VCC))
-- \U3|u_d|Add0~9\ = CARRY((\U3|u_d|count1\(4) & !\U3|u_d|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(4),
	datad => VCC,
	cin => \U3|u_d|Add0~7\,
	combout => \U3|u_d|Add0~8_combout\,
	cout => \U3|u_d|Add0~9\);

-- Location: FF_X19_Y2_N17
\U3|u_d|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(4));

-- Location: LCCOMB_X19_Y2_N18
\U3|u_d|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~10_combout\ = (\U3|u_d|count1\(5) & (!\U3|u_d|Add0~9\)) # (!\U3|u_d|count1\(5) & ((\U3|u_d|Add0~9\) # (GND)))
-- \U3|u_d|Add0~11\ = CARRY((!\U3|u_d|Add0~9\) # (!\U3|u_d|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(5),
	datad => VCC,
	cin => \U3|u_d|Add0~9\,
	combout => \U3|u_d|Add0~10_combout\,
	cout => \U3|u_d|Add0~11\);

-- Location: FF_X19_Y2_N19
\U3|u_d|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(5));

-- Location: LCCOMB_X19_Y2_N20
\U3|u_d|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~12_combout\ = (\U3|u_d|count1\(6) & (\U3|u_d|Add0~11\ $ (GND))) # (!\U3|u_d|count1\(6) & (!\U3|u_d|Add0~11\ & VCC))
-- \U3|u_d|Add0~13\ = CARRY((\U3|u_d|count1\(6) & !\U3|u_d|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(6),
	datad => VCC,
	cin => \U3|u_d|Add0~11\,
	combout => \U3|u_d|Add0~12_combout\,
	cout => \U3|u_d|Add0~13\);

-- Location: LCCOMB_X19_Y2_N6
\U3|u_d|count1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~8_combout\ = (\U3|u_d|Add0~12_combout\ & !\U3|u_d|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|Add0~12_combout\,
	datad => \U3|u_d|Equal0~7_combout\,
	combout => \U3|u_d|count1~8_combout\);

-- Location: FF_X19_Y2_N7
\U3|u_d|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(6));

-- Location: LCCOMB_X19_Y2_N22
\U3|u_d|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~14_combout\ = (\U3|u_d|count1\(7) & (!\U3|u_d|Add0~13\)) # (!\U3|u_d|count1\(7) & ((\U3|u_d|Add0~13\) # (GND)))
-- \U3|u_d|Add0~15\ = CARRY((!\U3|u_d|Add0~13\) # (!\U3|u_d|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(7),
	datad => VCC,
	cin => \U3|u_d|Add0~13\,
	combout => \U3|u_d|Add0~14_combout\,
	cout => \U3|u_d|Add0~15\);

-- Location: FF_X19_Y2_N23
\U3|u_d|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(7));

-- Location: LCCOMB_X19_Y2_N24
\U3|u_d|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~16_combout\ = (\U3|u_d|count1\(8) & (\U3|u_d|Add0~15\ $ (GND))) # (!\U3|u_d|count1\(8) & (!\U3|u_d|Add0~15\ & VCC))
-- \U3|u_d|Add0~17\ = CARRY((\U3|u_d|count1\(8) & !\U3|u_d|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(8),
	datad => VCC,
	cin => \U3|u_d|Add0~15\,
	combout => \U3|u_d|Add0~16_combout\,
	cout => \U3|u_d|Add0~17\);

-- Location: FF_X19_Y2_N25
\U3|u_d|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(8));

-- Location: LCCOMB_X19_Y2_N26
\U3|u_d|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~18_combout\ = (\U3|u_d|count1\(9) & (!\U3|u_d|Add0~17\)) # (!\U3|u_d|count1\(9) & ((\U3|u_d|Add0~17\) # (GND)))
-- \U3|u_d|Add0~19\ = CARRY((!\U3|u_d|Add0~17\) # (!\U3|u_d|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(9),
	datad => VCC,
	cin => \U3|u_d|Add0~17\,
	combout => \U3|u_d|Add0~18_combout\,
	cout => \U3|u_d|Add0~19\);

-- Location: FF_X19_Y2_N27
\U3|u_d|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(9));

-- Location: LCCOMB_X19_Y2_N28
\U3|u_d|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~20_combout\ = (\U3|u_d|count1\(10) & (\U3|u_d|Add0~19\ $ (GND))) # (!\U3|u_d|count1\(10) & (!\U3|u_d|Add0~19\ & VCC))
-- \U3|u_d|Add0~21\ = CARRY((\U3|u_d|count1\(10) & !\U3|u_d|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(10),
	datad => VCC,
	cin => \U3|u_d|Add0~19\,
	combout => \U3|u_d|Add0~20_combout\,
	cout => \U3|u_d|Add0~21\);

-- Location: FF_X19_Y2_N29
\U3|u_d|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(10));

-- Location: LCCOMB_X19_Y2_N30
\U3|u_d|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~22_combout\ = (\U3|u_d|count1\(11) & (!\U3|u_d|Add0~21\)) # (!\U3|u_d|count1\(11) & ((\U3|u_d|Add0~21\) # (GND)))
-- \U3|u_d|Add0~23\ = CARRY((!\U3|u_d|Add0~21\) # (!\U3|u_d|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(11),
	datad => VCC,
	cin => \U3|u_d|Add0~21\,
	combout => \U3|u_d|Add0~22_combout\,
	cout => \U3|u_d|Add0~23\);

-- Location: LCCOMB_X19_Y2_N0
\U3|u_d|count1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~7_combout\ = (\U3|u_d|Add0~22_combout\ & !\U3|u_d|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_d|Add0~22_combout\,
	datad => \U3|u_d|Equal0~7_combout\,
	combout => \U3|u_d|count1~7_combout\);

-- Location: FF_X19_Y2_N1
\U3|u_d|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(11));

-- Location: LCCOMB_X19_Y1_N0
\U3|u_d|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~24_combout\ = (\U3|u_d|count1\(12) & (\U3|u_d|Add0~23\ $ (GND))) # (!\U3|u_d|count1\(12) & (!\U3|u_d|Add0~23\ & VCC))
-- \U3|u_d|Add0~25\ = CARRY((\U3|u_d|count1\(12) & !\U3|u_d|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(12),
	datad => VCC,
	cin => \U3|u_d|Add0~23\,
	combout => \U3|u_d|Add0~24_combout\,
	cout => \U3|u_d|Add0~25\);

-- Location: LCCOMB_X20_Y1_N2
\U3|u_d|count1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~6_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~24_combout\,
	combout => \U3|u_d|count1~6_combout\);

-- Location: FF_X20_Y1_N3
\U3|u_d|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(12));

-- Location: LCCOMB_X19_Y1_N2
\U3|u_d|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~26_combout\ = (\U3|u_d|count1\(13) & (!\U3|u_d|Add0~25\)) # (!\U3|u_d|count1\(13) & ((\U3|u_d|Add0~25\) # (GND)))
-- \U3|u_d|Add0~27\ = CARRY((!\U3|u_d|Add0~25\) # (!\U3|u_d|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(13),
	datad => VCC,
	cin => \U3|u_d|Add0~25\,
	combout => \U3|u_d|Add0~26_combout\,
	cout => \U3|u_d|Add0~27\);

-- Location: LCCOMB_X20_Y1_N30
\U3|u_d|count1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~5_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~26_combout\,
	combout => \U3|u_d|count1~5_combout\);

-- Location: FF_X20_Y1_N31
\U3|u_d|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(13));

-- Location: LCCOMB_X19_Y1_N4
\U3|u_d|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~28_combout\ = (\U3|u_d|count1\(14) & (\U3|u_d|Add0~27\ $ (GND))) # (!\U3|u_d|count1\(14) & (!\U3|u_d|Add0~27\ & VCC))
-- \U3|u_d|Add0~29\ = CARRY((\U3|u_d|count1\(14) & !\U3|u_d|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(14),
	datad => VCC,
	cin => \U3|u_d|Add0~27\,
	combout => \U3|u_d|Add0~28_combout\,
	cout => \U3|u_d|Add0~29\);

-- Location: LCCOMB_X20_Y1_N20
\U3|u_d|count1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~4_combout\ = (\U3|u_d|Add0~28_combout\ & !\U3|u_d|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_d|Add0~28_combout\,
	datad => \U3|u_d|Equal0~7_combout\,
	combout => \U3|u_d|count1~4_combout\);

-- Location: FF_X20_Y1_N21
\U3|u_d|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(14));

-- Location: LCCOMB_X19_Y1_N6
\U3|u_d|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~30_combout\ = (\U3|u_d|count1\(15) & (!\U3|u_d|Add0~29\)) # (!\U3|u_d|count1\(15) & ((\U3|u_d|Add0~29\) # (GND)))
-- \U3|u_d|Add0~31\ = CARRY((!\U3|u_d|Add0~29\) # (!\U3|u_d|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(15),
	datad => VCC,
	cin => \U3|u_d|Add0~29\,
	combout => \U3|u_d|Add0~30_combout\,
	cout => \U3|u_d|Add0~31\);

-- Location: FF_X19_Y1_N7
\U3|u_d|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(15));

-- Location: LCCOMB_X19_Y1_N8
\U3|u_d|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~32_combout\ = (\U3|u_d|count1\(16) & (\U3|u_d|Add0~31\ $ (GND))) # (!\U3|u_d|count1\(16) & (!\U3|u_d|Add0~31\ & VCC))
-- \U3|u_d|Add0~33\ = CARRY((\U3|u_d|count1\(16) & !\U3|u_d|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(16),
	datad => VCC,
	cin => \U3|u_d|Add0~31\,
	combout => \U3|u_d|Add0~32_combout\,
	cout => \U3|u_d|Add0~33\);

-- Location: LCCOMB_X20_Y1_N14
\U3|u_d|count1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~3_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datac => \U3|u_d|Add0~32_combout\,
	combout => \U3|u_d|count1~3_combout\);

-- Location: FF_X20_Y1_N15
\U3|u_d|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(16));

-- Location: LCCOMB_X19_Y1_N10
\U3|u_d|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~34_combout\ = (\U3|u_d|count1\(17) & (!\U3|u_d|Add0~33\)) # (!\U3|u_d|count1\(17) & ((\U3|u_d|Add0~33\) # (GND)))
-- \U3|u_d|Add0~35\ = CARRY((!\U3|u_d|Add0~33\) # (!\U3|u_d|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(17),
	datad => VCC,
	cin => \U3|u_d|Add0~33\,
	combout => \U3|u_d|Add0~34_combout\,
	cout => \U3|u_d|Add0~35\);

-- Location: FF_X19_Y1_N11
\U3|u_d|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(17));

-- Location: LCCOMB_X19_Y1_N12
\U3|u_d|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~36_combout\ = (\U3|u_d|count1\(18) & (\U3|u_d|Add0~35\ $ (GND))) # (!\U3|u_d|count1\(18) & (!\U3|u_d|Add0~35\ & VCC))
-- \U3|u_d|Add0~37\ = CARRY((\U3|u_d|count1\(18) & !\U3|u_d|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(18),
	datad => VCC,
	cin => \U3|u_d|Add0~35\,
	combout => \U3|u_d|Add0~36_combout\,
	cout => \U3|u_d|Add0~37\);

-- Location: LCCOMB_X20_Y1_N18
\U3|u_d|count1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~2_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~36_combout\,
	combout => \U3|u_d|count1~2_combout\);

-- Location: FF_X20_Y1_N19
\U3|u_d|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(18));

-- Location: LCCOMB_X19_Y1_N14
\U3|u_d|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~38_combout\ = (\U3|u_d|count1\(19) & (!\U3|u_d|Add0~37\)) # (!\U3|u_d|count1\(19) & ((\U3|u_d|Add0~37\) # (GND)))
-- \U3|u_d|Add0~39\ = CARRY((!\U3|u_d|Add0~37\) # (!\U3|u_d|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(19),
	datad => VCC,
	cin => \U3|u_d|Add0~37\,
	combout => \U3|u_d|Add0~38_combout\,
	cout => \U3|u_d|Add0~39\);

-- Location: LCCOMB_X20_Y1_N8
\U3|u_d|count1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~1_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~38_combout\,
	combout => \U3|u_d|count1~1_combout\);

-- Location: FF_X20_Y1_N9
\U3|u_d|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(19));

-- Location: LCCOMB_X19_Y1_N16
\U3|u_d|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~40_combout\ = (\U3|u_d|count1\(20) & (\U3|u_d|Add0~39\ $ (GND))) # (!\U3|u_d|count1\(20) & (!\U3|u_d|Add0~39\ & VCC))
-- \U3|u_d|Add0~41\ = CARRY((\U3|u_d|count1\(20) & !\U3|u_d|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(20),
	datad => VCC,
	cin => \U3|u_d|Add0~39\,
	combout => \U3|u_d|Add0~40_combout\,
	cout => \U3|u_d|Add0~41\);

-- Location: LCCOMB_X19_Y1_N26
\U3|u_d|count1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~0_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~40_combout\,
	combout => \U3|u_d|count1~0_combout\);

-- Location: FF_X19_Y1_N27
\U3|u_d|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(20));

-- Location: LCCOMB_X19_Y1_N18
\U3|u_d|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~42_combout\ = (\U3|u_d|count1\(21) & (!\U3|u_d|Add0~41\)) # (!\U3|u_d|count1\(21) & ((\U3|u_d|Add0~41\) # (GND)))
-- \U3|u_d|Add0~43\ = CARRY((!\U3|u_d|Add0~41\) # (!\U3|u_d|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|count1\(21),
	datad => VCC,
	cin => \U3|u_d|Add0~41\,
	combout => \U3|u_d|Add0~42_combout\,
	cout => \U3|u_d|Add0~43\);

-- Location: LCCOMB_X19_Y1_N28
\U3|u_d|count1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~10_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~42_combout\,
	combout => \U3|u_d|count1~10_combout\);

-- Location: FF_X19_Y1_N29
\U3|u_d|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(21));

-- Location: LCCOMB_X19_Y1_N20
\U3|u_d|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~44_combout\ = (\U3|u_d|count1\(22) & (\U3|u_d|Add0~43\ $ (GND))) # (!\U3|u_d|count1\(22) & (!\U3|u_d|Add0~43\ & VCC))
-- \U3|u_d|Add0~45\ = CARRY((\U3|u_d|count1\(22) & !\U3|u_d|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(22),
	datad => VCC,
	cin => \U3|u_d|Add0~43\,
	combout => \U3|u_d|Add0~44_combout\,
	cout => \U3|u_d|Add0~45\);

-- Location: LCCOMB_X19_Y1_N30
\U3|u_d|count1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~11_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~44_combout\,
	combout => \U3|u_d|count1~11_combout\);

-- Location: FF_X19_Y1_N31
\U3|u_d|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(22));

-- Location: LCCOMB_X19_Y1_N22
\U3|u_d|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~46_combout\ = (\U3|u_d|count1\(23) & (!\U3|u_d|Add0~45\)) # (!\U3|u_d|count1\(23) & ((\U3|u_d|Add0~45\) # (GND)))
-- \U3|u_d|Add0~47\ = CARRY((!\U3|u_d|Add0~45\) # (!\U3|u_d|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(23),
	datad => VCC,
	cin => \U3|u_d|Add0~45\,
	combout => \U3|u_d|Add0~46_combout\,
	cout => \U3|u_d|Add0~47\);

-- Location: FF_X19_Y1_N23
\U3|u_d|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(23));

-- Location: LCCOMB_X20_Y1_N22
\U3|u_d|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~6_combout\ = (\U3|u_d|count1\(22) & (!\U3|u_d|count1\(23) & (\U3|u_d|count1\(21) & \U3|u_d|count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(22),
	datab => \U3|u_d|count1\(23),
	datac => \U3|u_d|count1\(21),
	datad => \U3|u_d|count1\(0),
	combout => \U3|u_d|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y1_N24
\U3|u_d|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Add0~48_combout\ = \U3|u_d|Add0~47\ $ (!\U3|u_d|count1\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|u_d|count1\(24),
	cin => \U3|u_d|Add0~47\,
	combout => \U3|u_d|Add0~48_combout\);

-- Location: LCCOMB_X20_Y1_N28
\U3|u_d|count1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|count1~9_combout\ = (!\U3|u_d|Equal0~7_combout\ & \U3|u_d|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~7_combout\,
	datad => \U3|u_d|Add0~48_combout\,
	combout => \U3|u_d|count1~9_combout\);

-- Location: FF_X20_Y1_N29
\U3|u_d|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|count1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|count1\(24));

-- Location: LCCOMB_X19_Y2_N2
\U3|u_d|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~5_combout\ = (\U3|u_d|count1\(1) & (\U3|u_d|count1\(4) & (\U3|u_d|count1\(3) & \U3|u_d|count1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(1),
	datab => \U3|u_d|count1\(4),
	datac => \U3|u_d|count1\(3),
	datad => \U3|u_d|count1\(2),
	combout => \U3|u_d|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y1_N6
\U3|u_d|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~1_combout\ = (\U3|u_d|count1\(13) & (\U3|u_d|count1\(14) & (\U3|u_d|count1\(16) & !\U3|u_d|count1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(13),
	datab => \U3|u_d|count1\(14),
	datac => \U3|u_d|count1\(16),
	datad => \U3|u_d|count1\(15),
	combout => \U3|u_d|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y1_N4
\U3|u_d|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~0_combout\ = (!\U3|u_d|count1\(17) & (\U3|u_d|count1\(18) & (\U3|u_d|count1\(19) & \U3|u_d|count1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(17),
	datab => \U3|u_d|count1\(18),
	datac => \U3|u_d|count1\(19),
	datad => \U3|u_d|count1\(20),
	combout => \U3|u_d|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y1_N26
\U3|u_d|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~2_combout\ = (!\U3|u_d|count1\(10) & (\U3|u_d|count1\(12) & (!\U3|u_d|count1\(9) & \U3|u_d|count1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(10),
	datab => \U3|u_d|count1\(12),
	datac => \U3|u_d|count1\(9),
	datad => \U3|u_d|count1\(11),
	combout => \U3|u_d|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y2_N4
\U3|u_d|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~3_combout\ = (!\U3|u_d|count1\(6) & (\U3|u_d|count1\(5) & (!\U3|u_d|count1\(7) & !\U3|u_d|count1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|count1\(6),
	datab => \U3|u_d|count1\(5),
	datac => \U3|u_d|count1\(7),
	datad => \U3|u_d|count1\(8),
	combout => \U3|u_d|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y1_N16
\U3|u_d|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~4_combout\ = (\U3|u_d|Equal0~1_combout\ & (\U3|u_d|Equal0~0_combout\ & (\U3|u_d|Equal0~2_combout\ & \U3|u_d|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~1_combout\,
	datab => \U3|u_d|Equal0~0_combout\,
	datac => \U3|u_d|Equal0~2_combout\,
	datad => \U3|u_d|Equal0~3_combout\,
	combout => \U3|u_d|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y1_N10
\U3|u_d|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|Equal0~7_combout\ = (\U3|u_d|Equal0~6_combout\ & (\U3|u_d|count1\(24) & (\U3|u_d|Equal0~5_combout\ & \U3|u_d|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_d|Equal0~6_combout\,
	datab => \U3|u_d|count1\(24),
	datac => \U3|u_d|Equal0~5_combout\,
	datad => \U3|u_d|Equal0~4_combout\,
	combout => \U3|u_d|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y1_N12
\U3|u_d|out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|out1~0_combout\ = \U3|u_d|out1~q\ $ (\U3|u_d|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|out1~q\,
	datad => \U3|u_d|Equal0~7_combout\,
	combout => \U3|u_d|out1~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\U3|u_d|out1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_d|out1~feeder_combout\ = \U3|u_d|out1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_d|out1~0_combout\,
	combout => \U3|u_d|out1~feeder_combout\);

-- Location: FF_X20_Y1_N25
\U3|u_d|out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U3|u_d|out1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_d|out1~q\);

-- Location: CLKCTRL_G19
\U3|u_d|out1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|u_d|out1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|u_d|out1~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y23_N4
\U2|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|fin~0_combout\ = (!\U2|fin\(0) & !\U2|fin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|fin\(0),
	datad => \U2|fin\(3),
	combout => \U2|fin~0_combout\);

-- Location: FF_X17_Y23_N5
\U2|fin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_c|proceso_habilitado~clkctrl_outclk\,
	d => \U2|fin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|fin\(0));

-- Location: LCCOMB_X17_Y23_N22
\U2|fin[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|fin[3]~3_combout\ = (\U2|fin\(3)) # ((\U2|fin\(2) & (\U2|fin\(0) & \U2|fin\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(2),
	datab => \U2|fin\(0),
	datac => \U2|fin\(3),
	datad => \U2|fin\(1),
	combout => \U2|fin[3]~3_combout\);

-- Location: FF_X17_Y23_N23
\U2|fin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_c|proceso_habilitado~clkctrl_outclk\,
	d => \U2|fin[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|fin\(3));

-- Location: LCCOMB_X17_Y23_N30
\U2|fin~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|fin~2_combout\ = (!\U2|fin\(3) & (\U2|fin\(2) $ (((\U2|fin\(0) & \U2|fin\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(3),
	datab => \U2|fin\(0),
	datac => \U2|fin\(2),
	datad => \U2|fin\(1),
	combout => \U2|fin~2_combout\);

-- Location: FF_X17_Y23_N31
\U2|fin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_c|proceso_habilitado~clkctrl_outclk\,
	d => \U2|fin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|fin\(2));

-- Location: LCCOMB_X17_Y23_N10
\U1|cout[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cout[3]~0_combout\ = (\U0|Mux0~0_combout\ & ((\U2|fin\(1)) # ((\U2|fin\(2)) # (\U2|fin\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(1),
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U1|cout[3]~0_combout\);

-- Location: LCCOMB_X16_Y24_N0
\U6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~0_combout\ = \U6|counter\(0) $ (VCC)
-- \U6|Add0~1\ = CARRY(\U6|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(0),
	datad => VCC,
	combout => \U6|Add0~0_combout\,
	cout => \U6|Add0~1\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X17_Y23_N20
\U1|vaciado~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vaciado~2_combout\ = (!\U2|fin\(1) & !\U2|fin\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|fin\(1),
	datad => \U2|fin\(0),
	combout => \U1|vaciado~2_combout\);

-- Location: LCCOMB_X17_Y23_N18
\U6|load~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|load~1_combout\ = (\U6|active~q\) # ((\U0|Mux0~0_combout\ & ((\U2|fin\(2)) # (!\U1|vaciado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U6|active~q\,
	datac => \U2|fin\(2),
	datad => \U1|vaciado~2_combout\,
	combout => \U6|load~1_combout\);

-- Location: FF_X16_Y24_N1
\U6|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(0));

-- Location: LCCOMB_X16_Y24_N2
\U6|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~2_combout\ = (\U6|counter\(1) & (!\U6|Add0~1\)) # (!\U6|counter\(1) & ((\U6|Add0~1\) # (GND)))
-- \U6|Add0~3\ = CARRY((!\U6|Add0~1\) # (!\U6|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(1),
	datad => VCC,
	cin => \U6|Add0~1\,
	combout => \U6|Add0~2_combout\,
	cout => \U6|Add0~3\);

-- Location: LCCOMB_X17_Y24_N22
\U6|active~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|active~1_combout\ = (!\U6|counter\(1) & (\U6|counter\(0) & \U6|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(1),
	datac => \U6|counter\(0),
	datad => \U6|counter\(2),
	combout => \U6|active~1_combout\);

-- Location: LCCOMB_X16_Y24_N4
\U6|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~4_combout\ = (\U6|counter\(2) & (\U6|Add0~3\ $ (GND))) # (!\U6|counter\(2) & (!\U6|Add0~3\ & VCC))
-- \U6|Add0~5\ = CARRY((\U6|counter\(2) & !\U6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(2),
	datad => VCC,
	cin => \U6|Add0~3\,
	combout => \U6|Add0~4_combout\,
	cout => \U6|Add0~5\);

-- Location: LCCOMB_X16_Y24_N6
\U6|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~6_combout\ = (\U6|counter\(3) & (!\U6|Add0~5\)) # (!\U6|counter\(3) & ((\U6|Add0~5\) # (GND)))
-- \U6|Add0~7\ = CARRY((!\U6|Add0~5\) # (!\U6|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(3),
	datad => VCC,
	cin => \U6|Add0~5\,
	combout => \U6|Add0~6_combout\,
	cout => \U6|Add0~7\);

-- Location: FF_X16_Y24_N7
\U6|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(3));

-- Location: LCCOMB_X16_Y24_N8
\U6|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~8_combout\ = (\U6|counter\(4) & (\U6|Add0~7\ $ (GND))) # (!\U6|counter\(4) & (!\U6|Add0~7\ & VCC))
-- \U6|Add0~9\ = CARRY((\U6|counter\(4) & !\U6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(4),
	datad => VCC,
	cin => \U6|Add0~7\,
	combout => \U6|Add0~8_combout\,
	cout => \U6|Add0~9\);

-- Location: FF_X16_Y24_N9
\U6|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(4));

-- Location: LCCOMB_X16_Y24_N10
\U6|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~10_combout\ = (\U6|counter\(5) & (!\U6|Add0~9\)) # (!\U6|counter\(5) & ((\U6|Add0~9\) # (GND)))
-- \U6|Add0~11\ = CARRY((!\U6|Add0~9\) # (!\U6|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(5),
	datad => VCC,
	cin => \U6|Add0~9\,
	combout => \U6|Add0~10_combout\,
	cout => \U6|Add0~11\);

-- Location: FF_X16_Y24_N11
\U6|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(5));

-- Location: LCCOMB_X16_Y24_N12
\U6|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~12_combout\ = (\U6|counter\(6) & (\U6|Add0~11\ $ (GND))) # (!\U6|counter\(6) & (!\U6|Add0~11\ & VCC))
-- \U6|Add0~13\ = CARRY((\U6|counter\(6) & !\U6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(6),
	datad => VCC,
	cin => \U6|Add0~11\,
	combout => \U6|Add0~12_combout\,
	cout => \U6|Add0~13\);

-- Location: FF_X16_Y24_N13
\U6|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(6));

-- Location: LCCOMB_X16_Y24_N14
\U6|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~14_combout\ = (\U6|counter\(7) & (!\U6|Add0~13\)) # (!\U6|counter\(7) & ((\U6|Add0~13\) # (GND)))
-- \U6|Add0~15\ = CARRY((!\U6|Add0~13\) # (!\U6|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(7),
	datad => VCC,
	cin => \U6|Add0~13\,
	combout => \U6|Add0~14_combout\,
	cout => \U6|Add0~15\);

-- Location: FF_X16_Y24_N15
\U6|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(7));

-- Location: LCCOMB_X17_Y24_N26
\U6|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~7_combout\ = (!\U6|counter\(6) & (!\U6|counter\(4) & (!\U6|counter\(7) & !\U6|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(6),
	datab => \U6|counter\(4),
	datac => \U6|counter\(7),
	datad => \U6|counter\(5),
	combout => \U6|Equal1~7_combout\);

-- Location: LCCOMB_X16_Y24_N16
\U6|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~16_combout\ = (\U6|counter\(8) & (\U6|Add0~15\ $ (GND))) # (!\U6|counter\(8) & (!\U6|Add0~15\ & VCC))
-- \U6|Add0~17\ = CARRY((\U6|counter\(8) & !\U6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(8),
	datad => VCC,
	cin => \U6|Add0~15\,
	combout => \U6|Add0~16_combout\,
	cout => \U6|Add0~17\);

-- Location: FF_X16_Y24_N17
\U6|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(8));

-- Location: LCCOMB_X16_Y24_N18
\U6|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~18_combout\ = (\U6|counter\(9) & (!\U6|Add0~17\)) # (!\U6|counter\(9) & ((\U6|Add0~17\) # (GND)))
-- \U6|Add0~19\ = CARRY((!\U6|Add0~17\) # (!\U6|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(9),
	datad => VCC,
	cin => \U6|Add0~17\,
	combout => \U6|Add0~18_combout\,
	cout => \U6|Add0~19\);

-- Location: FF_X16_Y24_N19
\U6|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(9));

-- Location: LCCOMB_X16_Y24_N20
\U6|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~20_combout\ = (\U6|counter\(10) & (\U6|Add0~19\ $ (GND))) # (!\U6|counter\(10) & (!\U6|Add0~19\ & VCC))
-- \U6|Add0~21\ = CARRY((\U6|counter\(10) & !\U6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(10),
	datad => VCC,
	cin => \U6|Add0~19\,
	combout => \U6|Add0~20_combout\,
	cout => \U6|Add0~21\);

-- Location: FF_X16_Y24_N21
\U6|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(10));

-- Location: LCCOMB_X16_Y24_N22
\U6|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~22_combout\ = (\U6|counter\(11) & (!\U6|Add0~21\)) # (!\U6|counter\(11) & ((\U6|Add0~21\) # (GND)))
-- \U6|Add0~23\ = CARRY((!\U6|Add0~21\) # (!\U6|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(11),
	datad => VCC,
	cin => \U6|Add0~21\,
	combout => \U6|Add0~22_combout\,
	cout => \U6|Add0~23\);

-- Location: FF_X16_Y24_N23
\U6|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(11));

-- Location: LCCOMB_X17_Y24_N24
\U6|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~6_combout\ = (!\U6|counter\(8) & (!\U6|counter\(11) & (!\U6|counter\(9) & !\U6|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(8),
	datab => \U6|counter\(11),
	datac => \U6|counter\(9),
	datad => \U6|counter\(10),
	combout => \U6|Equal1~6_combout\);

-- Location: LCCOMB_X16_Y24_N24
\U6|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~24_combout\ = (\U6|counter\(12) & (\U6|Add0~23\ $ (GND))) # (!\U6|counter\(12) & (!\U6|Add0~23\ & VCC))
-- \U6|Add0~25\ = CARRY((\U6|counter\(12) & !\U6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(12),
	datad => VCC,
	cin => \U6|Add0~23\,
	combout => \U6|Add0~24_combout\,
	cout => \U6|Add0~25\);

-- Location: FF_X16_Y24_N25
\U6|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(12));

-- Location: LCCOMB_X16_Y24_N26
\U6|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~26_combout\ = (\U6|counter\(13) & (!\U6|Add0~25\)) # (!\U6|counter\(13) & ((\U6|Add0~25\) # (GND)))
-- \U6|Add0~27\ = CARRY((!\U6|Add0~25\) # (!\U6|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(13),
	datad => VCC,
	cin => \U6|Add0~25\,
	combout => \U6|Add0~26_combout\,
	cout => \U6|Add0~27\);

-- Location: FF_X16_Y24_N27
\U6|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(13));

-- Location: LCCOMB_X16_Y24_N28
\U6|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~28_combout\ = (\U6|counter\(14) & (\U6|Add0~27\ $ (GND))) # (!\U6|counter\(14) & (!\U6|Add0~27\ & VCC))
-- \U6|Add0~29\ = CARRY((\U6|counter\(14) & !\U6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(14),
	datad => VCC,
	cin => \U6|Add0~27\,
	combout => \U6|Add0~28_combout\,
	cout => \U6|Add0~29\);

-- Location: FF_X16_Y24_N29
\U6|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(14));

-- Location: LCCOMB_X16_Y24_N30
\U6|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~30_combout\ = (\U6|counter\(15) & (!\U6|Add0~29\)) # (!\U6|counter\(15) & ((\U6|Add0~29\) # (GND)))
-- \U6|Add0~31\ = CARRY((!\U6|Add0~29\) # (!\U6|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(15),
	datad => VCC,
	cin => \U6|Add0~29\,
	combout => \U6|Add0~30_combout\,
	cout => \U6|Add0~31\);

-- Location: FF_X16_Y24_N31
\U6|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(15));

-- Location: LCCOMB_X17_Y24_N10
\U6|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~5_combout\ = (!\U6|counter\(15) & (!\U6|counter\(12) & (!\U6|counter\(13) & !\U6|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(15),
	datab => \U6|counter\(12),
	datac => \U6|counter\(13),
	datad => \U6|counter\(14),
	combout => \U6|Equal1~5_combout\);

-- Location: LCCOMB_X17_Y24_N0
\U6|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~8_combout\ = (\U6|Equal1~7_combout\ & (\U6|Equal1~6_combout\ & (!\U6|counter\(3) & \U6|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Equal1~7_combout\,
	datab => \U6|Equal1~6_combout\,
	datac => \U6|counter\(3),
	datad => \U6|Equal1~5_combout\,
	combout => \U6|Equal1~8_combout\);

-- Location: LCCOMB_X16_Y23_N0
\U6|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~32_combout\ = (\U6|counter\(16) & (\U6|Add0~31\ $ (GND))) # (!\U6|counter\(16) & (!\U6|Add0~31\ & VCC))
-- \U6|Add0~33\ = CARRY((\U6|counter\(16) & !\U6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(16),
	datad => VCC,
	cin => \U6|Add0~31\,
	combout => \U6|Add0~32_combout\,
	cout => \U6|Add0~33\);

-- Location: FF_X16_Y23_N1
\U6|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(16));

-- Location: LCCOMB_X16_Y23_N2
\U6|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~34_combout\ = (\U6|counter\(17) & (!\U6|Add0~33\)) # (!\U6|counter\(17) & ((\U6|Add0~33\) # (GND)))
-- \U6|Add0~35\ = CARRY((!\U6|Add0~33\) # (!\U6|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(17),
	datad => VCC,
	cin => \U6|Add0~33\,
	combout => \U6|Add0~34_combout\,
	cout => \U6|Add0~35\);

-- Location: FF_X16_Y23_N3
\U6|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(17));

-- Location: LCCOMB_X16_Y23_N4
\U6|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~36_combout\ = (\U6|counter\(18) & (\U6|Add0~35\ $ (GND))) # (!\U6|counter\(18) & (!\U6|Add0~35\ & VCC))
-- \U6|Add0~37\ = CARRY((\U6|counter\(18) & !\U6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(18),
	datad => VCC,
	cin => \U6|Add0~35\,
	combout => \U6|Add0~36_combout\,
	cout => \U6|Add0~37\);

-- Location: FF_X16_Y23_N5
\U6|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(18));

-- Location: LCCOMB_X16_Y23_N6
\U6|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~38_combout\ = (\U6|counter\(19) & (!\U6|Add0~37\)) # (!\U6|counter\(19) & ((\U6|Add0~37\) # (GND)))
-- \U6|Add0~39\ = CARRY((!\U6|Add0~37\) # (!\U6|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(19),
	datad => VCC,
	cin => \U6|Add0~37\,
	combout => \U6|Add0~38_combout\,
	cout => \U6|Add0~39\);

-- Location: FF_X16_Y23_N7
\U6|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(19));

-- Location: LCCOMB_X16_Y23_N8
\U6|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~40_combout\ = (\U6|counter\(20) & (\U6|Add0~39\ $ (GND))) # (!\U6|counter\(20) & (!\U6|Add0~39\ & VCC))
-- \U6|Add0~41\ = CARRY((\U6|counter\(20) & !\U6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(20),
	datad => VCC,
	cin => \U6|Add0~39\,
	combout => \U6|Add0~40_combout\,
	cout => \U6|Add0~41\);

-- Location: FF_X16_Y23_N9
\U6|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(20));

-- Location: LCCOMB_X16_Y23_N10
\U6|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~42_combout\ = (\U6|counter\(21) & (!\U6|Add0~41\)) # (!\U6|counter\(21) & ((\U6|Add0~41\) # (GND)))
-- \U6|Add0~43\ = CARRY((!\U6|Add0~41\) # (!\U6|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(21),
	datad => VCC,
	cin => \U6|Add0~41\,
	combout => \U6|Add0~42_combout\,
	cout => \U6|Add0~43\);

-- Location: FF_X16_Y23_N11
\U6|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(21));

-- Location: LCCOMB_X16_Y23_N12
\U6|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~44_combout\ = (\U6|counter\(22) & (\U6|Add0~43\ $ (GND))) # (!\U6|counter\(22) & (!\U6|Add0~43\ & VCC))
-- \U6|Add0~45\ = CARRY((\U6|counter\(22) & !\U6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(22),
	datad => VCC,
	cin => \U6|Add0~43\,
	combout => \U6|Add0~44_combout\,
	cout => \U6|Add0~45\);

-- Location: FF_X16_Y23_N13
\U6|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(22));

-- Location: LCCOMB_X16_Y23_N14
\U6|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~46_combout\ = (\U6|counter\(23) & (!\U6|Add0~45\)) # (!\U6|counter\(23) & ((\U6|Add0~45\) # (GND)))
-- \U6|Add0~47\ = CARRY((!\U6|Add0~45\) # (!\U6|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(23),
	datad => VCC,
	cin => \U6|Add0~45\,
	combout => \U6|Add0~46_combout\,
	cout => \U6|Add0~47\);

-- Location: FF_X16_Y23_N15
\U6|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(23));

-- Location: LCCOMB_X16_Y23_N16
\U6|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~48_combout\ = (\U6|counter\(24) & (\U6|Add0~47\ $ (GND))) # (!\U6|counter\(24) & (!\U6|Add0~47\ & VCC))
-- \U6|Add0~49\ = CARRY((\U6|counter\(24) & !\U6|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(24),
	datad => VCC,
	cin => \U6|Add0~47\,
	combout => \U6|Add0~48_combout\,
	cout => \U6|Add0~49\);

-- Location: FF_X16_Y23_N17
\U6|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(24));

-- Location: LCCOMB_X16_Y23_N18
\U6|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~50_combout\ = (\U6|counter\(25) & (!\U6|Add0~49\)) # (!\U6|counter\(25) & ((\U6|Add0~49\) # (GND)))
-- \U6|Add0~51\ = CARRY((!\U6|Add0~49\) # (!\U6|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(25),
	datad => VCC,
	cin => \U6|Add0~49\,
	combout => \U6|Add0~50_combout\,
	cout => \U6|Add0~51\);

-- Location: FF_X16_Y23_N19
\U6|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(25));

-- Location: LCCOMB_X16_Y23_N20
\U6|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~52_combout\ = (\U6|counter\(26) & (\U6|Add0~51\ $ (GND))) # (!\U6|counter\(26) & (!\U6|Add0~51\ & VCC))
-- \U6|Add0~53\ = CARRY((\U6|counter\(26) & !\U6|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(26),
	datad => VCC,
	cin => \U6|Add0~51\,
	combout => \U6|Add0~52_combout\,
	cout => \U6|Add0~53\);

-- Location: FF_X16_Y23_N21
\U6|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(26));

-- Location: LCCOMB_X16_Y23_N22
\U6|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~54_combout\ = (\U6|counter\(27) & (!\U6|Add0~53\)) # (!\U6|counter\(27) & ((\U6|Add0~53\) # (GND)))
-- \U6|Add0~55\ = CARRY((!\U6|Add0~53\) # (!\U6|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(27),
	datad => VCC,
	cin => \U6|Add0~53\,
	combout => \U6|Add0~54_combout\,
	cout => \U6|Add0~55\);

-- Location: FF_X16_Y23_N23
\U6|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(27));

-- Location: LCCOMB_X16_Y23_N24
\U6|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~56_combout\ = (\U6|counter\(28) & (\U6|Add0~55\ $ (GND))) # (!\U6|counter\(28) & (!\U6|Add0~55\ & VCC))
-- \U6|Add0~57\ = CARRY((\U6|counter\(28) & !\U6|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(28),
	datad => VCC,
	cin => \U6|Add0~55\,
	combout => \U6|Add0~56_combout\,
	cout => \U6|Add0~57\);

-- Location: FF_X16_Y23_N25
\U6|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(28));

-- Location: LCCOMB_X16_Y23_N26
\U6|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~58_combout\ = (\U6|counter\(29) & (!\U6|Add0~57\)) # (!\U6|counter\(29) & ((\U6|Add0~57\) # (GND)))
-- \U6|Add0~59\ = CARRY((!\U6|Add0~57\) # (!\U6|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(29),
	datad => VCC,
	cin => \U6|Add0~57\,
	combout => \U6|Add0~58_combout\,
	cout => \U6|Add0~59\);

-- Location: FF_X16_Y23_N27
\U6|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(29));

-- Location: LCCOMB_X16_Y23_N28
\U6|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~60_combout\ = (\U6|counter\(30) & (\U6|Add0~59\ $ (GND))) # (!\U6|counter\(30) & (!\U6|Add0~59\ & VCC))
-- \U6|Add0~61\ = CARRY((\U6|counter\(30) & !\U6|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|counter\(30),
	datad => VCC,
	cin => \U6|Add0~59\,
	combout => \U6|Add0~60_combout\,
	cout => \U6|Add0~61\);

-- Location: FF_X16_Y23_N29
\U6|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(30));

-- Location: LCCOMB_X16_Y23_N30
\U6|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add0~62_combout\ = \U6|counter\(31) $ (\U6|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(31),
	cin => \U6|Add0~61\,
	combout => \U6|Add0~62_combout\);

-- Location: FF_X16_Y23_N31
\U6|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|Add0~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(31));

-- Location: LCCOMB_X15_Y23_N12
\U6|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~0_combout\ = (!\U6|counter\(31) & (!\U6|counter\(29) & (!\U6|counter\(28) & !\U6|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(31),
	datab => \U6|counter\(29),
	datac => \U6|counter\(28),
	datad => \U6|counter\(30),
	combout => \U6|Equal1~0_combout\);

-- Location: LCCOMB_X15_Y23_N2
\U6|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~1_combout\ = (!\U6|counter\(26) & (!\U6|counter\(24) & (!\U6|counter\(27) & !\U6|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(26),
	datab => \U6|counter\(24),
	datac => \U6|counter\(27),
	datad => \U6|counter\(25),
	combout => \U6|Equal1~1_combout\);

-- Location: LCCOMB_X15_Y23_N22
\U6|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~3_combout\ = (!\U6|counter\(18) & (!\U6|counter\(16) & (!\U6|counter\(19) & !\U6|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(18),
	datab => \U6|counter\(16),
	datac => \U6|counter\(19),
	datad => \U6|counter\(17),
	combout => \U6|Equal1~3_combout\);

-- Location: LCCOMB_X15_Y23_N16
\U6|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~2_combout\ = (!\U6|counter\(23) & (!\U6|counter\(22) & (!\U6|counter\(20) & !\U6|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(23),
	datab => \U6|counter\(22),
	datac => \U6|counter\(20),
	datad => \U6|counter\(21),
	combout => \U6|Equal1~2_combout\);

-- Location: LCCOMB_X15_Y23_N0
\U6|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~4_combout\ = (\U6|Equal1~0_combout\ & (\U6|Equal1~1_combout\ & (\U6|Equal1~3_combout\ & \U6|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Equal1~0_combout\,
	datab => \U6|Equal1~1_combout\,
	datac => \U6|Equal1~3_combout\,
	datad => \U6|Equal1~2_combout\,
	combout => \U6|Equal1~4_combout\);

-- Location: LCCOMB_X17_Y23_N0
\U6|active~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|active~0_combout\ = (\U0|Mux0~0_combout\ & (!\U6|active~q\ & ((\U2|fin\(2)) # (!\U1|vaciado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U6|active~q\,
	datac => \U2|fin\(2),
	datad => \U1|vaciado~2_combout\,
	combout => \U6|active~0_combout\);

-- Location: LCCOMB_X17_Y24_N12
\U6|active~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|active~2_combout\ = (\U6|active~1_combout\ & (\U6|Equal1~8_combout\ & (\U6|Equal1~4_combout\ & \U6|active~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|active~1_combout\,
	datab => \U6|Equal1~8_combout\,
	datac => \U6|Equal1~4_combout\,
	datad => \U6|active~0_combout\,
	combout => \U6|active~2_combout\);

-- Location: LCCOMB_X17_Y24_N20
\U6|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|counter~1_combout\ = (\U6|Add0~2_combout\ & !\U6|active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add0~2_combout\,
	datad => \U6|active~2_combout\,
	combout => \U6|counter~1_combout\);

-- Location: FF_X17_Y24_N21
\U6|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(1));

-- Location: LCCOMB_X17_Y24_N6
\U6|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|counter~0_combout\ = (\U6|Add0~4_combout\ & !\U6|active~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|Add0~4_combout\,
	datad => \U6|active~2_combout\,
	combout => \U6|counter~0_combout\);

-- Location: FF_X17_Y24_N7
\U6|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U6|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|counter\(2));

-- Location: LCCOMB_X17_Y24_N2
\U6|active~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|active~3_combout\ = (!\U6|counter\(2) & (\U6|counter\(1) & (\U6|Equal1~4_combout\ & \U6|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(2),
	datab => \U6|counter\(1),
	datac => \U6|Equal1~4_combout\,
	datad => \U6|Equal1~8_combout\,
	combout => \U6|active~3_combout\);

-- Location: LCCOMB_X17_Y24_N4
\U6|active~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|active~4_combout\ = (\U6|active~2_combout\) # ((\U6|active~q\ & ((\U6|counter\(0)) # (!\U6|active~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|counter\(0),
	datab => \U6|active~3_combout\,
	datac => \U6|active~q\,
	datad => \U6|active~2_combout\,
	combout => \U6|active~4_combout\);

-- Location: FF_X17_Y24_N5
\U6|active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|active~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|active~q\);

-- Location: LCCOMB_X17_Y23_N28
\U6|load~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|load~0_combout\ = (!\U6|active~q\ & ((\U1|cout[3]~0_combout\) # (\U6|load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cout[3]~0_combout\,
	datac => \U6|load~q\,
	datad => \U6|active~q\,
	combout => \U6|load~0_combout\);

-- Location: FF_X17_Y23_N29
\U6|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \U6|load~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|load~q\);

-- Location: LCCOMB_X17_Y22_N6
\U3|u_c|cnt[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[1]~2_combout\ = (\U2|fin\(1) & (\U2|fin\(2))) # (!\U2|fin\(1) & ((\U2|fin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(2),
	datab => \U2|fin\(0),
	datad => \U2|fin\(1),
	combout => \U3|u_c|cnt[1]~2_combout\);

-- Location: LCCOMB_X17_Y23_N14
\U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|fin\(0) $ (\U2|fin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|fin\(0),
	datad => \U2|fin\(1),
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X16_Y22_N4
\U3|u_c|cnt[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[0]~3_combout\ = (\U2|fin\(2) & ((!\U2|Add0~0_combout\))) # (!\U2|fin\(2) & (\U2|fin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(1),
	datab => \U2|fin\(2),
	datad => \U2|Add0~0_combout\,
	combout => \U3|u_c|cnt[0]~3_combout\);

-- Location: LCCOMB_X16_Y22_N12
\U3|u_c|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~0_combout\ = \U3|u_c|cnt\(0) $ (VCC)
-- \U3|u_c|Add0~1\ = CARRY(\U3|u_c|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(0),
	datad => VCC,
	combout => \U3|u_c|Add0~0_combout\,
	cout => \U3|u_c|Add0~1\);

-- Location: LCCOMB_X16_Y22_N6
\U3|u_c|cnt[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[5]~4_combout\ = (\U0|Mux0~0_combout\ & ((\U6|load~q\) # ((!\U3|u_c|Equal0~1_combout\ & \cerrado~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|Equal0~1_combout\,
	datab => \cerrado~input_o\,
	datac => \U0|Mux0~0_combout\,
	datad => \U6|load~q\,
	combout => \U3|u_c|cnt[5]~4_combout\);

-- Location: FF_X16_Y22_N5
\U3|u_c|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[0]~3_combout\,
	asdata => \U3|u_c|Add0~0_combout\,
	sload => \U6|ALT_INV_load~q\,
	ena => \U3|u_c|cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(0));

-- Location: LCCOMB_X16_Y22_N14
\U3|u_c|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~2_combout\ = (\U3|u_c|cnt\(1) & (\U3|u_c|Add0~1\ & VCC)) # (!\U3|u_c|cnt\(1) & (!\U3|u_c|Add0~1\))
-- \U3|u_c|Add0~3\ = CARRY((!\U3|u_c|cnt\(1) & !\U3|u_c|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(1),
	datad => VCC,
	cin => \U3|u_c|Add0~1\,
	combout => \U3|u_c|Add0~2_combout\,
	cout => \U3|u_c|Add0~3\);

-- Location: FF_X17_Y22_N7
\U3|u_c|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[1]~2_combout\,
	asdata => \U3|u_c|Add0~2_combout\,
	sload => \U6|ALT_INV_load~q\,
	ena => \U3|u_c|cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(1));

-- Location: LCCOMB_X16_Y22_N28
\U3|u_c|cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt~9_combout\ = (\U2|fin\(0)) # (!\U2|fin\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U3|u_c|cnt~9_combout\);

-- Location: LCCOMB_X16_Y22_N8
\U3|u_c|cnt[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[4]~1_combout\ = (\U2|fin\(1) & ((!\U3|u_c|cnt~9_combout\))) # (!\U2|fin\(1) & (\U2|fin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(1),
	datab => \U2|fin\(0),
	datad => \U3|u_c|cnt~9_combout\,
	combout => \U3|u_c|cnt[4]~1_combout\);

-- Location: LCCOMB_X17_Y22_N18
\U3|u_c|cnt[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[6]~7_combout\ = (\U0|Mux0~0_combout\ & ((\U6|load~q\) # (!\U3|u_c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datac => \U6|load~q\,
	datad => \U3|u_c|Equal0~1_combout\,
	combout => \U3|u_c|cnt[6]~7_combout\);

-- Location: LCCOMB_X16_Y22_N16
\U3|u_c|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~4_combout\ = (\U3|u_c|cnt\(2) & ((GND) # (!\U3|u_c|Add0~3\))) # (!\U3|u_c|cnt\(2) & (\U3|u_c|Add0~3\ $ (GND)))
-- \U3|u_c|Add0~5\ = CARRY((\U3|u_c|cnt\(2)) # (!\U3|u_c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(2),
	datad => VCC,
	cin => \U3|u_c|Add0~3\,
	combout => \U3|u_c|Add0~4_combout\,
	cout => \U3|u_c|Add0~5\);

-- Location: LCCOMB_X16_Y22_N2
\U3|u_c|cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt~12_combout\ = (\U6|load~q\ & ((\U2|fin\(1) & ((!\U2|fin\(0)) # (!\U2|fin\(2)))) # (!\U2|fin\(1) & ((\U2|fin\(2)) # (\U2|fin\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|load~q\,
	datab => \U2|fin\(1),
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U3|u_c|cnt~12_combout\);

-- Location: LCCOMB_X16_Y22_N26
\U3|u_c|cnt~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt~13_combout\ = (\U3|u_c|cnt~12_combout\) # ((\U3|u_c|Add0~4_combout\ & !\U6|load~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|Add0~4_combout\,
	datac => \U6|load~q\,
	datad => \U3|u_c|cnt~12_combout\,
	combout => \U3|u_c|cnt~13_combout\);

-- Location: FF_X16_Y22_N27
\U3|u_c|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt~13_combout\,
	ena => \U3|u_c|cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(2));

-- Location: LCCOMB_X16_Y22_N18
\U3|u_c|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~6_combout\ = (\U3|u_c|cnt\(3) & (\U3|u_c|Add0~5\ & VCC)) # (!\U3|u_c|cnt\(3) & (!\U3|u_c|Add0~5\))
-- \U3|u_c|Add0~7\ = CARRY((!\U3|u_c|cnt\(3) & !\U3|u_c|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(3),
	datad => VCC,
	cin => \U3|u_c|Add0~5\,
	combout => \U3|u_c|Add0~6_combout\,
	cout => \U3|u_c|Add0~7\);

-- Location: LCCOMB_X17_Y22_N24
\U3|u_c|cnt[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[3]~10_combout\ = (\U6|load~q\ & (((\U1|cout[3]~0_combout\)))) # (!\U6|load~q\ & (\U3|u_c|Add0~6_combout\ & ((\U1|cout[3]~0_combout\) # (!\U3|u_c|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|Equal0~1_combout\,
	datab => \U3|u_c|Add0~6_combout\,
	datac => \U6|load~q\,
	datad => \U1|cout[3]~0_combout\,
	combout => \U3|u_c|cnt[3]~10_combout\);

-- Location: LCCOMB_X17_Y22_N12
\U3|u_c|cnt[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[3]~11_combout\ = (\U3|u_c|cnt[6]~7_combout\ & ((\U3|u_c|cnt[3]~10_combout\))) # (!\U3|u_c|cnt[6]~7_combout\ & (\U3|u_c|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt[6]~7_combout\,
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_c|cnt[3]~10_combout\,
	combout => \U3|u_c|cnt[3]~11_combout\);

-- Location: FF_X17_Y22_N13
\U3|u_c|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(3));

-- Location: LCCOMB_X16_Y22_N20
\U3|u_c|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~8_combout\ = (\U3|u_c|cnt\(4) & ((GND) # (!\U3|u_c|Add0~7\))) # (!\U3|u_c|cnt\(4) & (\U3|u_c|Add0~7\ $ (GND)))
-- \U3|u_c|Add0~9\ = CARRY((\U3|u_c|cnt\(4)) # (!\U3|u_c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(4),
	datad => VCC,
	cin => \U3|u_c|Add0~7\,
	combout => \U3|u_c|Add0~8_combout\,
	cout => \U3|u_c|Add0~9\);

-- Location: FF_X16_Y22_N9
\U3|u_c|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[4]~1_combout\,
	asdata => \U3|u_c|Add0~8_combout\,
	sload => \U6|ALT_INV_load~q\,
	ena => \U3|u_c|cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(4));

-- Location: LCCOMB_X16_Y22_N30
\U3|u_c|cnt[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[5]~0_combout\ = (\U2|fin\(2) & ((\U1|vaciado~2_combout\))) # (!\U2|fin\(2) & (\U2|fin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(1),
	datab => \U2|fin\(2),
	datad => \U1|vaciado~2_combout\,
	combout => \U3|u_c|cnt[5]~0_combout\);

-- Location: LCCOMB_X16_Y22_N22
\U3|u_c|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~10_combout\ = (\U3|u_c|cnt\(5) & (\U3|u_c|Add0~9\ & VCC)) # (!\U3|u_c|cnt\(5) & (!\U3|u_c|Add0~9\))
-- \U3|u_c|Add0~11\ = CARRY((!\U3|u_c|cnt\(5) & !\U3|u_c|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(5),
	datad => VCC,
	cin => \U3|u_c|Add0~9\,
	combout => \U3|u_c|Add0~10_combout\,
	cout => \U3|u_c|Add0~11\);

-- Location: FF_X16_Y22_N31
\U3|u_c|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[5]~0_combout\,
	asdata => \U3|u_c|Add0~10_combout\,
	sload => \U6|ALT_INV_load~q\,
	ena => \U3|u_c|cnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(5));

-- Location: LCCOMB_X17_Y22_N30
\U3|u_c|cnt[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[6]~5_combout\ = (\U2|fin\(2) & (\U2|fin\(1) & \U2|fin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(2),
	datac => \U2|fin\(1),
	datad => \U2|fin\(0),
	combout => \U3|u_c|cnt[6]~5_combout\);

-- Location: LCCOMB_X16_Y22_N24
\U3|u_c|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Add0~12_combout\ = \U3|u_c|Add0~11\ $ (\U3|u_c|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|u_c|cnt\(6),
	cin => \U3|u_c|Add0~11\,
	combout => \U3|u_c|Add0~12_combout\);

-- Location: LCCOMB_X17_Y22_N2
\U3|u_c|cnt[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[6]~6_combout\ = (\U6|load~q\ & (((\U3|u_c|cnt[6]~5_combout\)))) # (!\U6|load~q\ & (\U3|u_c|Add0~12_combout\ & ((\U3|u_c|cnt[6]~5_combout\) # (!\U3|u_c|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|Equal0~1_combout\,
	datab => \U6|load~q\,
	datac => \U3|u_c|cnt[6]~5_combout\,
	datad => \U3|u_c|Add0~12_combout\,
	combout => \U3|u_c|cnt[6]~6_combout\);

-- Location: LCCOMB_X17_Y22_N28
\U3|u_c|cnt[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|cnt[6]~8_combout\ = (\U3|u_c|cnt[6]~7_combout\ & ((\U3|u_c|cnt[6]~6_combout\))) # (!\U3|u_c|cnt[6]~7_combout\ & (\U3|u_c|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt[6]~7_combout\,
	datac => \U3|u_c|cnt\(6),
	datad => \U3|u_c|cnt[6]~6_combout\,
	combout => \U3|u_c|cnt[6]~8_combout\);

-- Location: FF_X17_Y22_N29
\U3|u_c|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|cnt[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|cnt\(6));

-- Location: LCCOMB_X16_Y22_N0
\U3|u_c|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Equal0~0_combout\ = (!\U3|u_c|cnt\(5) & (!\U3|u_c|cnt\(3) & (!\U3|u_c|cnt\(2) & !\U3|u_c|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(5),
	datab => \U3|u_c|cnt\(3),
	datac => \U3|u_c|cnt\(2),
	datad => \U3|u_c|cnt\(6),
	combout => \U3|u_c|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N10
\U3|u_c|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|Equal0~1_combout\ = (!\U3|u_c|cnt\(1) & (!\U3|u_c|cnt\(4) & (!\U3|u_c|cnt\(0) & \U3|u_c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(1),
	datab => \U3|u_c|cnt\(4),
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_c|Equal0~0_combout\,
	combout => \U3|u_c|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y22_N8
\U3|u_c|proceso_habilitado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|proceso_habilitado~0_combout\ = (\U0|Mux0~0_combout\ & (((!\U6|load~q\ & \U3|u_c|Equal0~1_combout\)))) # (!\U0|Mux0~0_combout\ & (\U3|u_c|proceso_habilitado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U3|u_c|proceso_habilitado~q\,
	datac => \U6|load~q\,
	datad => \U3|u_c|Equal0~1_combout\,
	combout => \U3|u_c|proceso_habilitado~0_combout\);

-- Location: LCCOMB_X17_Y22_N4
\U3|u_c|proceso_habilitado~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_c|proceso_habilitado~feeder_combout\ = \U3|u_c|proceso_habilitado~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|proceso_habilitado~0_combout\,
	combout => \U3|u_c|proceso_habilitado~feeder_combout\);

-- Location: FF_X17_Y22_N5
\U3|u_c|proceso_habilitado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_d|out1~clkctrl_outclk\,
	d => \U3|u_c|proceso_habilitado~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|u_c|proceso_habilitado~q\);

-- Location: CLKCTRL_G11
\U3|u_c|proceso_habilitado~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|u_c|proceso_habilitado~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|u_c|proceso_habilitado~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y23_N8
\U2|fin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|fin~1_combout\ = (!\U2|fin\(3) & (\U2|fin\(1) $ (\U2|fin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|fin\(3),
	datac => \U2|fin\(1),
	datad => \U2|fin\(0),
	combout => \U2|fin~1_combout\);

-- Location: FF_X17_Y23_N9
\U2|fin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|u_c|proceso_habilitado~clkctrl_outclk\,
	d => \U2|fin~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|fin\(1));

-- Location: LCCOMB_X17_Y22_N26
\U1|llenado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|llenado~0_combout\ = (\U0|Mux0~0_combout\ & (!\U2|fin\(1) & (!\U2|fin\(2) & \U2|fin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(1),
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U1|llenado~0_combout\);

-- Location: LCCOMB_X17_Y23_N12
\U1|vaciado~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vaciado~3_combout\ = (\U0|Mux0~0_combout\ & (!\U2|fin\(0) & (!\U2|fin\(1) & \U2|fin\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(0),
	datac => \U2|fin\(1),
	datad => \U2|fin\(2),
	combout => \U1|vaciado~3_combout\);

-- Location: LCCOMB_X19_Y25_N12
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U3|u_c|cnt\(4) $ (VCC)
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U3|u_c|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(4),
	datad => VCC,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y25_N14
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U3|u_c|cnt\(5) & (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U3|u_c|cnt\(5) & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U3|u_c|cnt\(5) & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(5),
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y25_N16
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U3|u_c|cnt\(6) & (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U3|u_c|cnt\(6) & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U3|u_c|cnt\(6) & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(6),
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y25_N18
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X20_Y25_N10
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\U3|u_c|cnt\(6) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(6),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X20_Y25_N20
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X20_Y25_N22
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X19_Y25_N4
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\U3|u_c|cnt\(5) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(5),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X20_Y25_N12
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\U3|u_c|cnt\(4) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(4),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X20_Y25_N18
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X20_Y25_N26
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\U3|u_c|cnt\(3) & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X20_Y25_N24
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\U3|u_c|cnt\(3) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X20_Y25_N0
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X20_Y25_N2
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X20_Y25_N4
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\)))))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X20_Y25_N6
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X20_Y25_N8
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y25_N28
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U3|u_c|cnt\(6)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \U3|u_c|cnt\(6),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X20_Y24_N20
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X20_Y24_N22
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X19_Y25_N30
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_c|cnt\(5))) 
-- # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(5),
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X20_Y25_N30
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_c|cnt\(4))) 
-- # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(4),
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X20_Y24_N4
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X20_Y24_N30
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X22_Y24_N4
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\U3|u_c|cnt\(3) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X21_Y25_N16
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\U3|u_c|cnt\(2) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(2),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X22_Y24_N6
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\U3|u_c|cnt\(2) & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(2),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X20_Y24_N6
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X20_Y24_N8
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X20_Y24_N10
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X20_Y24_N12
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X20_Y24_N14
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X20_Y24_N16
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X20_Y24_N0
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X21_Y24_N4
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X20_Y24_N26
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X20_Y24_N24
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X20_Y24_N2
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X20_Y24_N28
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X20_Y24_N18
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\U3|u_c|cnt\(3)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \U3|u_c|cnt\(3),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X21_Y24_N2
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X21_Y24_N8
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X21_Y24_N0
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\U3|u_c|cnt\(2) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(2),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X21_Y24_N30
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (\U3|u_c|cnt\(1) & !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(1),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X21_Y24_N28
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\U3|u_c|cnt\(1) & \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(1),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X21_Y24_N10
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datad => VCC,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y24_N12
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y24_N14
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))))
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y24_N16
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y24_N18
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y24_N20
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & 
-- !\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datad => VCC,
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X21_Y24_N22
\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X21_Y24_N26
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X21_Y24_N24
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCCOMB_X21_Y24_N6
\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\U3|u_c|cnt\(1))) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(1),
	datac => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCCOMB_X21_Y26_N20
\U3|u_deco_uni|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux6~0_combout\ = (\U3|u_c|cnt\(0) & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\U3|u_c|cnt\(0) & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\U3|u_deco_uni|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux5~0_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\U3|u_c|cnt\(0) & (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\U3|u_c|cnt\(0)) # 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y26_N16
\U3|u_deco_uni|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux4~0_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\U3|u_c|cnt\(0))))) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\U3|u_c|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y26_N22
\U3|u_deco_uni|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux3~0_combout\ = (\U3|u_c|cnt\(0) & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\U3|u_c|cnt\(0) & 
-- ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)) # 
-- (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & !\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y26_N12
\U3|u_deco_uni|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux2~0_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # 
-- (!\U3|u_c|cnt\(0))))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\U3|u_c|cnt\(0) & 
-- \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y26_N10
\U3|u_deco_uni|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux1~0_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((\U3|u_c|cnt\(0) & ((\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))) # (!\U3|u_c|cnt\(0) & 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\U3|u_c|cnt\(0) $ 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y26_N0
\U3|u_deco_uni|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_uni|Mux0~0_combout\ = (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (\U3|u_c|cnt\(0) & (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & (!\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (\U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (\U3|u_c|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datab => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datac => \U3|u_c|cnt\(0),
	datad => \U3|u_s|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \U3|u_deco_uni|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y25_N22
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U3|u_c|cnt\(4) $ (VCC)
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U3|u_c|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(4),
	datad => VCC,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X21_Y25_N24
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U3|u_c|cnt\(5) & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U3|u_c|cnt\(5) & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U3|u_c|cnt\(5) & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(5),
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X21_Y25_N26
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U3|u_c|cnt\(6) & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U3|u_c|cnt\(6) & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U3|u_c|cnt\(6) & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_c|cnt\(6),
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X21_Y25_N28
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X22_Y25_N12
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X21_Y25_N6
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\U3|u_c|cnt\(6) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(6),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X22_Y25_N10
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X21_Y25_N20
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\U3|u_c|cnt\(5) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(5),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X22_Y25_N26
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X22_Y25_N0
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\U3|u_c|cnt\(4) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(4),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X23_Y25_N6
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|u_c|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|u_c|cnt\(3),
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X23_Y25_N12
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|u_c|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|u_c|cnt\(3),
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X22_Y25_N16
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X22_Y25_N18
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X22_Y25_N20
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y25_N22
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y25_N24
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y25_N4
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U3|u_c|cnt\(4)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \U3|u_c|cnt\(4),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X23_Y25_N8
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X21_Y25_N10
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U3|u_c|cnt\(5)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U3|u_c|cnt\(5),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X24_Y25_N20
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X23_Y25_N14
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\U3|u_c|cnt\(3) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X23_Y25_N4
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X23_Y25_N16
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\U3|u_c|cnt\(2) & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(2),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X23_Y25_N18
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\U3|u_c|cnt\(2) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(2),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X24_Y25_N8
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y25_N10
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\)))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y25_N12
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y25_N14
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y25_N16
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y25_N4
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X24_Y25_N2
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X23_Y25_N10
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\U3|u_c|cnt\(3)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_c|cnt\(3),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X24_Y25_N0
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X24_Y25_N6
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X23_Y25_N30
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\U3|u_c|cnt\(2) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(2),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X23_Y24_N0
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\U3|u_c|cnt\(1) & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|u_c|cnt\(1),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X24_Y25_N18
\U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\U3|u_c|cnt\(1) & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|u_c|cnt\(1),
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X24_Y25_N22
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y25_N24
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X24_Y25_N26
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X24_Y25_N28
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y25_N30
\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y25_N24
\U3|u_deco_dece|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux6~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\U3|u_deco_dece|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux5~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y25_N0
\U3|u_deco_dece|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux4~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y25_N26
\U3|u_deco_dece|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux3~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y25_N20
\U3|u_deco_dece|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux2~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y25_N22
\U3|u_deco_dece|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux1~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y25_N28
\U3|u_deco_dece|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|u_deco_dece|Mux0~0_combout\ = (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|u_s|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|u_deco_dece|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y22_N22
\U1|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux9~0_combout\ = (\U0|Mux0~0_combout\ & ((\U2|fin\(2) & ((\U2|fin\(0)))) # (!\U2|fin\(2) & (\U2|fin\(1) & !\U2|fin\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(1),
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U1|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y23_N6
\U5|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux4~0_combout\ = (\U0|Mux0~0_combout\ & ((\U2|fin\(1)) # ((\U2|fin\(0) & \U2|fin\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(0),
	datac => \U2|fin\(1),
	datad => \U2|fin\(2),
	combout => \U5|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\U4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (!\U5|Mux4~0_combout\) # (!\U1|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux9~0_combout\,
	datad => \U5|Mux4~0_combout\,
	combout => \U4|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y26_N6
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U1|Mux9~0_combout\) # (!\U5|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Mux9~0_combout\,
	datad => \U5|Mux4~0_combout\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y22_N20
\U5|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux4~1_combout\ = (((!\U2|fin\(0)) # (!\U2|fin\(2))) # (!\U2|fin\(1))) # (!\U0|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(1),
	datac => \U2|fin\(2),
	datad => \U2|fin\(0),
	combout => \U5|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y23_N24
\U5|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux2~0_combout\ = (\U2|fin\(1) $ (((!\U2|fin\(2)) # (!\U2|fin\(0))))) # (!\U0|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mux0~0_combout\,
	datab => \U2|fin\(0),
	datac => \U2|fin\(1),
	datad => \U2|fin\(2),
	combout => \U5|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\U1|alarma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|alarma~0_combout\ = (\encendida~input_o\ & (\U2|fin\(3) & (\cerrado~input_o\ & \lleno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encendida~input_o\,
	datab => \U2|fin\(3),
	datac => \cerrado~input_o\,
	datad => \lleno~input_o\,
	combout => \U1|alarma~0_combout\);

ww_llenado <= \llenado~output_o\;

ww_vaciado <= \vaciado~output_o\;

ww_tiempo_faltante1(0) <= \tiempo_faltante1[0]~output_o\;

ww_tiempo_faltante1(1) <= \tiempo_faltante1[1]~output_o\;

ww_tiempo_faltante1(2) <= \tiempo_faltante1[2]~output_o\;

ww_tiempo_faltante1(3) <= \tiempo_faltante1[3]~output_o\;

ww_tiempo_faltante1(4) <= \tiempo_faltante1[4]~output_o\;

ww_tiempo_faltante1(5) <= \tiempo_faltante1[5]~output_o\;

ww_tiempo_faltante1(6) <= \tiempo_faltante1[6]~output_o\;

ww_tiempo_faltante2(0) <= \tiempo_faltante2[0]~output_o\;

ww_tiempo_faltante2(1) <= \tiempo_faltante2[1]~output_o\;

ww_tiempo_faltante2(2) <= \tiempo_faltante2[2]~output_o\;

ww_tiempo_faltante2(3) <= \tiempo_faltante2[3]~output_o\;

ww_tiempo_faltante2(4) <= \tiempo_faltante2[4]~output_o\;

ww_tiempo_faltante2(5) <= \tiempo_faltante2[5]~output_o\;

ww_tiempo_faltante2(6) <= \tiempo_faltante2[6]~output_o\;

ww_giro_bcd(0) <= \giro_bcd[0]~output_o\;

ww_giro_bcd(1) <= \giro_bcd[1]~output_o\;

ww_giro_bcd(2) <= \giro_bcd[2]~output_o\;

ww_giro_bcd(3) <= \giro_bcd[3]~output_o\;

ww_giro_bcd(4) <= \giro_bcd[4]~output_o\;

ww_giro_bcd(5) <= \giro_bcd[5]~output_o\;

ww_giro_bcd(6) <= \giro_bcd[6]~output_o\;

ww_velocidad_bcd(0) <= \velocidad_bcd[0]~output_o\;

ww_velocidad_bcd(1) <= \velocidad_bcd[1]~output_o\;

ww_velocidad_bcd(2) <= \velocidad_bcd[2]~output_o\;

ww_velocidad_bcd(3) <= \velocidad_bcd[3]~output_o\;

ww_velocidad_bcd(4) <= \velocidad_bcd[4]~output_o\;

ww_velocidad_bcd(5) <= \velocidad_bcd[5]~output_o\;

ww_velocidad_bcd(6) <= \velocidad_bcd[6]~output_o\;

ww_alarma <= \alarma~output_o\;
END structure;


