-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/16/2020 11:04:34"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	fetch IS
    PORT (
	clk : IN std_logic;
	je : IN std_logic;
	sel_MuxJump : IN std_logic;
	flag : IN std_logic;
	instrucaoOut : OUT std_logic_vector(16 DOWNTO 0);
	pinoTeste : OUT std_logic_vector(9 DOWNTO 0)
	);
END fetch;

-- Design Ports Information
-- instrucaoOut[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[15]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucaoOut[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- je	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_MuxJump	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fetch IS
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
SIGNAL ww_je : std_logic;
SIGNAL ww_sel_MuxJump : std_logic;
SIGNAL ww_flag : std_logic;
SIGNAL ww_instrucaoOut : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_pinoTeste : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \somPC|Add0~1_sumout\ : std_logic;
SIGNAL \flag~input_o\ : std_logic;
SIGNAL \je~input_o\ : std_logic;
SIGNAL \sel_MuxJump~input_o\ : std_logic;
SIGNAL \sel_MuxPC~combout\ : std_logic;
SIGNAL \somPC|Add0~2\ : std_logic;
SIGNAL \somPC|Add0~5_sumout\ : std_logic;
SIGNAL \somPC|Add0~18\ : std_logic;
SIGNAL \somPC|Add0~29_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \somPC|Add0~30\ : std_logic;
SIGNAL \somPC|Add0~33_sumout\ : std_logic;
SIGNAL \somPC|Add0~34\ : std_logic;
SIGNAL \somPC|Add0~37_sumout\ : std_logic;
SIGNAL \ROM|memROM~44_combout\ : std_logic;
SIGNAL \ROM|memROM~45_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \somPC|Add0~6\ : std_logic;
SIGNAL \somPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~46_combout\ : std_logic;
SIGNAL \ROM|memROM~47_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \somPC|Add0~22\ : std_logic;
SIGNAL \somPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \somPC|Add0~14\ : std_logic;
SIGNAL \somPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \somPC|Add0~26\ : std_logic;
SIGNAL \somPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \somPC|Add0~10\ : std_logic;
SIGNAL \somPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~43_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \ROM|memROM~31_combout\ : std_logic;
SIGNAL \ROM|memROM~30_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \ROM|memROM~34_combout\ : std_logic;
SIGNAL \ROM|memROM~36_combout\ : std_logic;
SIGNAL \ROM|memROM~35_combout\ : std_logic;
SIGNAL \ROM|memROM~48_combout\ : std_logic;
SIGNAL \ROM|memROM~38_combout\ : std_logic;
SIGNAL \ROM|memROM~39_combout\ : std_logic;
SIGNAL \ROM|memROM~40_combout\ : std_logic;
SIGNAL \ROM|memROM~41_combout\ : std_logic;
SIGNAL \ROM|memROM~37_combout\ : std_logic;
SIGNAL \ROM|memROM~42_combout\ : std_logic;
SIGNAL \registerPC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_sel_MuxJump~input_o\ : std_logic;
SIGNAL \ALT_INV_flag~input_o\ : std_logic;
SIGNAL \ALT_INV_je~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \registerPC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_je <= je;
ww_sel_MuxJump <= sel_MuxJump;
ww_flag <= flag;
instrucaoOut <= ww_instrucaoOut;
pinoTeste <= ww_pinoTeste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sel_MuxJump~input_o\ <= NOT \sel_MuxJump~input_o\;
\ALT_INV_flag~input_o\ <= NOT \flag~input_o\;
\ALT_INV_je~input_o\ <= NOT \je~input_o\;
\ROM|ALT_INV_memROM~47_combout\ <= NOT \ROM|memROM~47_combout\;
\ROM|ALT_INV_memROM~46_combout\ <= NOT \ROM|memROM~46_combout\;
\ROM|ALT_INV_memROM~45_combout\ <= NOT \ROM|memROM~45_combout\;
\ROM|ALT_INV_memROM~44_combout\ <= NOT \ROM|memROM~44_combout\;
\ROM|ALT_INV_memROM~43_combout\ <= NOT \ROM|memROM~43_combout\;
\ROM|ALT_INV_memROM~41_combout\ <= NOT \ROM|memROM~41_combout\;
\ROM|ALT_INV_memROM~40_combout\ <= NOT \ROM|memROM~40_combout\;
\ROM|ALT_INV_memROM~39_combout\ <= NOT \ROM|memROM~39_combout\;
\ROM|ALT_INV_memROM~38_combout\ <= NOT \ROM|memROM~38_combout\;
\ROM|ALT_INV_memROM~37_combout\ <= NOT \ROM|memROM~37_combout\;
\ROM|ALT_INV_memROM~36_combout\ <= NOT \ROM|memROM~36_combout\;
\ROM|ALT_INV_memROM~35_combout\ <= NOT \ROM|memROM~35_combout\;
\ROM|ALT_INV_memROM~34_combout\ <= NOT \ROM|memROM~34_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\ROM|ALT_INV_memROM~31_combout\ <= NOT \ROM|memROM~31_combout\;
\ROM|ALT_INV_memROM~30_combout\ <= NOT \ROM|memROM~30_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\registerPC|ALT_INV_DOUT\(9) <= NOT \registerPC|DOUT\(9);
\registerPC|ALT_INV_DOUT\(8) <= NOT \registerPC|DOUT\(8);
\registerPC|ALT_INV_DOUT\(7) <= NOT \registerPC|DOUT\(7);
\registerPC|ALT_INV_DOUT\(4) <= NOT \registerPC|DOUT\(4);
\registerPC|ALT_INV_DOUT\(2) <= NOT \registerPC|DOUT\(2);
\registerPC|ALT_INV_DOUT\(6) <= NOT \registerPC|DOUT\(6);
\registerPC|ALT_INV_DOUT\(3) <= NOT \registerPC|DOUT\(3);
\registerPC|ALT_INV_DOUT\(5) <= NOT \registerPC|DOUT\(5);
\registerPC|ALT_INV_DOUT\(1) <= NOT \registerPC|DOUT\(1);
\registerPC|ALT_INV_DOUT\(0) <= NOT \registerPC|DOUT\(0);

-- Location: IOOBUF_X14_Y0_N36
\instrucaoOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(0));

-- Location: IOOBUF_X12_Y0_N53
\instrucaoOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(1));

