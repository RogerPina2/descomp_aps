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
-- Generated on "10/16/2020 17:49:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processador_vhd_vec_tst IS
END processador_vhd_vec_tst;
ARCHITECTURE processador_arch OF processador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL in_MuxRAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_addrImediato : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL out_habEscMEM : STD_LOGIC;
SIGNAL out_habLeiMEM : STD_LOGIC;
SIGNAL out_memReg : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pinoTeste : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT processador
	PORT (
	clk : IN STD_LOGIC;
	in_MuxRAM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_addrImediato : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	out_habEscMEM : OUT STD_LOGIC;
	out_habLeiMEM : OUT STD_LOGIC;
	out_memReg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pinoTeste : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : processador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	in_MuxRAM => in_MuxRAM,
	out_addrImediato => out_addrImediato,
	out_habEscMEM => out_habEscMEM,
	out_habLeiMEM => out_habLeiMEM,
	out_memReg => out_memReg,
	pinoTeste => pinoTeste
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
-- in_MuxRAM[7]
t_prcs_in_MuxRAM_7: PROCESS
BEGIN
	in_MuxRAM(7) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_7;
-- in_MuxRAM[6]
t_prcs_in_MuxRAM_6: PROCESS
BEGIN
	in_MuxRAM(6) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_6;
-- in_MuxRAM[5]
t_prcs_in_MuxRAM_5: PROCESS
BEGIN
	in_MuxRAM(5) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_5;
-- in_MuxRAM[4]
t_prcs_in_MuxRAM_4: PROCESS
BEGIN
	in_MuxRAM(4) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_4;
-- in_MuxRAM[3]
t_prcs_in_MuxRAM_3: PROCESS
BEGIN
	in_MuxRAM(3) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_3;
-- in_MuxRAM[2]
t_prcs_in_MuxRAM_2: PROCESS
BEGIN
	in_MuxRAM(2) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_2;
-- in_MuxRAM[1]
t_prcs_in_MuxRAM_1: PROCESS
BEGIN
	in_MuxRAM(1) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_1;
-- in_MuxRAM[0]
t_prcs_in_MuxRAM_0: PROCESS
BEGIN
	in_MuxRAM(0) <= '0';
WAIT;
END PROCESS t_prcs_in_MuxRAM_0;
END processador_arch;
