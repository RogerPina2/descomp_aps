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

-- DATE "10/16/2020 21:11:31"

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

ENTITY 	projeto1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	pinoTeste : OUT std_logic_vector(9 DOWNTO 0);
	t_outMem : OUT std_logic_vector(7 DOWNTO 0);
	habRAM : OUT std_logic;
	habDisplay : OUT std_logic;
	habSW : OUT std_logic;
	habKEY : OUT std_logic;
	habLED : OUT std_logic;
	habBT : OUT std_logic
	);
END projeto1;

-- Design Ports Information
-- pinoTeste[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[8]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habRAM	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habDisplay	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habSW	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habKEY	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habLED	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habBT	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_pinoTeste : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_t_outMem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habRAM : std_logic;
SIGNAL ww_habDisplay : std_logic;
SIGNAL ww_habSW : std_logic;
SIGNAL ww_habKEY : std_logic;
SIGNAL ww_habLED : std_logic;
SIGNAL ww_habBT : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~2\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~6\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~10\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~14\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~18\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~22\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~26\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~30\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~34\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~37_sumout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~30_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~20_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~31_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~12_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~28_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~21_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~13_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~29_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \processador|fetch|registerPC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|fetch|registerPC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~20_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
pinoTeste <= ww_pinoTeste;
t_outMem <= ww_t_outMem;
habRAM <= ww_habRAM;
habDisplay <= ww_habDisplay;
habSW <= ww_habSW;
habKEY <= ww_habKEY;
habLED <= ww_habLED;
habBT <= ww_habBT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|fetch|registerPC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\;
\processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\;
\processador|fetch|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|fetch|ROM|memROM~4_combout\;
\processador|fetch|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|fetch|ROM|memROM~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|fetch|ROM|memROM~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|fetch|ROM|memROM~0_combout\;
\processador|fetch|registerPC|ALT_INV_DOUT\(9) <= NOT \processador|fetch|registerPC|DOUT\(9);
\processador|fetch|registerPC|ALT_INV_DOUT\(8) <= NOT \processador|fetch|registerPC|DOUT\(8);
\processador|fetch|registerPC|ALT_INV_DOUT\(7) <= NOT \processador|fetch|registerPC|DOUT\(7);
\processador|fetch|registerPC|ALT_INV_DOUT\(6) <= NOT \processador|fetch|registerPC|DOUT\(6);
\processador|fetch|registerPC|ALT_INV_DOUT\(5) <= NOT \processador|fetch|registerPC|DOUT\(5);
\processador|fetch|registerPC|ALT_INV_DOUT\(4) <= NOT \processador|fetch|registerPC|DOUT\(4);
\processador|fetch|registerPC|ALT_INV_DOUT\(3) <= NOT \processador|fetch|registerPC|DOUT\(3);
\processador|fetch|registerPC|ALT_INV_DOUT\(2) <= NOT \processador|fetch|registerPC|DOUT\(2);
\processador|fetch|registerPC|ALT_INV_DOUT\(1) <= NOT \processador|fetch|registerPC|DOUT\(1);
\processador|fetch|registerPC|ALT_INV_DOUT\(0) <= NOT \processador|fetch|registerPC|DOUT\(0);
\processador|arquitetura|memReg|ALT_INV_registrador~13_q\ <= NOT \processador|arquitetura|memReg|registrador~13_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~21_q\ <= NOT \processador|arquitetura|memReg|registrador~21_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~12_q\ <= NOT \processador|arquitetura|memReg|registrador~12_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~20_q\ <= NOT \processador|arquitetura|memReg|registrador~20_q\;

-- Location: IOOBUF_X54_Y21_N22
\pinoTeste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_pinoTeste(0));

-- Location: IOOBUF_X54_Y21_N56
\pinoTeste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_pinoTeste(1));

-- Location: IOOBUF_X54_Y20_N56
\pinoTeste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_pinoTeste(2));

-- Location: IOOBUF_X54_Y21_N39
\pinoTeste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_pinoTeste(3));

-- Location: IOOBUF_X54_Y20_N39
\pinoTeste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_pinoTeste(4));

-- Location: IOOBUF_X54_Y19_N5
\pinoTeste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinoTeste(5));

-- Location: IOOBUF_X54_Y20_N5
\pinoTeste[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pinoTeste(6));

-- Location: IOOBUF_X54_Y19_N56
\pinoTeste[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_pinoTeste(7));

