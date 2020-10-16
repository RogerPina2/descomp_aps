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
-- Generated on "10/16/2020 10:26:28"
                                                             
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
SIGNAL endereco_desvio : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL flag : STD_LOGIC;
SIGNAL instrucao : STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL je : STD_LOGIC;
SIGNAL sel_MuxJump : STD_LOGIC;
COMPONENT fetch
	PORT (
	clk : IN STD_LOGIC;
	endereco_desvio : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	flag : IN STD_LOGIC;
	instrucao : BUFFER STD_LOGIC_VECTOR(16 DOWNTO 0);
	je : IN STD_LOGIC;
	sel_MuxJump : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fetch
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	endereco_desvio => endereco_desvio,
	flag => flag,
	instrucao => instrucao,
	je => je,
	sel_MuxJump => sel_MuxJump
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- endereco_desvio[9]
t_prcs_endereco_desvio_9: PROCESS
BEGIN
	endereco_desvio(9) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_9;
-- endereco_desvio[8]
t_prcs_endereco_desvio_8: PROCESS
BEGIN
	endereco_desvio(8) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_8;
-- endereco_desvio[7]
t_prcs_endereco_desvio_7: PROCESS
BEGIN
	endereco_desvio(7) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_7;
-- endereco_desvio[6]
t_prcs_endereco_desvio_6: PROCESS
BEGIN
	endereco_desvio(6) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_6;
-- endereco_desvio[5]
t_prcs_endereco_desvio_5: PROCESS
BEGIN
	endereco_desvio(5) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_5;
-- endereco_desvio[4]
t_prcs_endereco_desvio_4: PROCESS
BEGIN
	endereco_desvio(4) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_4;
-- endereco_desvio[3]
t_prcs_endereco_desvio_3: PROCESS
BEGIN
	endereco_desvio(3) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_3;
-- endereco_desvio[2]
t_prcs_endereco_desvio_2: PROCESS
BEGIN
	endereco_desvio(2) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_2;
-- endereco_desvio[1]
t_prcs_endereco_desvio_1: PROCESS
BEGIN
	endereco_desvio(1) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_1;
-- endereco_desvio[0]
t_prcs_endereco_desvio_0: PROCESS
BEGIN
	endereco_desvio(0) <= '0';
WAIT;
END PROCESS t_prcs_endereco_desvio_0;

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
LOOP
	sel_MuxJump <= '0';
	WAIT FOR 50000 ps;
	sel_MuxJump <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_MuxJump;
END fetch_arch;