-- Location: IOOBUF_X14_Y0_N53
\instrucaoOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(2));

-- Location: IOOBUF_X12_Y0_N19
\instrucaoOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(3));

-- Location: IOOBUF_X14_Y0_N19
\instrucaoOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(4));

-- Location: IOOBUF_X0_Y18_N62
\instrucaoOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(5));

-- Location: IOOBUF_X36_Y45_N2
\instrucaoOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucaoOut(6));

-- Location: IOOBUF_X54_Y19_N39
\instrucaoOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucaoOut(7));

-- Location: IOOBUF_X0_Y19_N22
\instrucaoOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucaoOut(8));

-- Location: IOOBUF_X54_Y16_N22
\instrucaoOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucaoOut(9));

-- Location: IOOBUF_X16_Y0_N42
\instrucaoOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~18_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(10));

-- Location: IOOBUF_X18_Y0_N36
\instrucaoOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~20_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(11));

-- Location: IOOBUF_X16_Y0_N76
\instrucaoOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~26_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(12));

-- Location: IOOBUF_X16_Y0_N59
\instrucaoOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~29_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(13));

-- Location: IOOBUF_X18_Y0_N53
\instrucaoOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~33_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(14));

-- Location: IOOBUF_X16_Y0_N93
\instrucaoOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~48_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(15));

-- Location: IOOBUF_X14_Y0_N2
\instrucaoOut[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~42_combout\,
	devoe => ww_devoe,
	o => ww_instrucaoOut(16));

-- Location: IOOBUF_X11_Y0_N36
\pinoTeste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_pinoTeste(0));

-- Location: IOOBUF_X11_Y0_N19
\pinoTeste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_pinoTeste(1));

-- Location: IOOBUF_X10_Y0_N59
\pinoTeste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_pinoTeste(2));

-- Location: IOOBUF_X10_Y0_N93
\pinoTeste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_pinoTeste(3));

-- Location: IOOBUF_X10_Y0_N76
\pinoTeste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_pinoTeste(4));

-- Location: IOOBUF_X10_Y0_N42
\pinoTeste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_pinoTeste(5));

-- Location: IOOBUF_X11_Y0_N2
\pinoTeste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pinoTeste(6));

-- Location: IOOBUF_X12_Y0_N36
\pinoTeste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_pinoTeste(7));

-- Location: IOOBUF_X12_Y0_N2
\pinoTeste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_pinoTeste(8));

-- Location: IOOBUF_X11_Y0_N53
\pinoTeste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \registerPC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_pinoTeste(9));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: LABCELL_X6_Y4_N30
\somPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~1_sumout\ = SUM(( \registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \somPC|Add0~2\ = CARRY(( \registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \somPC|Add0~1_sumout\,
	cout => \somPC|Add0~2\);

-- Location: IOIBUF_X18_Y0_N1
\flag~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag,
	o => \flag~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\je~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_je,
	o => \je~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\sel_MuxJump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_MuxJump,
	o => \sel_MuxJump~input_o\);

-- Location: LABCELL_X16_Y2_N24
sel_MuxPC : cyclonev_lcell_comb
-- Equation(s):
-- \sel_MuxPC~combout\ = ( \je~input_o\ & ( \sel_MuxJump~input_o\ ) ) # ( !\je~input_o\ & ( \sel_MuxJump~input_o\ ) ) # ( \je~input_o\ & ( !\sel_MuxJump~input_o\ & ( \flag~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_flag~input_o\,
	datae => \ALT_INV_je~input_o\,
	dataf => \ALT_INV_sel_MuxJump~input_o\,
	combout => \sel_MuxPC~combout\);

-- Location: FF_X6_Y4_N32
\registerPC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(0));