-- Location: IOOBUF_X54_Y20_N22
\pinoTeste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pinoTeste(8));

-- Location: IOOBUF_X54_Y21_N5
\pinoTeste[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_pinoTeste(9));

-- Location: IOOBUF_X54_Y19_N22
\t_outMem[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~28_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(0));

-- Location: IOOBUF_X54_Y19_N39
\t_outMem[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~29_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(1));

-- Location: IOOBUF_X42_Y45_N19
\t_outMem[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(2));

-- Location: IOOBUF_X10_Y0_N59
\t_outMem[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(3));

-- Location: IOOBUF_X18_Y0_N36
\t_outMem[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(4));

-- Location: IOOBUF_X33_Y0_N76
\t_outMem[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(5));

-- Location: IOOBUF_X38_Y0_N53
\t_outMem[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(6));

-- Location: IOOBUF_X24_Y0_N53
\t_outMem[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_outMem(7));

-- Location: IOOBUF_X44_Y45_N53
\habRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habRAM);

-- Location: IOOBUF_X40_Y45_N42
\habDisplay~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habDisplay);

-- Location: IOOBUF_X29_Y0_N19
\habSW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habSW);

-- Location: IOOBUF_X20_Y45_N36
\habKEY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_habKEY);

-- Location: IOOBUF_X54_Y17_N22
\habLED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_habLED);

-- Location: IOOBUF_X54_Y17_N39
\habBT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_habBT);

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X53_Y26_N30
\processador|fetch|somPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~1_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|fetch|somPC|Add0~2\ = CARRY(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|fetch|somPC|Add0~1_sumout\,
	cout => \processador|fetch|somPC|Add0~2\);

-- Location: FF_X53_Y26_N32
\processador|fetch|registerPC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(0));

-- Location: LABCELL_X53_Y26_N33
\processador|fetch|somPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~5_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(1) ) + ( GND ) + ( \processador|fetch|somPC|Add0~2\ ))
-- \processador|fetch|somPC|Add0~6\ = CARRY(( \processador|fetch|registerPC|DOUT\(1) ) + ( GND ) + ( \processador|fetch|somPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	cin => \processador|fetch|somPC|Add0~2\,
	sumout => \processador|fetch|somPC|Add0~5_sumout\,
	cout => \processador|fetch|somPC|Add0~6\);

-- Location: FF_X53_Y26_N34
\processador|fetch|registerPC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(1));

-- Location: LABCELL_X53_Y26_N36
\processador|fetch|somPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~9_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(2) ) + ( GND ) + ( \processador|fetch|somPC|Add0~6\ ))
-- \processador|fetch|somPC|Add0~10\ = CARRY(( \processador|fetch|registerPC|DOUT\(2) ) + ( GND ) + ( \processador|fetch|somPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	cin => \processador|fetch|somPC|Add0~6\,
	sumout => \processador|fetch|somPC|Add0~9_sumout\,
	cout => \processador|fetch|somPC|Add0~10\);

-- Location: FF_X53_Y26_N37
\processador|fetch|registerPC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(2));

-- Location: LABCELL_X53_Y26_N39
\processador|fetch|somPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~13_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(3) ) + ( GND ) + ( \processador|fetch|somPC|Add0~10\ ))
-- \processador|fetch|somPC|Add0~14\ = CARRY(( \processador|fetch|registerPC|DOUT\(3) ) + ( GND ) + ( \processador|fetch|somPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	cin => \processador|fetch|somPC|Add0~10\,
	sumout => \processador|fetch|somPC|Add0~13_sumout\,
	cout => \processador|fetch|somPC|Add0~14\);

-- Location: FF_X53_Y26_N41
\processador|fetch|registerPC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(3));

-- Location: LABCELL_X53_Y26_N42
\processador|fetch|somPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~17_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(4) ) + ( GND ) + ( \processador|fetch|somPC|Add0~14\ ))
-- \processador|fetch|somPC|Add0~18\ = CARRY(( \processador|fetch|registerPC|DOUT\(4) ) + ( GND ) + ( \processador|fetch|somPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	cin => \processador|fetch|somPC|Add0~14\,
	sumout => \processador|fetch|somPC|Add0~17_sumout\,
	cout => \processador|fetch|somPC|Add0~18\);

-- Location: FF_X53_Y26_N44
\processador|fetch|registerPC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(4));

-- Location: FF_X53_Y26_N47
\processador|fetch|registerPC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(5));

