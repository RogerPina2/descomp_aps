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
-- Generated on "10/17/2020 20:25:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projeto1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projeto1_vhd_vec_tst IS
END projeto1_vhd_vec_tst;
ARCHITECTURE projeto1_arch OF projeto1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL habBT : STD_LOGIC;
SIGNAL habDisplay : STD_LOGIC;
SIGNAL habKEY : STD_LOGIC;
SIGNAL habLED : STD_LOGIC;
SIGNAL habRAM : STD_LOGIC;
SIGNAL habSW : STD_LOGIC;
SIGNAL out_dh : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_dm : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_ds : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_uh : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_um : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_us : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pinoTeste : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL t_outMem : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT projeto1
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	habBT : OUT STD_LOGIC;
	habDisplay : OUT STD_LOGIC;
	habKEY : OUT STD_LOGIC;
	habLED : OUT STD_LOGIC;
	habRAM : OUT STD_LOGIC;
	habSW : OUT STD_LOGIC;
	out_dh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_dm : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_ds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_uh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_um : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_us : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pinoTeste : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	t_outMem : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : projeto1
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	habBT => habBT,
	habDisplay => habDisplay,
	habKEY => habKEY,
	habLED => habLED,
	habRAM => habRAM,
	habSW => habSW,
	out_dh => out_dh,
	out_dm => out_dm,
	out_ds => out_ds,
	out_uh => out_uh,
	out_um => out_um,
	out_us => out_us,
	pinoTeste => pinoTeste,
	t_outMem => t_outMem
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
END projeto1_arch;