-- Location: LABCELL_X6_Y4_N33
\somPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~5_sumout\ = SUM(( \registerPC|DOUT\(1) ) + ( GND ) + ( \somPC|Add0~2\ ))
-- \somPC|Add0~6\ = CARRY(( \registerPC|DOUT\(1) ) + ( GND ) + ( \somPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(1),
	cin => \somPC|Add0~2\,
	sumout => \somPC|Add0~5_sumout\,
	cout => \somPC|Add0~6\);

-- Location: LABCELL_X6_Y4_N48
\somPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~17_sumout\ = SUM(( \registerPC|DOUT\(6) ) + ( GND ) + ( \somPC|Add0~10\ ))
-- \somPC|Add0~18\ = CARRY(( \registerPC|DOUT\(6) ) + ( GND ) + ( \somPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(6),
	cin => \somPC|Add0~10\,
	sumout => \somPC|Add0~17_sumout\,
	cout => \somPC|Add0~18\);

-- Location: LABCELL_X6_Y4_N51
\somPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~29_sumout\ = SUM(( \registerPC|DOUT\(7) ) + ( GND ) + ( \somPC|Add0~18\ ))
-- \somPC|Add0~30\ = CARRY(( \registerPC|DOUT\(7) ) + ( GND ) + ( \somPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(7),
	cin => \somPC|Add0~18\,
	sumout => \somPC|Add0~29_sumout\,
	cout => \somPC|Add0~30\);

-- Location: MLABCELL_X9_Y4_N27
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X6_Y4_N53
\registerPC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(7));

-- Location: LABCELL_X6_Y4_N54
\somPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~33_sumout\ = SUM(( \registerPC|DOUT\(8) ) + ( GND ) + ( \somPC|Add0~30\ ))
-- \somPC|Add0~34\ = CARRY(( \registerPC|DOUT\(8) ) + ( GND ) + ( \somPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(8),
	cin => \somPC|Add0~30\,
	sumout => \somPC|Add0~33_sumout\,
	cout => \somPC|Add0~34\);

-- Location: FF_X6_Y4_N56
\registerPC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(8));

-- Location: LABCELL_X6_Y4_N57
\somPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~37_sumout\ = SUM(( \registerPC|DOUT\(9) ) + ( GND ) + ( \somPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(9),
	cin => \somPC|Add0~34\,
	sumout => \somPC|Add0~37_sumout\);

-- Location: FF_X6_Y4_N59
\registerPC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~37_sumout\,
	asdata => \~GND~combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(9));

-- Location: LABCELL_X7_Y4_N36
\ROM|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~44_combout\ = ( \registerPC|DOUT\(6) & ( \registerPC|DOUT\(1) & ( (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(4)))) ) ) ) # ( !\registerPC|DOUT\(6) & ( \registerPC|DOUT\(1) & ( 
-- (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(2) & ((\registerPC|DOUT\(4)) # (\registerPC|DOUT\(0))))) # (\registerPC|DOUT\(5) & (((\registerPC|DOUT\(4))))) ) ) ) # ( \registerPC|DOUT\(6) & ( !\registerPC|DOUT\(1) & ( (\registerPC|DOUT\(0) & 
-- (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(4)))) ) ) ) # ( !\registerPC|DOUT\(6) & ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(4) & (!\registerPC|DOUT\(5) $ (((!\registerPC|DOUT\(0)) # (!\registerPC|DOUT\(2)))))) # 
-- (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(0) & (!\registerPC|DOUT\(5) & !\registerPC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011010000000010000000000000001000000111100110100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datab => \registerPC|ALT_INV_DOUT\(5),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(4),
	datae => \registerPC|ALT_INV_DOUT\(6),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~44_combout\);

-- Location: LABCELL_X7_Y4_N15
\ROM|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~45_combout\ = ( !\registerPC|DOUT\(2) & ( \registerPC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~45_combout\);

-- Location: LABCELL_X7_Y4_N30
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~44_combout\ & ( \ROM|memROM~45_combout\ & ( (!\registerPC|DOUT\(7) & (!\registerPC|DOUT\(9) & (!\registerPC|DOUT\(3) & !\registerPC|DOUT\(8)))) ) ) ) # ( \ROM|memROM~44_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- (!\registerPC|DOUT\(7) & (!\registerPC|DOUT\(9) & (\registerPC|DOUT\(3) & !\registerPC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(7),
	datab => \registerPC|ALT_INV_DOUT\(9),
	datac => \registerPC|ALT_INV_DOUT\(3),
	datad => \registerPC|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~44_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X6_Y4_N35
\registerPC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~5_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(1));

-- Location: LABCELL_X6_Y4_N36
\somPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~21_sumout\ = SUM(( \registerPC|DOUT\(2) ) + ( GND ) + ( \somPC|Add0~6\ ))
-- \somPC|Add0~22\ = CARRY(( \registerPC|DOUT\(2) ) + ( GND ) + ( \somPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(2),
	cin => \somPC|Add0~6\,
	sumout => \somPC|Add0~21_sumout\,
	cout => \somPC|Add0~22\);

-- Location: LABCELL_X6_Y4_N0
\ROM|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~46_combout\ = ( \registerPC|DOUT\(5) & ( \registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(1) & ((!\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(3)))) # (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(4))))) # (\registerPC|DOUT\(1) & 
-- (\registerPC|DOUT\(4) & ((!\registerPC|DOUT\(3))))) ) ) ) # ( !\registerPC|DOUT\(5) & ( \registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(4) & (!\registerPC|DOUT\(1) & (\registerPC|DOUT\(2) & \registerPC|DOUT\(3)))) # (\registerPC|DOUT\(4) & 
-- ((!\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(3)))) # (\registerPC|DOUT\(2) & (\registerPC|DOUT\(1))))) ) ) ) # ( \registerPC|DOUT\(5) & ( !\registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(1) & ((\registerPC|DOUT\(3)) # 
-- (\registerPC|DOUT\(4)))) # (\registerPC|DOUT\(1) & (\registerPC|DOUT\(4) & \registerPC|DOUT\(3))))) ) ) ) # ( !\registerPC|DOUT\(5) & ( !\registerPC|DOUT\(0) & ( (\registerPC|DOUT\(4) & (\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(2)) # 
-- (\registerPC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001001000001011000000110001000010011011100100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(1),
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(3),
	datae => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~46_combout\);