-- Location: LABCELL_X53_Y26_N45
\processador|fetch|somPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~21_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(5) ) + ( GND ) + ( \processador|fetch|somPC|Add0~18\ ))
-- \processador|fetch|somPC|Add0~22\ = CARRY(( \processador|fetch|registerPC|DOUT\(5) ) + ( GND ) + ( \processador|fetch|somPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	cin => \processador|fetch|somPC|Add0~18\,
	sumout => \processador|fetch|somPC|Add0~21_sumout\,
	cout => \processador|fetch|somPC|Add0~22\);

-- Location: FF_X53_Y26_N46
\processador|fetch|registerPC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y26_N48
\processador|fetch|somPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~25_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(6) ) + ( GND ) + ( \processador|fetch|somPC|Add0~22\ ))
-- \processador|fetch|somPC|Add0~26\ = CARRY(( \processador|fetch|registerPC|DOUT\(6) ) + ( GND ) + ( \processador|fetch|somPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	cin => \processador|fetch|somPC|Add0~22\,
	sumout => \processador|fetch|somPC|Add0~25_sumout\,
	cout => \processador|fetch|somPC|Add0~26\);

-- Location: FF_X53_Y26_N50
\processador|fetch|registerPC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(6));

-- Location: LABCELL_X53_Y26_N51
\processador|fetch|somPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~29_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(7) ) + ( GND ) + ( \processador|fetch|somPC|Add0~26\ ))
-- \processador|fetch|somPC|Add0~30\ = CARRY(( \processador|fetch|registerPC|DOUT\(7) ) + ( GND ) + ( \processador|fetch|somPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	cin => \processador|fetch|somPC|Add0~26\,
	sumout => \processador|fetch|somPC|Add0~29_sumout\,
	cout => \processador|fetch|somPC|Add0~30\);

-- Location: FF_X53_Y26_N52
\processador|fetch|registerPC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(7));

-- Location: FF_X53_Y26_N56
\processador|fetch|registerPC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(8));

-- Location: LABCELL_X53_Y26_N54
\processador|fetch|somPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~33_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(8) ) + ( GND ) + ( \processador|fetch|somPC|Add0~30\ ))
-- \processador|fetch|somPC|Add0~34\ = CARRY(( \processador|fetch|registerPC|DOUT\(8) ) + ( GND ) + ( \processador|fetch|somPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	cin => \processador|fetch|somPC|Add0~30\,
	sumout => \processador|fetch|somPC|Add0~33_sumout\,
	cout => \processador|fetch|somPC|Add0~34\);

-- Location: FF_X53_Y26_N55
\processador|fetch|registerPC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y26_N57
\processador|fetch|somPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~37_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(9) ) + ( GND ) + ( \processador|fetch|somPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	cin => \processador|fetch|somPC|Add0~34\,
	sumout => \processador|fetch|somPC|Add0~37_sumout\);

-- Location: FF_X53_Y26_N59
\processador|fetch|registerPC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(9));

-- Location: FF_X53_Y26_N35
\processador|fetch|registerPC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X53_Y26_N38
\processador|fetch|registerPC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y26_N3
\processador|fetch|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~1_combout\ = ( !\processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~1_combout\);

