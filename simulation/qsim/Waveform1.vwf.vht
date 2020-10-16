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
-- Generated on "10/16/2020 11:04:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fetch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fetch_vhd_vec_tst IS
END fetch_vhd_vec_tst;
ARCHITECTURE fetch_arch OF fetch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL flag : STD_LOGIC;
SIGNAL instrucaoOut : STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL je : STD_LOGIC;
SIGNAL pinoTeste : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sel_MuxJump : STD_LOGIC;
COMPONENT fetch
	PORT (
	clk : IN STD_LOGIC;
	flag : IN STD_LOGIC;
	instrucaoOut : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
	je : IN STD_LOGIC;
	pinoTeste : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	sel_MuxJump : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fetch
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	flag => flag,
	instrucaoOut => instrucaoOut,
	je => je,
	pinoTeste => pinoTeste,
	sel_MuxJump => sel_MuxJump
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- flag
t_prcs_flag: PROCESS
BEGIN
	flag <= '0';
WAIT;
END PROCESS t_prcs_flag;

-- je
t_prcs_je: PROCESS
BEGIN
	je <= '0';
WAIT;
END PROCESS t_prcs_je;

-- sel_MuxJump
t_prcs_sel_MuxJump: PROCESS
BEGIN
	sel_MuxJump <= '0';
	WAIT FOR 50000 ps;
	sel_MuxJump <= '1';
	WAIT FOR 20000 ps;
	sel_MuxJump <= '0';
WAIT;
END PROCESS t_prcs_sel_MuxJump;
END fetch_arch;