-- Location: LABCELL_X7_Y4_N51
\ROM|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~47_combout\ = ( !\registerPC|DOUT\(3) & ( (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~47_combout\);

-- Location: LABCELL_X6_Y4_N6
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~46_combout\ & ( \ROM|memROM~47_combout\ & ( (!\registerPC|DOUT\(7) & (!\registerPC|DOUT\(6) & (!\registerPC|DOUT\(8) & !\registerPC|DOUT\(9)))) ) ) ) # ( !\ROM|memROM~46_combout\ & ( \ROM|memROM~47_combout\ & ( 
-- (!\registerPC|DOUT\(7) & (\registerPC|DOUT\(6) & (!\registerPC|DOUT\(8) & !\registerPC|DOUT\(9)))) ) ) ) # ( \ROM|memROM~46_combout\ & ( !\ROM|memROM~47_combout\ & ( (!\registerPC|DOUT\(7) & (!\registerPC|DOUT\(6) & (!\registerPC|DOUT\(8) & 
-- !\registerPC|DOUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000100000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(7),
	datab => \registerPC|ALT_INV_DOUT\(6),
	datac => \registerPC|ALT_INV_DOUT\(8),
	datad => \registerPC|ALT_INV_DOUT\(9),
	datae => \ROM|ALT_INV_memROM~46_combout\,
	dataf => \ROM|ALT_INV_memROM~47_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: FF_X6_Y4_N38
\registerPC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~21_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(2));