-- Location: LABCELL_X53_Y26_N0
\processador|fetch|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~0_combout\ = ( !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(6) & (!\processador|fetch|registerPC|DOUT\(7) & (!\processador|fetch|registerPC|DOUT\(8) & 
-- !\processador|fetch|registerPC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	combout => \processador|fetch|ROM|memROM~0_combout\);

-- Location: LABCELL_X52_Y26_N0
\processador|fetch|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~2_combout\ = ( !\processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\ & ( \processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(0)) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\ & ( !\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & ( !\processador|fetch|registerPC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \processador|fetch|ROM|memROM~2_combout\);

-- Location: LABCELL_X53_Y26_N18
\processador|arquitetura|muxInstRAM|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[0]~0_combout\ = ( \processador|fetch|ROM|memROM~1_combout\ & ( \processador|fetch|ROM|memROM~2_combout\ & ( (\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (!\processador|fetch|registerPC|DOUT\(9) & 
-- (\processador|fetch|ROM|memROM~0_combout\ & \processador|fetch|registerPC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X53_Y26_N24
\processador|arquitetura|memReg|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~30_combout\ = ( !\processador|fetch|ROM|memROM~2_combout\ & ( (\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (!\processador|fetch|registerPC|DOUT\(9) & (\processador|fetch|ROM|memROM~1_combout\ & 
-- \processador|fetch|ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|arquitetura|memReg|registrador~30_combout\);

-- Location: FF_X53_Y26_N14
\processador|arquitetura|memReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|muxInstRAM|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~20_q\);

-- Location: LABCELL_X53_Y26_N6
\processador|arquitetura|memReg|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~31_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~2_combout\ & ( ((!\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (!\processador|fetch|registerPC|DOUT\(0) & 
-- \processador|fetch|ROM|memROM~1_combout\))) # (\processador|fetch|registerPC|DOUT\(9)) ) ) ) # ( !\processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~2_combout\ ) ) # ( \processador|fetch|ROM|memROM~0_combout\ & ( 
-- !\processador|fetch|ROM|memROM~2_combout\ & ( (!\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\) # ((!\processador|fetch|ROM|memROM~1_combout\) # (\processador|fetch|registerPC|DOUT\(9))) ) ) ) # ( !\processador|fetch|ROM|memROM~0_combout\ & ( 
-- !\processador|fetch|ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111111111111111111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datae => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|arquitetura|memReg|registrador~31_combout\);

-- Location: FF_X53_Y26_N19
\processador|arquitetura|memReg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|muxInstRAM|saida_MUX[0]~0_combout\,
	ena => \processador|arquitetura|memReg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~12_q\);

-- Location: LABCELL_X53_Y26_N12
\processador|arquitetura|memReg|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~28_combout\ = ( \processador|arquitetura|memReg|registrador~20_q\ & ( \processador|arquitetura|memReg|registrador~12_q\ ) ) # ( !\processador|arquitetura|memReg|registrador~20_q\ & ( 
-- \processador|arquitetura|memReg|registrador~12_q\ & ( (!\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\) # ((!\processador|fetch|ROM|memROM~1_combout\) # ((!\processador|fetch|ROM|memROM~0_combout\) # (\processador|fetch|registerPC|DOUT\(9)))) ) ) ) # 
-- ( \processador|arquitetura|memReg|registrador~20_q\ & ( !\processador|arquitetura|memReg|registrador~12_q\ & ( (\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & 
-- !\processador|fetch|registerPC|DOUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000011111110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~20_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~12_q\,
	combout => \processador|arquitetura|memReg|registrador~28_combout\);

-- Location: LABCELL_X53_Y26_N27
\processador|fetch|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~3_combout\ = ( \processador|fetch|ROM|memROM~1_combout\ & ( (!\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (!\processador|fetch|registerPC|DOUT\(9) & (!\processador|fetch|registerPC|DOUT\(0) & 
-- \processador|fetch|ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|fetch|ROM|memROM~3_combout\);

-- Location: FF_X53_Y26_N17
\processador|arquitetura|memReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|fetch|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~21_q\);

-- Location: FF_X53_Y26_N28
\processador|arquitetura|memReg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|ROM|memROM~3_combout\,
	ena => \processador|arquitetura|memReg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~13_q\);

-- Location: LABCELL_X53_Y26_N15
\processador|arquitetura|memReg|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~29_combout\ = ( \processador|arquitetura|memReg|registrador~21_q\ & ( \processador|arquitetura|memReg|registrador~13_q\ ) ) # ( !\processador|arquitetura|memReg|registrador~21_q\ & ( 
-- \processador|arquitetura|memReg|registrador~13_q\ & ( (!\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\) # ((!\processador|fetch|ROM|memROM~1_combout\) # ((!\processador|fetch|ROM|memROM~0_combout\) # (\processador|fetch|registerPC|DOUT\(9)))) ) ) ) # 
-- ( \processador|arquitetura|memReg|registrador~21_q\ & ( !\processador|arquitetura|memReg|registrador~13_q\ & ( (\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\ & (\processador|fetch|ROM|memROM~1_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & 
-- \processador|fetch|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~21_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~13_q\,
	combout => \processador|arquitetura|memReg|registrador~29_combout\);

-- Location: LABCELL_X52_Y26_N54
\processador|fetch|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~4_combout\ = ( !\processador|fetch|registerPC|DOUT[2]~DUPLICATE_q\ & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|ROM|memROM~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & 
-- ((\processador|fetch|registerPC|DOUT\(0)) # (\processador|fetch|registerPC|DOUT[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~4_combout\);

-- Location: LABCELL_X2_Y13_N3
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


