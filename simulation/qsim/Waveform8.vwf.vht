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
-- Generated on "10/16/2020 18:02:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bancoRegistradoresArqRegMem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bancoRegistradoresArqRegMem_vhd_vec_tst IS
END bancoRegistradoresArqRegMem_vhd_vec_tst;
ARCHITECTURE bancoRegistradoresArqRegMem_arch OF bancoRegistradoresArqRegMem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscrita : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL endereco : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL habilitaEscrita : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT bancoRegistradoresArqRegMem
	PORT (
	clk : IN STD_LOGIC;
	dadoEscrita : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	endereco : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	habilitaEscrita : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bancoRegistradoresArqRegMem
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dadoEscrita => dadoEscrita,
	endereco => endereco,
	habilitaEscrita => habilitaEscrita,
	saida => saida
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
-- dadoEscrita[7]
t_prcs_dadoEscrita_7: PROCESS
BEGIN
	dadoEscrita(7) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_7;
-- dadoEscrita[6]
t_prcs_dadoEscrita_6: PROCESS
BEGIN
	dadoEscrita(6) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_6;
-- dadoEscrita[5]
t_prcs_dadoEscrita_5: PROCESS
BEGIN
	dadoEscrita(5) <= '0';
	WAIT FOR 640000 ps;
	dadoEscrita(5) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_5;
-- dadoEscrita[4]
t_prcs_dadoEscrita_4: PROCESS
BEGIN
	dadoEscrita(4) <= '0';
	WAIT FOR 320000 ps;
	dadoEscrita(4) <= '1';
	WAIT FOR 320000 ps;
	dadoEscrita(4) <= '0';
	WAIT FOR 320000 ps;
	dadoEscrita(4) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscrita_4;
-- dadoEscrita[3]
t_prcs_dadoEscrita_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		dadoEscrita(3) <= '0';
		WAIT FOR 160000 ps;
		dadoEscrita(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	dadoEscrita(3) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_3;
-- dadoEscrita[2]
t_prcs_dadoEscrita_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		dadoEscrita(2) <= '0';
		WAIT FOR 80000 ps;
		dadoEscrita(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	dadoEscrita(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_2;
-- dadoEscrita[1]
t_prcs_dadoEscrita_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		dadoEscrita(1) <= '0';
		WAIT FOR 40000 ps;
		dadoEscrita(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	dadoEscrita(1) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscrita_1;
-- dadoEscrita[0]
t_prcs_dadoEscrita_0: PROCESS
BEGIN
LOOP
	dadoEscrita(0) <= '0';
	WAIT FOR 20000 ps;
	dadoEscrita(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dadoEscrita_0;
-- endereco[2]
t_prcs_endereco_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		endereco(2) <= '0';
		WAIT FOR 160000 ps;
		endereco(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	endereco(2) <= '0';
WAIT;
END PROCESS t_prcs_endereco_2;
-- endereco[1]
t_prcs_endereco_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		endereco(1) <= '0';
		WAIT FOR 80000 ps;
		endereco(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	endereco(1) <= '0';
WAIT;
END PROCESS t_prcs_endereco_1;
-- endereco[0]
t_prcs_endereco_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		endereco(0) <= '0';
		WAIT FOR 40000 ps;
		endereco(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	endereco(0) <= '0';
WAIT;
END PROCESS t_prcs_endereco_0;

-- habilitaEscrita
t_prcs_habilitaEscrita: PROCESS
BEGIN
LOOP
	habilitaEscrita <= '0';
	WAIT FOR 20000 ps;
	habilitaEscrita <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_habilitaEscrita;
END bancoRegistradoresArqRegMem_arch;
