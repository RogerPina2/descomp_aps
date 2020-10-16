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

-- DATE "10/16/2020 15:16:32"

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

ENTITY 	processador IS
    PORT (
	clk : IN std_logic;
	in_MuxRAM : IN std_logic_vector(7 DOWNTO 0);
	out_memReg : OUT std_logic_vector(7 DOWNTO 0);
	out_addrImediato : OUT std_logic_vector(9 DOWNTO 0);
	out_habLeiMEM : OUT std_logic;
	out_habEscMEM : OUT std_logic
	);
END processador;

-- Design Ports Information
-- in_MuxRAM[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_MuxRAM[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_memReg[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_addrImediato[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_habLeiMEM	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_habEscMEM	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
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
SIGNAL ww_in_MuxRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_memReg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_addrImediato : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_out_habLeiMEM : std_logic;
SIGNAL ww_out_habEscMEM : std_logic;
SIGNAL \in_MuxRAM[0]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[1]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[2]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[3]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[4]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[5]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[6]~input_o\ : std_logic;
SIGNAL \in_MuxRAM[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \fetch|somPC|Add0~1_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~2\ : std_logic;
SIGNAL \fetch|somPC|Add0~21_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~22\ : std_logic;
SIGNAL \fetch|somPC|Add0~17_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~18\ : std_logic;
SIGNAL \fetch|somPC|Add0~13_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~14\ : std_logic;
SIGNAL \fetch|somPC|Add0~9_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~10\ : std_logic;
SIGNAL \fetch|somPC|Add0~5_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~6\ : std_logic;
SIGNAL \fetch|somPC|Add0~37_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~38\ : std_logic;
SIGNAL \fetch|somPC|Add0~33_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~34\ : std_logic;
SIGNAL \fetch|somPC|Add0~29_sumout\ : std_logic;
SIGNAL \fetch|somPC|Add0~30\ : std_logic;
SIGNAL \fetch|somPC|Add0~25_sumout\ : std_logic;
SIGNAL \fetch|ROM|memROM~0_combout\ : std_logic;
SIGNAL \fetch|ROM|memROM~1_combout\ : std_logic;
SIGNAL \fetch|ROM|memROM~2_combout\ : std_logic;
SIGNAL \fetch|registerPC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fetch|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \fetch|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \fetch|registerPC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_in_MuxRAM <= in_MuxRAM;
out_memReg <= ww_out_memReg;
out_addrImediato <= ww_out_addrImediato;
out_habLeiMEM <= ww_out_habLeiMEM;
out_habEscMEM <= ww_out_habEscMEM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\fetch|ROM|ALT_INV_memROM~2_combout\ <= NOT \fetch|ROM|memROM~2_combout\;
\fetch|ROM|ALT_INV_memROM~0_combout\ <= NOT \fetch|ROM|memROM~0_combout\;
\fetch|registerPC|ALT_INV_DOUT\(1) <= NOT \fetch|registerPC|DOUT\(1);
\fetch|registerPC|ALT_INV_DOUT\(0) <= NOT \fetch|registerPC|DOUT\(0);
\fetch|registerPC|ALT_INV_DOUT\(6) <= NOT \fetch|registerPC|DOUT\(6);
\fetch|registerPC|ALT_INV_DOUT\(7) <= NOT \fetch|registerPC|DOUT\(7);
\fetch|registerPC|ALT_INV_DOUT\(8) <= NOT \fetch|registerPC|DOUT\(8);
\fetch|registerPC|ALT_INV_DOUT\(9) <= NOT \fetch|registerPC|DOUT\(9);
\fetch|registerPC|ALT_INV_DOUT\(2) <= NOT \fetch|registerPC|DOUT\(2);
\fetch|registerPC|ALT_INV_DOUT\(3) <= NOT \fetch|registerPC|DOUT\(3);
\fetch|registerPC|ALT_INV_DOUT\(4) <= NOT \fetch|registerPC|DOUT\(4);
\fetch|registerPC|ALT_INV_DOUT\(5) <= NOT \fetch|registerPC|DOUT\(5);

-- Location: IOOBUF_X32_Y45_N76
\out_memReg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(0));

-- Location: IOOBUF_X14_Y0_N36
\out_memReg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(1));

-- Location: IOOBUF_X44_Y45_N36
\out_memReg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(2));

-- Location: IOOBUF_X50_Y45_N53
\out_memReg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(3));

-- Location: IOOBUF_X50_Y0_N36
\out_memReg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(4));

-- Location: IOOBUF_X42_Y45_N2
\out_memReg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(5));

-- Location: IOOBUF_X29_Y0_N19
\out_memReg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(6));

-- Location: IOOBUF_X0_Y19_N39
\out_memReg[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_memReg(7));

-- Location: IOOBUF_X12_Y45_N19
\out_addrImediato[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_out_addrImediato(0));

-- Location: IOOBUF_X12_Y45_N2
\out_addrImediato[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_out_addrImediato(1));

