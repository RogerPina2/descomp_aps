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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/16/2020 13:55:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UC_vhd_vec_tst IS
END UC_vhd_vec_tst;
ARCHITECTURE UC_arch OF UC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL habilitaEscritaMEM : STD_LOGIC;
SIGNAL habilitaFlag : STD_LOGIC;
SIGNAL habilitaLeitutaMEM : STD_LOGIC;
SIGNAL habilitaResgistrador : STD_LOGIC;
SIGNAL jumpEqual : STD_LOGIC;
SIGNAL muxImediatoRAM : STD_LOGIC;
SIGNAL muxJump : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL operacao : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT UC
	PORT (
	habilitaEscritaMEM : OUT STD_LOGIC;
	habilitaFlag : OUT STD_LOGIC;
	habilitaLeitutaMEM : OUT STD_LOGIC;
	habilitaResgistrador : OUT STD_LOGIC;
	jumpEqual : OUT STD_LOGIC;
	muxImediatoRAM : OUT STD_LOGIC;
	muxJump : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	operacao : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UC
	PORT MAP (
-- list connections between master ports and signals
	habilitaEscritaMEM => habilitaEscritaMEM,
	habilitaFlag => habilitaFlag,
	habilitaLeitutaMEM => habilitaLeitutaMEM,
	habilitaResgistrador => habilitaResgistrador,
	jumpEqual => jumpEqual,
	muxImediatoRAM => muxImediatoRAM,
	muxJump => muxJump,
	opcode => opcode,
	operacao => operacao
	);
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		opcode(3) <= '0';
		WAIT FOR 80000 ps;
		opcode(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	opcode(3) <= '0';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		opcode(2) <= '0';
		WAIT FOR 40000 ps;
		opcode(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
LOOP
	opcode(1) <= '0';
	WAIT FOR 20000 ps;
	opcode(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
LOOP
	opcode(0) <= '0';
	WAIT FOR 10000 ps;
	opcode(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_0;
END UC_arch;