-- Location: LABCELL_X6_Y4_N39
\somPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~13_sumout\ = SUM(( \registerPC|DOUT\(3) ) + ( GND ) + ( \somPC|Add0~22\ ))
-- \somPC|Add0~14\ = CARRY(( \registerPC|DOUT\(3) ) + ( GND ) + ( \somPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(3),
	cin => \somPC|Add0~22\,
	sumout => \somPC|Add0~13_sumout\,
	cout => \somPC|Add0~14\);

-- Location: LABCELL_X6_Y4_N12
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \registerPC|DOUT\(4) & ( (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(3) $ (\registerPC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X6_Y4_N15
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \registerPC|DOUT\(4) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(5) & !\registerPC|DOUT\(2))) ) ) # ( !\registerPC|DOUT\(4) & ( (\registerPC|DOUT\(3) & \registerPC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(5),
	datad => \registerPC|ALT_INV_DOUT\(2),
	dataf => \registerPC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X6_Y4_N27
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\registerPC|DOUT\(7) & ( (!\registerPC|DOUT\(6) & (!\registerPC|DOUT\(9) & !\registerPC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(6),
	datac => \registerPC|ALT_INV_DOUT\(9),
	datad => \registerPC|ALT_INV_DOUT\(8),
	dataf => \registerPC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X7_Y4_N3
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \registerPC|DOUT\(3) & ( (\registerPC|DOUT\(2) & (\registerPC|DOUT\(4) & !\registerPC|DOUT\(5))) ) ) # ( !\registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(4) & !\registerPC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(4),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X6_Y4_N18
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~9_combout\ & ( (!\registerPC|DOUT\(1) & ((!\registerPC|DOUT\(0) & (\ROM|memROM~7_combout\)) # (\registerPC|DOUT\(0) & ((\ROM|memROM~8_combout\))))) # (\registerPC|DOUT\(1) & 
-- (((\registerPC|DOUT\(0))))) ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~9_combout\ & ( (!\registerPC|DOUT\(1) & ((!\registerPC|DOUT\(0) & (\ROM|memROM~7_combout\)) # (\registerPC|DOUT\(0) & ((\ROM|memROM~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010101000000000000000000010010100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X6_Y4_N41
\registerPC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~13_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(3));

-- Location: LABCELL_X6_Y4_N42
\somPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~25_sumout\ = SUM(( \registerPC|DOUT\(4) ) + ( GND ) + ( \somPC|Add0~14\ ))
-- \somPC|Add0~26\ = CARRY(( \registerPC|DOUT\(4) ) + ( GND ) + ( \somPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(4),
	cin => \somPC|Add0~14\,
	sumout => \somPC|Add0~25_sumout\,
	cout => \somPC|Add0~26\);

-- Location: LABCELL_X5_Y4_N24
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\registerPC|DOUT\(9) & ( !\registerPC|DOUT\(6) & ( (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(7) & !\registerPC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(7),
	datad => \registerPC|ALT_INV_DOUT\(8),
	datae => \registerPC|ALT_INV_DOUT\(9),
	dataf => \registerPC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X5_Y4_N36
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \registerPC|DOUT\(1) & ( \ROM|memROM~11_combout\ & ( (\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & \registerPC|DOUT\(0))) ) ) ) # ( !\registerPC|DOUT\(1) & ( \ROM|memROM~11_combout\ & ( (!\registerPC|DOUT\(2) & 
-- (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(3) $ (!\registerPC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \registerPC|ALT_INV_DOUT\(5),
	datae => \registerPC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: FF_X6_Y4_N44
\registerPC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~25_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(4));

-- Location: LABCELL_X6_Y4_N45
\somPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somPC|Add0~9_sumout\ = SUM(( \registerPC|DOUT\(5) ) + ( GND ) + ( \somPC|Add0~26\ ))
-- \somPC|Add0~10\ = CARRY(( \registerPC|DOUT\(5) ) + ( GND ) + ( \somPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(5),
	cin => \somPC|Add0~26\,
	sumout => \somPC|Add0~9_sumout\,
	cout => \somPC|Add0~10\);

-- Location: LABCELL_X7_Y4_N12
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(0) & (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(1) & \registerPC|DOUT\(4)))) # (\registerPC|DOUT\(0) & (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(1) $ (\registerPC|DOUT\(4))))) ) 
-- ) # ( !\registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(0) & (\registerPC|DOUT\(2) & (\registerPC|DOUT\(1) & !\registerPC|DOUT\(4)))) # (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(1) & \registerPC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100000000010000100000010001000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(1),
	datad => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X6_Y4_N24
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~13_combout\ & ( (\registerPC|DOUT\(5) & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \registerPC|ALT_INV_DOUT\(5),
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: FF_X6_Y4_N47
\registerPC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~9_sumout\,
	asdata => \ROM|memROM~14_combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(5));

-- Location: FF_X6_Y4_N50
\registerPC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \somPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \sel_MuxPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerPC|DOUT\(6));

-- Location: LABCELL_X7_Y4_N24
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(5) & ((!\registerPC|DOUT\(1)) # (\registerPC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datac => \registerPC|ALT_INV_DOUT\(1),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X7_Y4_N57
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\registerPC|DOUT\(7) & ( (!\registerPC|DOUT\(9) & !\registerPC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \registerPC|ALT_INV_DOUT\(9),
	datad => \registerPC|ALT_INV_DOUT\(8),
	dataf => \registerPC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X7_Y4_N0
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \registerPC|DOUT\(6) & ( (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X7_Y4_N21
\ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~43_combout\ = ( \registerPC|DOUT\(4) & ( \registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(1) & (!\registerPC|DOUT\(2) & ((\registerPC|DOUT\(5)) # (\registerPC|DOUT\(3))))) # (\registerPC|DOUT\(1) & (!\registerPC|DOUT\(3))) ) ) ) # ( 
-- !\registerPC|DOUT\(4) & ( \registerPC|DOUT\(0) & ( (\registerPC|DOUT\(5) & ((!\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(1)) # (\registerPC|DOUT\(2)))) # (\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & !\registerPC|DOUT\(1))))) ) ) ) # ( 
-- \registerPC|DOUT\(4) & ( !\registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(2)) # ((\registerPC|DOUT\(3) & (!\registerPC|DOUT\(5) & \registerPC|DOUT\(1)))) ) ) ) # ( !\registerPC|DOUT\(4) & ( !\registerPC|DOUT\(0) & ( (!\registerPC|DOUT\(2) & 
-- (((\registerPC|DOUT\(5) & !\registerPC|DOUT\(1))))) # (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(3) & ((\registerPC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000100010110011001101110000001011000000100100110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(5),
	datad => \registerPC|ALT_INV_DOUT\(1),
	datae => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~43_combout\);

-- Location: LABCELL_X7_Y4_N42
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~43_combout\ & ( (\ROM|memROM~2_combout\ & ((!\registerPC|DOUT\(6)) # (\ROM|memROM~0_combout\))) ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~43_combout\ & ( (!\registerPC|DOUT\(6) & 
-- \ROM|memROM~2_combout\) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~43_combout\ & ( (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000101010100000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~43_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X10_Y4_N33
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(3)) # (\registerPC|DOUT\(5))))) # (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(3) $ 
-- (!\registerPC|DOUT\(2))))) ) ) # ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(0) $ (!\registerPC|DOUT\(5))))) # (\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(5) & (\registerPC|DOUT\(0))) # 
-- (\registerPC|DOUT\(5) & ((\registerPC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001011011000100000101101100010000110010100001000011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datab => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(5),
	datad => \registerPC|ALT_INV_DOUT\(2),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X10_Y4_N12
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( !\registerPC|DOUT\(4) & ( !\registerPC|DOUT\(3) & ( (\registerPC|DOUT\(6) & (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(0) & !\registerPC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(6),
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \registerPC|ALT_INV_DOUT\(5),
	datae => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X10_Y4_N30
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (\registerPC|DOUT\(3) & (!\registerPC|DOUT\(2)))) # (\registerPC|DOUT\(0) & ((!\registerPC|DOUT\(3) $ (\registerPC|DOUT\(2))) # (\registerPC|DOUT\(5)))) ) ) # ( 
-- !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(0) $ ((!\registerPC|DOUT\(3))))) # (\registerPC|DOUT\(5) & (!\registerPC|DOUT\(2) $ (((!\registerPC|DOUT\(0)) # (!\registerPC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000011110011001100001111001100001011101010110000101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datab => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X10_Y4_N42
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \registerPC|DOUT\(4) & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~2_combout\ & (((\ROM|memROM~16_combout\ & !\registerPC|DOUT\(6))) # (\ROM|memROM~17_combout\))) ) ) ) # ( !\registerPC|DOUT\(4) & ( \ROM|memROM~15_combout\ & ( 
-- (\ROM|memROM~2_combout\ & ((!\registerPC|DOUT\(6)) # (\ROM|memROM~17_combout\))) ) ) ) # ( \registerPC|DOUT\(4) & ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~2_combout\ & (((\ROM|memROM~16_combout\ & !\registerPC|DOUT\(6))) # (\ROM|memROM~17_combout\))) ) 
-- ) ) # ( !\registerPC|DOUT\(4) & ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~17_combout\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000111001100000000111100110000000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \registerPC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \registerPC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~18_combout\);

-- Location: LABCELL_X7_Y4_N6
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \registerPC|DOUT\(4) & ( \registerPC|DOUT\(3) & ( (\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(0) & ((!\registerPC|DOUT\(5)))) # (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(1))))) ) ) ) # ( !\registerPC|DOUT\(4) & ( 
-- \registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(2) & (!\registerPC|DOUT\(0) $ (((!\registerPC|DOUT\(1)) # (\registerPC|DOUT\(5)))))) # (\registerPC|DOUT\(2) & (\registerPC|DOUT\(0) & (\registerPC|DOUT\(1)))) ) ) ) # ( \registerPC|DOUT\(4) & ( 
-- !\registerPC|DOUT\(3) & ( (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(0) & ((\registerPC|DOUT\(5)) # (\registerPC|DOUT\(1))))) ) ) ) # ( !\registerPC|DOUT\(4) & ( !\registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(2) & (((!\registerPC|DOUT\(0) & 
-- \registerPC|DOUT\(5))) # (\registerPC|DOUT\(1)))) # (\registerPC|DOUT\(2) & (!\registerPC|DOUT\(5) $ (((!\registerPC|DOUT\(1)) # (\registerPC|DOUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011011011000001000100010000101001001000110101010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(2),
	datab => \registerPC|ALT_INV_DOUT\(0),
	datac => \registerPC|ALT_INV_DOUT\(1),
	datad => \registerPC|ALT_INV_DOUT\(5),
	datae => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X7_Y4_N48
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \ROM|memROM~19_combout\ & ( \ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \ROM|memROM~20_combout\);

-- Location: LABCELL_X5_Y4_N33
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \registerPC|DOUT\(5) & ( \registerPC|DOUT\(3) ) ) # ( !\registerPC|DOUT\(5) & ( (\registerPC|DOUT\(3) & \registerPC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~22_combout\);

-- Location: LABCELL_X5_Y4_N45
\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = ( \registerPC|DOUT\(0) & ( \registerPC|DOUT\(5) & ( (\registerPC|DOUT\(3) & (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(6)))) ) ) ) # ( !\registerPC|DOUT\(0) & ( \registerPC|DOUT\(5) & ( 
-- (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(6)))) ) ) ) # ( !\registerPC|DOUT\(0) & ( !\registerPC|DOUT\(5) & ( (!\registerPC|DOUT\(3) & (!\registerPC|DOUT\(4) & (!\registerPC|DOUT\(2) & 
-- \registerPC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000100000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(6),
	datae => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~25_combout\);

-- Location: LABCELL_X5_Y4_N0
\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( !\registerPC|DOUT\(6) & ( \registerPC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \registerPC|ALT_INV_DOUT\(2),
	dataf => \registerPC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~23_combout\);

-- Location: LABCELL_X5_Y4_N30
\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( !\registerPC|DOUT\(6) & ( (!\registerPC|DOUT\(2) & (\registerPC|DOUT\(1) & !\registerPC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(1),
	datad => \registerPC|ALT_INV_DOUT\(4),
	dataf => \registerPC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~24_combout\);

-- Location: LABCELL_X5_Y4_N3
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \registerPC|DOUT\(5) & ( (!\registerPC|DOUT\(3) & (!\registerPC|DOUT\(4) $ (((!\registerPC|DOUT\(1) & !\registerPC|DOUT\(0)))))) # (\registerPC|DOUT\(3) & (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(1) $ 
-- (\registerPC|DOUT\(4))))) ) ) # ( !\registerPC|DOUT\(5) & ( (!\registerPC|DOUT\(1) & (!\registerPC|DOUT\(4) $ (((!\registerPC|DOUT\(3)) # (!\registerPC|DOUT\(0)))))) # (\registerPC|DOUT\(1) & ((!\registerPC|DOUT\(3) & ((\registerPC|DOUT\(0)))) # 
-- (\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(0)) # (\registerPC|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101111001001001110111100101100000110010010110000011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(1),
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(3),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X5_Y4_N6
\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( ((\ROM|memROM~22_combout\ & \ROM|memROM~24_combout\)) # (\ROM|memROM~25_combout\) ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~2_combout\ & ( 
-- (((\ROM|memROM~22_combout\ & \ROM|memROM~24_combout\)) # (\ROM|memROM~23_combout\)) # (\ROM|memROM~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111011111110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~26_combout\);

-- Location: LABCELL_X10_Y4_N0
\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = ( \registerPC|DOUT\(5) & ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (((\registerPC|DOUT\(3))))) # (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(2)) # (\registerPC|DOUT\(4))))) ) ) ) # ( 
-- !\registerPC|DOUT\(5) & ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (\registerPC|DOUT\(3) & ((\registerPC|DOUT\(2)) # (\registerPC|DOUT\(4))))) # (\registerPC|DOUT\(0) & (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(3)))) ) ) ) # ( 
-- \registerPC|DOUT\(5) & ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (!\registerPC|DOUT\(3) $ (((!\registerPC|DOUT\(4)) # (\registerPC|DOUT\(2)))))) # (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(4)) # 
-- (\registerPC|DOUT\(2))))) ) ) ) # ( !\registerPC|DOUT\(5) & ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(0) & (\registerPC|DOUT\(4) & (!\registerPC|DOUT\(3) $ (\registerPC|DOUT\(2))))) # (\registerPC|DOUT\(0) & (\registerPC|DOUT\(2) & 
-- (!\registerPC|DOUT\(4) $ (!\registerPC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010110011010000101101000010010000110100101101000011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(0),
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(3),
	datad => \registerPC|ALT_INV_DOUT\(2),
	datae => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~27_combout\);

-- Location: LABCELL_X10_Y4_N9
\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = ( !\registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(4) & (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(2) & !\registerPC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(4),
	datab => \registerPC|ALT_INV_DOUT\(5),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~28_combout\);

-- Location: LABCELL_X10_Y4_N27
\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \registerPC|DOUT\(6) & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~28_combout\ ) ) ) # ( !\registerPC|DOUT\(6) & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~27_combout\) # (\ROM|memROM~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datae => \registerPC|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~29_combout\);

-- Location: LABCELL_X10_Y4_N6
\ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~31_combout\ = ( \registerPC|DOUT\(1) & ( (\registerPC|DOUT\(4) & ((!\registerPC|DOUT\(0)) # (!\registerPC|DOUT\(3)))) ) ) # ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(4) & (\registerPC|DOUT\(5) & ((!\registerPC|DOUT\(0)) # 
-- (!\registerPC|DOUT\(3))))) # (\registerPC|DOUT\(4) & (((\registerPC|DOUT\(0) & \registerPC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100101001000100010010101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(4),
	datab => \registerPC|ALT_INV_DOUT\(5),
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \registerPC|ALT_INV_DOUT\(3),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~31_combout\);

-- Location: LABCELL_X10_Y4_N21
\ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~30_combout\ = ( \registerPC|DOUT\(0) & ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & \registerPC|DOUT\(5)) ) ) ) # ( \registerPC|DOUT\(0) & ( !\registerPC|DOUT\(1) & ( (\registerPC|DOUT\(3) & !\registerPC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(5),
	datae => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~30_combout\);

-- Location: LABCELL_X7_Y4_N54
\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = ( \ROM|memROM~30_combout\ & ( (\ROM|memROM~6_combout\ & ((!\registerPC|DOUT\(2) & (\ROM|memROM~31_combout\)) # (\registerPC|DOUT\(2) & ((!\registerPC|DOUT\(4)))))) ) ) # ( !\ROM|memROM~30_combout\ & ( (!\registerPC|DOUT\(2) & 
-- (\ROM|memROM~31_combout\ & \ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000111000000100000011100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~31_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \registerPC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~30_combout\,
	combout => \ROM|memROM~32_combout\);

-- Location: LABCELL_X7_Y4_N27
\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = ( \ROM|memROM~2_combout\ & ( ((\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)) # (\ROM|memROM~32_combout\) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~32_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~32_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~33_combout\);

-- Location: LABCELL_X10_Y4_N51
\ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~34_combout\ = ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & !\registerPC|DOUT\(0))) # (\registerPC|DOUT\(3) & (!\registerPC|DOUT\(2) & \registerPC|DOUT\(0))) ) ) # ( !\registerPC|DOUT\(1) & ( \registerPC|DOUT\(2) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~34_combout\);

-- Location: LABCELL_X10_Y4_N48
\ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~36_combout\ = ( \registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & \registerPC|DOUT\(5))) ) ) # ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(5) & ((!\registerPC|DOUT\(2)) # 
-- (\registerPC|DOUT\(0))))) # (\registerPC|DOUT\(3) & ((!\registerPC|DOUT\(0) & ((\registerPC|DOUT\(5)))) # (\registerPC|DOUT\(0) & (\registerPC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111011011000000011101101100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datab => \registerPC|ALT_INV_DOUT\(2),
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \registerPC|ALT_INV_DOUT\(5),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~36_combout\);

-- Location: LABCELL_X10_Y4_N54
\ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~35_combout\ = ( \registerPC|DOUT\(0) & ( \registerPC|DOUT\(1) & ( (\registerPC|DOUT\(2)) # (\registerPC|DOUT\(3)) ) ) ) # ( !\registerPC|DOUT\(0) & ( \registerPC|DOUT\(1) ) ) # ( \registerPC|DOUT\(0) & ( !\registerPC|DOUT\(1) & ( 
-- (\registerPC|DOUT\(2)) # (\registerPC|DOUT\(3)) ) ) ) # ( !\registerPC|DOUT\(0) & ( !\registerPC|DOUT\(1) & ( (\registerPC|DOUT\(2)) # (\registerPC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datae => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~35_combout\);

-- Location: LABCELL_X10_Y4_N36
\ROM|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~48_combout\ = ( !\registerPC|DOUT\(4) & ( (\ROM|memROM~2_combout\ & ((!\registerPC|DOUT\(6) & (((\ROM|memROM~36_combout\)))) # (\registerPC|DOUT\(6) & (!\registerPC|DOUT\(5) & (!\ROM|memROM~35_combout\))))) ) ) # ( \registerPC|DOUT\(4) & ( 
-- (!\registerPC|DOUT\(6) & (((!\ROM|memROM~34_combout\ & (\ROM|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001000000000000001010000000000000111010100000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(6),
	datab => \registerPC|ALT_INV_DOUT\(5),
	datac => \ROM|ALT_INV_memROM~34_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \registerPC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~36_combout\,
	datag => \ROM|ALT_INV_memROM~35_combout\,
	combout => \ROM|memROM~48_combout\);

-- Location: LABCELL_X5_Y4_N54
\ROM|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~38_combout\ = ( \registerPC|DOUT\(6) & ( (\registerPC|DOUT\(1) & (!\registerPC|DOUT\(5) & (!\registerPC|DOUT\(0) & !\registerPC|DOUT\(2)))) ) ) # ( !\registerPC|DOUT\(6) & ( (!\registerPC|DOUT\(1) & (!\registerPC|DOUT\(5))) # 
-- (\registerPC|DOUT\(1) & ((!\registerPC|DOUT\(5) & ((!\registerPC|DOUT\(0)) # (!\registerPC|DOUT\(2)))) # (\registerPC|DOUT\(5) & (!\registerPC|DOUT\(0) & !\registerPC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011001000110111001100100001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(1),
	datab => \registerPC|ALT_INV_DOUT\(5),
	datac => \registerPC|ALT_INV_DOUT\(0),
	datad => \registerPC|ALT_INV_DOUT\(2),
	dataf => \registerPC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~38_combout\);

-- Location: LABCELL_X5_Y4_N15
\ROM|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~39_combout\ = ( !\registerPC|DOUT\(1) & ( (!\registerPC|DOUT\(3) & (\registerPC|DOUT\(2) & !\registerPC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datac => \registerPC|ALT_INV_DOUT\(2),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~39_combout\);

-- Location: LABCELL_X5_Y4_N18
\ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~40_combout\ = ( !\registerPC|DOUT\(2) & ( \registerPC|DOUT\(3) & ( (!\registerPC|DOUT\(6) & (!\registerPC|DOUT\(9) & (!\registerPC|DOUT\(7) & !\registerPC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(6),
	datab => \registerPC|ALT_INV_DOUT\(9),
	datac => \registerPC|ALT_INV_DOUT\(7),
	datad => \registerPC|ALT_INV_DOUT\(8),
	datae => \registerPC|ALT_INV_DOUT\(2),
	dataf => \registerPC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~40_combout\);

-- Location: LABCELL_X5_Y4_N12
\ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~41_combout\ = ( !\registerPC|DOUT\(7) & ( (!\registerPC|DOUT\(3) & (!\registerPC|DOUT\(4) & (!\registerPC|DOUT\(8) & !\registerPC|DOUT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(3),
	datab => \registerPC|ALT_INV_DOUT\(4),
	datac => \registerPC|ALT_INV_DOUT\(8),
	datad => \registerPC|ALT_INV_DOUT\(9),
	dataf => \registerPC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~41_combout\);

-- Location: LABCELL_X5_Y4_N57
\ROM|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~37_combout\ = ( \registerPC|DOUT\(5) & ( (\registerPC|DOUT\(0) & (!\registerPC|DOUT\(1) $ (\registerPC|DOUT\(4)))) ) ) # ( !\registerPC|DOUT\(5) & ( (\registerPC|DOUT\(1) & (\registerPC|DOUT\(4) & \registerPC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \registerPC|ALT_INV_DOUT\(1),
	datac => \registerPC|ALT_INV_DOUT\(4),
	datad => \registerPC|ALT_INV_DOUT\(0),
	dataf => \registerPC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~37_combout\);

-- Location: LABCELL_X5_Y4_N48
\ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~42_combout\ = ( \ROM|memROM~37_combout\ & ( \ROM|memROM~11_combout\ & ( (((\ROM|memROM~38_combout\ & \ROM|memROM~41_combout\)) # (\ROM|memROM~40_combout\)) # (\ROM|memROM~39_combout\) ) ) ) # ( !\ROM|memROM~37_combout\ & ( 
-- \ROM|memROM~11_combout\ & ( ((\ROM|memROM~38_combout\ & \ROM|memROM~41_combout\)) # (\ROM|memROM~39_combout\) ) ) ) # ( \ROM|memROM~37_combout\ & ( !\ROM|memROM~11_combout\ & ( ((\ROM|memROM~38_combout\ & \ROM|memROM~41_combout\)) # 
-- (\ROM|memROM~40_combout\) ) ) ) # ( !\ROM|memROM~37_combout\ & ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~38_combout\ & \ROM|memROM~41_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101111100110011011101110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~38_combout\,
	datab => \ROM|ALT_INV_memROM~39_combout\,
	datac => \ROM|ALT_INV_memROM~40_combout\,
	datad => \ROM|ALT_INV_memROM~41_combout\,
	datae => \ROM|ALT_INV_memROM~37_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~42_combout\);
END structure;