-- Location: IOOBUF_X40_Y0_N42
\out_addrImediato[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(2));

-- Location: IOOBUF_X0_Y19_N56
\out_addrImediato[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(3));

-- Location: IOOBUF_X52_Y0_N36
\out_addrImediato[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(4));

-- Location: IOOBUF_X43_Y0_N53
\out_addrImediato[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(5));

-- Location: IOOBUF_X32_Y45_N42
\out_addrImediato[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(6));

-- Location: IOOBUF_X52_Y0_N53
\out_addrImediato[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(7));

-- Location: IOOBUF_X36_Y45_N2
\out_addrImediato[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(8));

-- Location: IOOBUF_X10_Y45_N2
\out_addrImediato[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_addrImediato(9));

-- Location: IOOBUF_X12_Y45_N36
\out_habLeiMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fetch|ROM|ALT_INV_memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_out_habLeiMEM);

-- Location: IOOBUF_X54_Y18_N45
\out_habEscMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_habEscMEM);

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

-- Location: LABCELL_X12_Y44_N30
\fetch|somPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~1_sumout\ = SUM(( \fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \fetch|somPC|Add0~2\ = CARRY(( \fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \fetch|somPC|Add0~1_sumout\,
	cout => \fetch|somPC|Add0~2\);

-- Location: FF_X12_Y44_N32
\fetch|registerPC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(0));

-- Location: LABCELL_X12_Y44_N33
\fetch|somPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~21_sumout\ = SUM(( \fetch|registerPC|DOUT\(1) ) + ( GND ) + ( \fetch|somPC|Add0~2\ ))
-- \fetch|somPC|Add0~22\ = CARRY(( \fetch|registerPC|DOUT\(1) ) + ( GND ) + ( \fetch|somPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(1),
	cin => \fetch|somPC|Add0~2\,
	sumout => \fetch|somPC|Add0~21_sumout\,
	cout => \fetch|somPC|Add0~22\);

-- Location: FF_X12_Y44_N35
\fetch|registerPC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(1));

-- Location: LABCELL_X12_Y44_N36
\fetch|somPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~17_sumout\ = SUM(( \fetch|registerPC|DOUT\(2) ) + ( GND ) + ( \fetch|somPC|Add0~22\ ))
-- \fetch|somPC|Add0~18\ = CARRY(( \fetch|registerPC|DOUT\(2) ) + ( GND ) + ( \fetch|somPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(2),
	cin => \fetch|somPC|Add0~22\,
	sumout => \fetch|somPC|Add0~17_sumout\,
	cout => \fetch|somPC|Add0~18\);

-- Location: FF_X12_Y44_N38
\fetch|registerPC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(2));

-- Location: LABCELL_X12_Y44_N39
\fetch|somPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~13_sumout\ = SUM(( \fetch|registerPC|DOUT\(3) ) + ( GND ) + ( \fetch|somPC|Add0~18\ ))
-- \fetch|somPC|Add0~14\ = CARRY(( \fetch|registerPC|DOUT\(3) ) + ( GND ) + ( \fetch|somPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(3),
	cin => \fetch|somPC|Add0~18\,
	sumout => \fetch|somPC|Add0~13_sumout\,
	cout => \fetch|somPC|Add0~14\);

-- Location: FF_X12_Y44_N41
\fetch|registerPC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(3));

-- Location: LABCELL_X12_Y44_N42
\fetch|somPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~9_sumout\ = SUM(( \fetch|registerPC|DOUT\(4) ) + ( GND ) + ( \fetch|somPC|Add0~14\ ))
-- \fetch|somPC|Add0~10\ = CARRY(( \fetch|registerPC|DOUT\(4) ) + ( GND ) + ( \fetch|somPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(4),
	cin => \fetch|somPC|Add0~14\,
	sumout => \fetch|somPC|Add0~9_sumout\,
	cout => \fetch|somPC|Add0~10\);

-- Location: FF_X12_Y44_N43
\fetch|registerPC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(4));

-- Location: LABCELL_X12_Y44_N45
\fetch|somPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~5_sumout\ = SUM(( \fetch|registerPC|DOUT\(5) ) + ( GND ) + ( \fetch|somPC|Add0~10\ ))
-- \fetch|somPC|Add0~6\ = CARRY(( \fetch|registerPC|DOUT\(5) ) + ( GND ) + ( \fetch|somPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(5),
	cin => \fetch|somPC|Add0~10\,
	sumout => \fetch|somPC|Add0~5_sumout\,
	cout => \fetch|somPC|Add0~6\);

-- Location: FF_X12_Y44_N47
\fetch|registerPC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(5));

-- Location: LABCELL_X12_Y44_N48
\fetch|somPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~37_sumout\ = SUM(( \fetch|registerPC|DOUT\(6) ) + ( GND ) + ( \fetch|somPC|Add0~6\ ))
-- \fetch|somPC|Add0~38\ = CARRY(( \fetch|registerPC|DOUT\(6) ) + ( GND ) + ( \fetch|somPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(6),
	cin => \fetch|somPC|Add0~6\,
	sumout => \fetch|somPC|Add0~37_sumout\,
	cout => \fetch|somPC|Add0~38\);

-- Location: FF_X12_Y44_N50
\fetch|registerPC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(6));

-- Location: LABCELL_X12_Y44_N51
\fetch|somPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~33_sumout\ = SUM(( \fetch|registerPC|DOUT\(7) ) + ( GND ) + ( \fetch|somPC|Add0~38\ ))
-- \fetch|somPC|Add0~34\ = CARRY(( \fetch|registerPC|DOUT\(7) ) + ( GND ) + ( \fetch|somPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(7),
	cin => \fetch|somPC|Add0~38\,
	sumout => \fetch|somPC|Add0~33_sumout\,
	cout => \fetch|somPC|Add0~34\);

-- Location: FF_X12_Y44_N53
\fetch|registerPC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(7));

-- Location: LABCELL_X12_Y44_N54
\fetch|somPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~29_sumout\ = SUM(( \fetch|registerPC|DOUT\(8) ) + ( GND ) + ( \fetch|somPC|Add0~34\ ))
-- \fetch|somPC|Add0~30\ = CARRY(( \fetch|registerPC|DOUT\(8) ) + ( GND ) + ( \fetch|somPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(8),
	cin => \fetch|somPC|Add0~34\,
	sumout => \fetch|somPC|Add0~29_sumout\,
	cout => \fetch|somPC|Add0~30\);

-- Location: FF_X12_Y44_N56
\fetch|registerPC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(8));

-- Location: LABCELL_X12_Y44_N57
\fetch|somPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|somPC|Add0~25_sumout\ = SUM(( \fetch|registerPC|DOUT\(9) ) + ( GND ) + ( \fetch|somPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fetch|registerPC|ALT_INV_DOUT\(9),
	cin => \fetch|somPC|Add0~30\,
	sumout => \fetch|somPC|Add0~25_sumout\);

-- Location: FF_X12_Y44_N59
\fetch|registerPC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \fetch|somPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fetch|registerPC|DOUT\(9));

-- Location: LABCELL_X12_Y44_N24
\fetch|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|ROM|memROM~0_combout\ = ( !\fetch|registerPC|DOUT\(8) & ( !\fetch|registerPC|DOUT\(1) & ( (!\fetch|registerPC|DOUT\(6) & (!\fetch|registerPC|DOUT\(9) & !\fetch|registerPC|DOUT\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fetch|registerPC|ALT_INV_DOUT\(6),
	datab => \fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \fetch|registerPC|ALT_INV_DOUT\(7),
	datae => \fetch|registerPC|ALT_INV_DOUT\(8),
	dataf => \fetch|registerPC|ALT_INV_DOUT\(1),
	combout => \fetch|ROM|memROM~0_combout\);

-- Location: LABCELL_X12_Y44_N18
\fetch|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|ROM|memROM~1_combout\ = ( !\fetch|registerPC|DOUT\(5) & ( \fetch|registerPC|DOUT\(0) & ( (!\fetch|registerPC|DOUT\(2) & (!\fetch|registerPC|DOUT\(3) & (\fetch|ROM|memROM~0_combout\ & !\fetch|registerPC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fetch|registerPC|ALT_INV_DOUT\(2),
	datab => \fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \fetch|ROM|memROM~1_combout\);

-- Location: LABCELL_X12_Y44_N12
\fetch|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fetch|ROM|memROM~2_combout\ = ( !\fetch|registerPC|DOUT\(5) & ( !\fetch|registerPC|DOUT\(3) & ( (!\fetch|registerPC|DOUT\(2) & (!\fetch|registerPC|DOUT\(4) & \fetch|ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fetch|registerPC|ALT_INV_DOUT\(2),
	datab => \fetch|registerPC|ALT_INV_DOUT\(4),
	datac => \fetch|ROM|ALT_INV_memROM~0_combout\,
	datae => \fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \fetch|ROM|memROM~2_combout\);

-- Location: IOIBUF_X32_Y45_N92
\in_MuxRAM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(0),
	o => \in_MuxRAM[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\in_MuxRAM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(1),
	o => \in_MuxRAM[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\in_MuxRAM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(2),
	o => \in_MuxRAM[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\in_MuxRAM[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(3),
	o => \in_MuxRAM[3]~input_o\);

-- Location: IOIBUF_X42_Y45_N18
\in_MuxRAM[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(4),
	o => \in_MuxRAM[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\in_MuxRAM[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(5),
	o => \in_MuxRAM[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N92
\in_MuxRAM[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(6),
	o => \in_MuxRAM[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\in_MuxRAM[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_MuxRAM(7),
	o => \in_MuxRAM[7]~input_o\);

-- Location: LABCELL_X41_Y36_N3
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


