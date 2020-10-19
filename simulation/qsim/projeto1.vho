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

-- DATE "10/18/2020 22:23:27"

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
	SW : IN std_logic_vector(8 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	pinoTeste : OUT std_logic_vector(9 DOWNTO 0);
	t_outMem : OUT std_logic_vector(7 DOWNTO 0);
	t_BT : OUT std_logic_vector(7 DOWNTO 0)
	);
END projeto1;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- pinoTeste[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[8]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pinoTeste : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_t_outMem : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t_BT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~22\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~6_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~7_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ : std_logic;
SIGNAL \processador|UC|operacao[0]~2_combout\ : std_logic;
SIGNAL \processador|UC|comb~3_combout\ : std_logic;
SIGNAL \processador|UC|comb~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~18_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~19_combout\ : std_logic;
SIGNAL \processador|UC|habilitaResgistrador~1_combout\ : std_logic;
SIGNAL \processador|UC|habilitaResgistrador~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~24_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~25_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~22_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~21_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~20_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~23_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~140_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~57_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~141_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~49_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~142_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~65_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~143_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~25_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~146_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~33_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~144_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~41_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~145_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~17_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~128_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~96_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~30\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~34\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~37_sumout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~9_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Equal7~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~27_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~26_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~30_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~14_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~29_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~28_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~1_combout\ : std_logic;
SIGNAL \de|Equal3~0_combout\ : std_logic;
SIGNAL \de|enderecoChave[3]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~11_combout\ : std_logic;
SIGNAL \de|enderecoChave[3]~1_combout\ : std_logic;
SIGNAL \de|Equal2~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~17_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~16_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~8_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~13_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~6_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~2_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~5_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~9_combout\ : std_logic;
SIGNAL \de|enderecoChave~4_combout\ : std_logic;
SIGNAL \de|enderecoChave[2]~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \de|enderecoChave[1]~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~12_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~0_combout\ : std_logic;
SIGNAL \de|habilitaChave~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|contador[0]~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|tick~feeder_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|tick~q\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~1_combout\ : std_logic;
SIGNAL \de|limpaLeitura~0_combout\ : std_logic;
SIGNAL \de|limpaLeitura~combout\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \out_dataRAM[0]~4_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~11_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~10_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[0]~8_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~44_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~28_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~20_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~36_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~12_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~108_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~52_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~60_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~76_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~10\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~14\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[2]~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[2]~10_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~22_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~30_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~38_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~14_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~116_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~62_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~54_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~46_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~84_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~18\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[3]~5_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[3]~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~55_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~63_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~47_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~39_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~23_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~31_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~15_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~120_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~88_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~22\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[4]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~48_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~56_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~64_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~40_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~32_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~24_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~16_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~124_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~92_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~2\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[5]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~7_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[0]~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[6]~12_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~50_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~58feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~58_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~66_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~26_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~34_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~42_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~18_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~132_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~100_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~6\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~26\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[7]~13_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~59_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~35_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~43_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~27_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~19_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~136_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~67_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~51_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~104_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~q\ : std_logic;
SIGNAL \processador|UC|sel_muxJump~0_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~26\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~15_combout\ : std_logic;
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
SIGNAL \processador|fetch|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|UC|operacao[2]~1_combout\ : std_logic;
SIGNAL \processador|UC|operacao[1]~0_combout\ : std_logic;
SIGNAL \processador|UC|comb~1_combout\ : std_logic;
SIGNAL \processador|UC|comb~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[1]~9_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~21_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~29_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~37_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~13_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~112_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~45_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~53_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~61_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~80_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \de|habilitaDisplay~0_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[2]~1_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[0]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~31_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[1]~2_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|Equal0~5_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~3_combout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \baseTempo|baseTempo|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \display|display0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display5|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display4|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display3|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display2|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|UC|operacao\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_habilitaDisplay~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[1]~2_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[2]~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[0]~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \baseTempo|ALT_INV_leituraUmSegundo[0]~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~12_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~136_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~132_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~128_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~124_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~120_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~116_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~112_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~108_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~104_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~100_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~96_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~92_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\ : std_logic;
SIGNAL \processador|fetch|registerPC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \processador|UC|ALT_INV_operacao[0]~2_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao[2]~1_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao[1]~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_tick~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_contador\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \processador|UC|ALT_INV_habilitaResgistrador~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~9_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[3]~5_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[0]~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~4_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[3]~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[3]~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_habilitaChave~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[5]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \display|display5|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display4|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display3|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display2|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display1|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display0|ALT_INV_saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_habilitaResgistrador~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave~4_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[1]~3_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[2]~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~11_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~2_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
pinoTeste <= ww_pinoTeste;
t_outMem <= ww_t_outMem;
t_BT <= ww_t_BT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\display|display0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \display|display0|rascSaida7seg[2]~2_combout\;
\display|display0|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \display|display0|rascSaida7seg[1]~1_combout\;
\display|ALT_INV_Equal0~0_combout\ <= NOT \display|Equal0~0_combout\;
\processador|UC|ALT_INV_Equal7~1_combout\ <= NOT \processador|UC|Equal7~1_combout\;
\de|ALT_INV_habilitaDisplay~0_combout\ <= NOT \de|habilitaDisplay~0_combout\;
\de|ALT_INV_enderecoDisplay[1]~2_combout\ <= NOT \de|enderecoDisplay[1]~2_combout\;
\de|ALT_INV_enderecoDisplay[2]~1_combout\ <= NOT \de|enderecoDisplay[2]~1_combout\;
\de|ALT_INV_enderecoDisplay[0]~0_combout\ <= NOT \de|enderecoDisplay[0]~0_combout\;
\de|ALT_INV_Equal2~0_combout\ <= NOT \de|Equal2~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~16_combout\ <= NOT \processador|fetch|ROM|memROM~16_combout\;
\processador|fetch|ROM|ALT_INV_memROM~15_combout\ <= NOT \processador|fetch|ROM|memROM~15_combout\;
\display|display0|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \display|display0|rascSaida7seg[0]~0_combout\;
\baseTempo|ALT_INV_leituraUmSegundo[0]~2_combout\ <= NOT \baseTempo|leituraUmSegundo[0]~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~14_combout\ <= NOT \processador|fetch|ROM|memROM~14_combout\;
\processador|fetch|ROM|ALT_INV_memROM~13_combout\ <= NOT \processador|fetch|ROM|memROM~13_combout\;
\processador|fetch|ROM|ALT_INV_memROM~12_combout\ <= NOT \processador|fetch|ROM|memROM~12_combout\;
\processador|fetch|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|fetch|ROM|memROM~11_combout\;
\processador|fetch|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|fetch|ROM|memROM~10_combout\;
\baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\ <= NOT \baseTempo|leituraUmSegundo[0]~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|fetch|ROM|memROM~9_combout\;
\processador|fetch|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|fetch|ROM|memROM~8_combout\;
\processador|UC|ALT_INV_Equal7~0_combout\ <= NOT \processador|UC|Equal7~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~7_combout\ <= NOT \processador|fetch|ROM|memROM~7_combout\;
\processador|fetch|ROM|ALT_INV_memROM~6_combout\ <= NOT \processador|fetch|ROM|memROM~6_combout\;
\processador|fetch|ROM|ALT_INV_memROM~5_combout\ <= NOT \processador|fetch|ROM|memROM~5_combout\;
\processador|fetch|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|fetch|ROM|memROM~4_combout\;
\processador|fetch|ROM|ALT_INV_memROM~3_combout\ <= NOT \processador|fetch|ROM|memROM~3_combout\;
\baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\ <= NOT \baseTempo|leituraUmSegundo[0]~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|fetch|ROM|memROM~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|fetch|ROM|memROM~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|fetch|ROM|memROM~0_combout\;
\baseTempo|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \baseTempo|registraUmSegundo|DOUT~q\;
\ALT_INV_out_dataRAM[0]~12_combout\ <= NOT \out_dataRAM[0]~12_combout\;
\processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|arquitetura|ULA|Add0~29_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|arquitetura|ULA|Add0~25_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|arquitetura|ULA|Add0~21_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|arquitetura|ULA|Add0~17_sumout\;
\ALT_INV_out_dataRAM[0]~0_combout\ <= NOT \out_dataRAM[0]~0_combout\;
\processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|arquitetura|ULA|Add0~13_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|arquitetura|ULA|Add0~9_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~5_sumout\ <= NOT \processador|arquitetura|ULA|Add0~5_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~1_sumout\ <= NOT \processador|arquitetura|ULA|Add0~1_sumout\;
\processador|arquitetura|memReg|ALT_INV_registrador~136_combout\ <= NOT \processador|arquitetura|memReg|registrador~136_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~132_combout\ <= NOT \processador|arquitetura|memReg|registrador~132_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~128_combout\ <= NOT \processador|arquitetura|memReg|registrador~128_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~124_combout\ <= NOT \processador|arquitetura|memReg|registrador~124_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~120_combout\ <= NOT \processador|arquitetura|memReg|registrador~120_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~116_combout\ <= NOT \processador|arquitetura|memReg|registrador~116_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~112_combout\ <= NOT \processador|arquitetura|memReg|registrador~112_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~108_combout\ <= NOT \processador|arquitetura|memReg|registrador~108_combout\;
\processador|fetch|somPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|fetch|somPC|Add0~1_sumout\;
\processador|arquitetura|memReg|ALT_INV_registrador~104_combout\ <= NOT \processador|arquitetura|memReg|registrador~104_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~100_combout\ <= NOT \processador|arquitetura|memReg|registrador~100_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~96_combout\ <= NOT \processador|arquitetura|memReg|registrador~96_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~92_combout\ <= NOT \processador|arquitetura|memReg|registrador~92_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~88_combout\ <= NOT \processador|arquitetura|memReg|registrador~88_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~84_combout\ <= NOT \processador|arquitetura|memReg|registrador~84_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~80_combout\ <= NOT \processador|arquitetura|memReg|registrador~80_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~76_combout\ <= NOT \processador|arquitetura|memReg|registrador~76_combout\;
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
\processador|UC|ALT_INV_operacao[0]~2_combout\ <= NOT \processador|UC|operacao[0]~2_combout\;
\processador|UC|ALT_INV_comb~1_combout\ <= NOT \processador|UC|comb~1_combout\;
\processador|UC|ALT_INV_comb~0_combout\ <= NOT \processador|UC|comb~0_combout\;
\processador|UC|ALT_INV_operacao[2]~1_combout\ <= NOT \processador|UC|operacao[2]~1_combout\;
\processador|UC|ALT_INV_operacao[1]~0_combout\ <= NOT \processador|UC|operacao[1]~0_combout\;
\baseTempo|baseTempo|ALT_INV_tick~0_combout\ <= NOT \baseTempo|baseTempo|tick~0_combout\;
\baseTempo|baseTempo|ALT_INV_contador\(0) <= NOT \baseTempo|baseTempo|contador\(0);
\processador|arquitetura|memReg|ALT_INV_registrador~35_q\ <= NOT \processador|arquitetura|memReg|registrador~35_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~19_q\ <= NOT \processador|arquitetura|memReg|registrador~19_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~43_q\ <= NOT \processador|arquitetura|memReg|registrador~43_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~27_q\ <= NOT \processador|arquitetura|memReg|registrador~27_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~34_q\ <= NOT \processador|arquitetura|memReg|registrador~34_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~18_q\ <= NOT \processador|arquitetura|memReg|registrador~18_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~42_q\ <= NOT \processador|arquitetura|memReg|registrador~42_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~26_q\ <= NOT \processador|arquitetura|memReg|registrador~26_q\;
\processador|arquitetura|ULA|ALT_INV_saida[6]~12_combout\ <= NOT \processador|arquitetura|ULA|saida[6]~12_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~33_q\ <= NOT \processador|arquitetura|memReg|registrador~33_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~17_q\ <= NOT \processador|arquitetura|memReg|registrador~17_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~41_q\ <= NOT \processador|arquitetura|memReg|registrador~41_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~25_q\ <= NOT \processador|arquitetura|memReg|registrador~25_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~32_q\ <= NOT \processador|arquitetura|memReg|registrador~32_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~16_q\ <= NOT \processador|arquitetura|memReg|registrador~16_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~40_q\ <= NOT \processador|arquitetura|memReg|registrador~40_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~24_q\ <= NOT \processador|arquitetura|memReg|registrador~24_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~31_q\ <= NOT \processador|arquitetura|memReg|registrador~31_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~15_q\ <= NOT \processador|arquitetura|memReg|registrador~15_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~39_q\ <= NOT \processador|arquitetura|memReg|registrador~39_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~23_q\ <= NOT \processador|arquitetura|memReg|registrador~23_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~30_q\ <= NOT \processador|arquitetura|memReg|registrador~30_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~14_q\ <= NOT \processador|arquitetura|memReg|registrador~14_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~38_q\ <= NOT \processador|arquitetura|memReg|registrador~38_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~22_q\ <= NOT \processador|arquitetura|memReg|registrador~22_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~29_q\ <= NOT \processador|arquitetura|memReg|registrador~29_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~13_q\ <= NOT \processador|arquitetura|memReg|registrador~13_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~37_q\ <= NOT \processador|arquitetura|memReg|registrador~37_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~21_q\ <= NOT \processador|arquitetura|memReg|registrador~21_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~28_q\ <= NOT \processador|arquitetura|memReg|registrador~28_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~12_q\ <= NOT \processador|arquitetura|memReg|registrador~12_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~36_q\ <= NOT \processador|arquitetura|memReg|registrador~36_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~20_q\ <= NOT \processador|arquitetura|memReg|registrador~20_q\;
\processador|UC|ALT_INV_habilitaResgistrador~0_combout\ <= NOT \processador|UC|habilitaResgistrador~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~25_combout\ <= NOT \processador|fetch|ROM|memROM~25_combout\;
\processador|fetch|ROM|ALT_INV_memROM~24_combout\ <= NOT \processador|fetch|ROM|memROM~24_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\;
\ALT_INV_out_dataRAM[0]~10_combout\ <= NOT \out_dataRAM[0]~10_combout\;
\ALT_INV_out_dataRAM[0]~9_combout\ <= NOT \out_dataRAM[0]~9_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~3_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[7]~7_combout\ <= NOT \processador|arquitetura|ULA|saida[7]~7_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[6]~6_combout\ <= NOT \processador|arquitetura|ULA|saida[6]~6_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~2_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[3]~5_combout\ <= NOT \processador|arquitetura|ULA|saida[3]~5_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[2]~4_combout\ <= NOT \processador|arquitetura|ULA|saida[2]~4_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~1_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[0]~3_combout\ <= NOT \processador|arquitetura|ULA|saida[0]~3_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[0]~3_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\;
\ALT_INV_out_dataRAM[0]~8_combout\ <= NOT \out_dataRAM[0]~8_combout\;
\ALT_INV_out_dataRAM[0]~7_combout\ <= NOT \out_dataRAM[0]~7_combout\;
\ALT_INV_out_dataRAM[0]~6_combout\ <= NOT \out_dataRAM[0]~6_combout\;
\ALT_INV_out_dataRAM[0]~5_combout\ <= NOT \out_dataRAM[0]~5_combout\;
\ALT_INV_out_dataRAM[0]~4_combout\ <= NOT \out_dataRAM[0]~4_combout\;
\de|ALT_INV_enderecoChave[3]~1_combout\ <= NOT \de|enderecoChave[3]~1_combout\;
\de|ALT_INV_enderecoChave[3]~0_combout\ <= NOT \de|enderecoChave[3]~0_combout\;
\de|ALT_INV_Equal3~0_combout\ <= NOT \de|Equal3~0_combout\;
\de|ALT_INV_habilitaChave~0_combout\ <= NOT \de|habilitaChave~0_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[1]~2_combout\ <= NOT \processador|arquitetura|ULA|saida[1]~2_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~0_combout\;
\processador|UC|ALT_INV_Equal7~2_combout\ <= NOT \processador|UC|Equal7~2_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[5]~1_combout\ <= NOT \processador|arquitetura|ULA|saida[5]~1_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[5]~1_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[4]~0_combout\ <= NOT \processador|arquitetura|ULA|saida[4]~0_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\;
\de|ALT_INV_limpaLeitura~combout\ <= NOT \de|limpaLeitura~combout\;
\de|ALT_INV_limpaLeitura~0_combout\ <= NOT \de|limpaLeitura~0_combout\;
\baseTempo|baseTempo|ALT_INV_tick~q\ <= NOT \baseTempo|baseTempo|tick~q\;
\processador|arquitetura|memReg|ALT_INV_registrador~67_q\ <= NOT \processador|arquitetura|memReg|registrador~67_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~51_q\ <= NOT \processador|arquitetura|memReg|registrador~51_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~59_q\ <= NOT \processador|arquitetura|memReg|registrador~59_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~66_q\ <= NOT \processador|arquitetura|memReg|registrador~66_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~50_q\ <= NOT \processador|arquitetura|memReg|registrador~50_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~58_q\ <= NOT \processador|arquitetura|memReg|registrador~58_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~65_q\ <= NOT \processador|arquitetura|memReg|registrador~65_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~49_q\ <= NOT \processador|arquitetura|memReg|registrador~49_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~57_q\ <= NOT \processador|arquitetura|memReg|registrador~57_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~64_q\ <= NOT \processador|arquitetura|memReg|registrador~64_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~48_q\ <= NOT \processador|arquitetura|memReg|registrador~48_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~56_q\ <= NOT \processador|arquitetura|memReg|registrador~56_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~63_q\ <= NOT \processador|arquitetura|memReg|registrador~63_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~47_q\ <= NOT \processador|arquitetura|memReg|registrador~47_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~55_q\ <= NOT \processador|arquitetura|memReg|registrador~55_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~62_q\ <= NOT \processador|arquitetura|memReg|registrador~62_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~46_q\ <= NOT \processador|arquitetura|memReg|registrador~46_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~54_q\ <= NOT \processador|arquitetura|memReg|registrador~54_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~61_q\ <= NOT \processador|arquitetura|memReg|registrador~61_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~45_q\ <= NOT \processador|arquitetura|memReg|registrador~45_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~53_q\ <= NOT \processador|arquitetura|memReg|registrador~53_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~60_q\ <= NOT \processador|arquitetura|memReg|registrador~60_q\;
\processador|fetch|ROM|ALT_INV_memROM~23_combout\ <= NOT \processador|fetch|ROM|memROM~23_combout\;
\processador|fetch|ROM|ALT_INV_memROM~22_combout\ <= NOT \processador|fetch|ROM|memROM~22_combout\;
\processador|fetch|ROM|ALT_INV_memROM~21_combout\ <= NOT \processador|fetch|ROM|memROM~21_combout\;
\processador|fetch|ROM|ALT_INV_memROM~20_combout\ <= NOT \processador|fetch|ROM|memROM~20_combout\;
\processador|fetch|ROM|ALT_INV_memROM~19_combout\ <= NOT \processador|fetch|ROM|memROM~19_combout\;
\processador|fetch|ROM|ALT_INV_memROM~18_combout\ <= NOT \processador|fetch|ROM|memROM~18_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~44_q\ <= NOT \processador|arquitetura|memReg|registrador~44_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~52_q\ <= NOT \processador|arquitetura|memReg|registrador~52_q\;
\processador|fetch|ROM|ALT_INV_memROM~17_combout\ <= NOT \processador|fetch|ROM|memROM~17_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~q\;
\display|ALT_INV_Equal0~5_combout\ <= NOT \display|Equal0~5_combout\;
\display|ALT_INV_Equal0~4_combout\ <= NOT \display|Equal0~4_combout\;
\display|ALT_INV_Equal0~3_combout\ <= NOT \display|Equal0~3_combout\;
\display|ALT_INV_Equal0~2_combout\ <= NOT \display|Equal0~2_combout\;
\display|ALT_INV_Equal0~1_combout\ <= NOT \display|Equal0~1_combout\;
\display|display0|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \display|display0|rascSaida7seg[6]~6_combout\;
\display|display0|ALT_INV_rascSaida7seg[5]~5_combout\ <= NOT \display|display0|rascSaida7seg[5]~5_combout\;
\display|display0|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \display|display0|rascSaida7seg[4]~4_combout\;
\display|display0|ALT_INV_rascSaida7seg[3]~3_combout\ <= NOT \display|display0|rascSaida7seg[3]~3_combout\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\processador|UC|ALT_INV_operacao\(0) <= NOT \processador|UC|operacao\(0);
\processador|UC|ALT_INV_operacao\(1) <= NOT \processador|UC|operacao\(1);
\display|display5|ALT_INV_saida7seg\(6) <= NOT \display|display5|saida7seg\(6);
\display|display5|ALT_INV_saida7seg\(5) <= NOT \display|display5|saida7seg\(5);
\display|display5|ALT_INV_saida7seg\(4) <= NOT \display|display5|saida7seg\(4);
\display|display5|ALT_INV_saida7seg\(3) <= NOT \display|display5|saida7seg\(3);
\display|display5|ALT_INV_saida7seg\(2) <= NOT \display|display5|saida7seg\(2);
\display|display5|ALT_INV_saida7seg\(1) <= NOT \display|display5|saida7seg\(1);
\display|display5|ALT_INV_saida7seg\(0) <= NOT \display|display5|saida7seg\(0);
\display|display4|ALT_INV_saida7seg\(6) <= NOT \display|display4|saida7seg\(6);
\display|display4|ALT_INV_saida7seg\(5) <= NOT \display|display4|saida7seg\(5);
\display|display4|ALT_INV_saida7seg\(4) <= NOT \display|display4|saida7seg\(4);
\display|display4|ALT_INV_saida7seg\(3) <= NOT \display|display4|saida7seg\(3);
\display|display4|ALT_INV_saida7seg\(2) <= NOT \display|display4|saida7seg\(2);
\display|display4|ALT_INV_saida7seg\(1) <= NOT \display|display4|saida7seg\(1);
\display|display4|ALT_INV_saida7seg\(0) <= NOT \display|display4|saida7seg\(0);
\display|display3|ALT_INV_saida7seg\(6) <= NOT \display|display3|saida7seg\(6);
\display|display3|ALT_INV_saida7seg\(5) <= NOT \display|display3|saida7seg\(5);
\display|display3|ALT_INV_saida7seg\(4) <= NOT \display|display3|saida7seg\(4);
\display|display3|ALT_INV_saida7seg\(3) <= NOT \display|display3|saida7seg\(3);
\display|display3|ALT_INV_saida7seg\(2) <= NOT \display|display3|saida7seg\(2);
\display|display3|ALT_INV_saida7seg\(1) <= NOT \display|display3|saida7seg\(1);
\display|display3|ALT_INV_saida7seg\(0) <= NOT \display|display3|saida7seg\(0);
\display|display2|ALT_INV_saida7seg\(6) <= NOT \display|display2|saida7seg\(6);
\display|display2|ALT_INV_saida7seg\(5) <= NOT \display|display2|saida7seg\(5);
\display|display2|ALT_INV_saida7seg\(4) <= NOT \display|display2|saida7seg\(4);
\display|display2|ALT_INV_saida7seg\(3) <= NOT \display|display2|saida7seg\(3);
\display|display2|ALT_INV_saida7seg\(2) <= NOT \display|display2|saida7seg\(2);
\display|display2|ALT_INV_saida7seg\(1) <= NOT \display|display2|saida7seg\(1);
\display|display2|ALT_INV_saida7seg\(0) <= NOT \display|display2|saida7seg\(0);
\display|display1|ALT_INV_saida7seg\(6) <= NOT \display|display1|saida7seg\(6);
\display|display1|ALT_INV_saida7seg\(5) <= NOT \display|display1|saida7seg\(5);
\display|display1|ALT_INV_saida7seg\(4) <= NOT \display|display1|saida7seg\(4);
\display|display1|ALT_INV_saida7seg\(3) <= NOT \display|display1|saida7seg\(3);
\display|display1|ALT_INV_saida7seg\(2) <= NOT \display|display1|saida7seg\(2);
\display|display1|ALT_INV_saida7seg\(1) <= NOT \display|display1|saida7seg\(1);
\display|display1|ALT_INV_saida7seg\(0) <= NOT \display|display1|saida7seg\(0);
\display|display0|ALT_INV_saida7seg\(6) <= NOT \display|display0|saida7seg\(6);
\display|display0|ALT_INV_saida7seg\(5) <= NOT \display|display0|saida7seg\(5);
\display|display0|ALT_INV_saida7seg\(4) <= NOT \display|display0|saida7seg\(4);
\display|display0|ALT_INV_saida7seg\(3) <= NOT \display|display0|saida7seg\(3);
\display|display0|ALT_INV_saida7seg\(2) <= NOT \display|display0|saida7seg\(2);
\display|display0|ALT_INV_saida7seg\(1) <= NOT \display|display0|saida7seg\(1);
\display|display0|ALT_INV_saida7seg\(0) <= NOT \display|display0|saida7seg\(0);
\processador|fetch|ROM|ALT_INV_memROM~31_combout\ <= NOT \processador|fetch|ROM|memROM~31_combout\;
\processador|UC|ALT_INV_habilitaResgistrador~1_combout\ <= NOT \processador|UC|habilitaResgistrador~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~30_combout\ <= NOT \processador|fetch|ROM|memROM~30_combout\;
\de|ALT_INV_enderecoChave~4_combout\ <= NOT \de|enderecoChave~4_combout\;
\processador|fetch|ROM|ALT_INV_memROM~29_combout\ <= NOT \processador|fetch|ROM|memROM~29_combout\;
\de|ALT_INV_enderecoChave[1]~3_combout\ <= NOT \de|enderecoChave[1]~3_combout\;
\de|ALT_INV_enderecoChave[2]~2_combout\ <= NOT \de|enderecoChave[2]~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~28_combout\ <= NOT \processador|fetch|ROM|memROM~28_combout\;
\ALT_INV_out_dataRAM[0]~11_combout\ <= NOT \out_dataRAM[0]~11_combout\;
\processador|fetch|ROM|ALT_INV_memROM~27_combout\ <= NOT \processador|fetch|ROM|memROM~27_combout\;
\processador|fetch|ROM|ALT_INV_memROM~26_combout\ <= NOT \processador|fetch|ROM|memROM~26_combout\;
\processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\ <= NOT \processador|arquitetura|ULA|Equal7~0_combout\;
\processador|UC|ALT_INV_comb~3_combout\ <= NOT \processador|UC|comb~3_combout\;
\processador|UC|ALT_INV_comb~2_combout\ <= NOT \processador|UC|comb~2_combout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display0|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display1|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display2|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display3|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display4|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(0),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(1),
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(2),
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(3),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(4),
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(5),
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display|display5|saida7seg\(6),
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X42_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N53
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

-- Location: IOOBUF_X40_Y45_N76
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X43_Y45_N36
\pinoTeste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_pinoTeste(5));

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X40_Y45_N59
\pinoTeste[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|fetch|registerPC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_pinoTeste(8));

-- Location: IOOBUF_X42_Y45_N19
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

-- Location: IOOBUF_X43_Y45_N19
\t_outMem[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~76_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(0));

-- Location: IOOBUF_X44_Y45_N53
\t_outMem[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~80_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(1));

-- Location: IOOBUF_X54_Y14_N96
\t_outMem[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~84_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(2));

-- Location: IOOBUF_X42_Y45_N2
\t_outMem[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~88_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(3));

-- Location: IOOBUF_X54_Y14_N45
\t_outMem[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~92_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(4));

-- Location: IOOBUF_X14_Y0_N36
\t_outMem[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~96_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(5));

-- Location: IOOBUF_X54_Y14_N62
\t_outMem[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~100_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(6));

-- Location: IOOBUF_X14_Y0_N53
\t_outMem[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|arquitetura|memReg|registrador~104_combout\,
	devoe => ww_devoe,
	o => ww_t_outMem(7));

-- Location: IOOBUF_X54_Y15_N5
\t_BT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \baseTempo|leituraUmSegundo[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_t_BT(0));

-- Location: IOOBUF_X54_Y21_N56
\t_BT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(1));

-- Location: IOOBUF_X54_Y15_N22
\t_BT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(2));

-- Location: IOOBUF_X46_Y45_N93
\t_BT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(3));

-- Location: IOOBUF_X48_Y45_N2
\t_BT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(4));

-- Location: IOOBUF_X36_Y45_N19
\t_BT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(5));

-- Location: IOOBUF_X16_Y45_N76
\t_BT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(6));

-- Location: IOOBUF_X11_Y0_N53
\t_BT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_t_BT(7));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: MLABCELL_X42_Y3_N30
\processador|fetch|somPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~1_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|fetch|somPC|Add0~2\ = CARRY(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|fetch|somPC|Add0~1_sumout\,
	cout => \processador|fetch|somPC|Add0~2\);

-- Location: LABCELL_X40_Y3_N15
\processador|fetch|registerPC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|registerPC|DOUT[0]~feeder_combout\ = \processador|fetch|somPC|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|somPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|fetch|registerPC|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X42_Y3_N45
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

-- Location: MLABCELL_X42_Y3_N48
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

-- Location: LABCELL_X43_Y3_N27
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

-- Location: LABCELL_X40_Y3_N48
\processador|fetch|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~6_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(1) & 
-- ((\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0) $ 
-- (!\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & 
-- (!\processador|fetch|registerPC|DOUT\(0) $ (!\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(5) & !\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(1)) # 
-- (\processador|fetch|registerPC|DOUT\(5))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & ((!\processador|fetch|registerPC|DOUT\(4) & 
-- ((\processador|fetch|registerPC|DOUT\(5)))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010001000000010001010010000010000001000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~6_combout\);

-- Location: LABCELL_X40_Y3_N0
\processador|fetch|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~7_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(0) & 
-- (!\processador|fetch|registerPC|DOUT\(5) & !\processador|fetch|registerPC|DOUT\(1)))) # (\processador|fetch|registerPC|DOUT\(4) & (((\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(1))) # 
-- (\processador|fetch|registerPC|DOUT\(5)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & ((!\processador|fetch|registerPC|DOUT\(5)) # 
-- ((\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(1))) # 
-- (\processador|fetch|registerPC|DOUT\(5)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & ((!\processador|fetch|registerPC|DOUT\(5)) # 
-- ((!\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(1)) # 
-- (\processador|fetch|registerPC|DOUT\(5))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(5))))) # 
-- (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000101110011010000110100101111001111000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~7_combout\);

-- Location: LABCELL_X41_Y3_N30
\processador|fetch|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~5_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(4) $ 
-- (((!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(1)))))) # (\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(0) $ (\processador|fetch|registerPC|DOUT\(1))) # 
-- (\processador|fetch|registerPC|DOUT\(4)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(0) & (\processador|fetch|registerPC|DOUT\(5) & 
-- ((\processador|fetch|registerPC|DOUT\(4)) # (\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(0) & (((\processador|fetch|registerPC|DOUT\(4))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(2) & ( 
-- !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(0) & (((\processador|fetch|registerPC|DOUT\(4))))) # (\processador|fetch|registerPC|DOUT\(0) & (\processador|fetch|registerPC|DOUT\(5) & 
-- ((!\processador|fetch|registerPC|DOUT\(4)) # (\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & 
-- (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0) $ (\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(4) & (((\processador|fetch|registerPC|DOUT\(0) & 
-- !\processador|fetch|registerPC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100110000000100011100110100000100011101111110001101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~5_combout\);

-- Location: LABCELL_X41_Y3_N54
\processador|UC|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~2_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( (!\processador|fetch|ROM|memROM~6_combout\ & (!\processador|fetch|ROM|memROM~7_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- \processador|fetch|ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|UC|Equal7~2_combout\);

-- Location: LABCELL_X39_Y4_N21
\processador|arquitetura|flag|flipFlop|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ = ( !\processador|UC|Equal7~2_combout\ & ( \processador|arquitetura|flag|flipFlop|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\,
	dataf => \processador|UC|ALT_INV_Equal7~2_combout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~0_combout\);

-- Location: LABCELL_X43_Y3_N18
\processador|UC|operacao[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[0]~2_combout\ = ( \processador|fetch|ROM|memROM~6_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~5_combout\ $ (((\processador|fetch|ROM|memROM~7_combout\ & 
-- !\processador|fetch|ROM|memROM~4_combout\))))) ) ) # ( !\processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~7_combout\ & (\processador|fetch|ROM|memROM~4_combout\ & (\processador|fetch|ROM|memROM~5_combout\ & 
-- \processador|fetch|ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000101101000000000010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|UC|operacao[0]~2_combout\);

-- Location: LABCELL_X43_Y3_N0
\processador|UC|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~3_combout\ = ( \processador|UC|operacao[2]~1_combout\ ) # ( !\processador|UC|operacao[2]~1_combout\ & ( \processador|UC|operacao[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao[0]~2_combout\,
	datae => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	combout => \processador|UC|comb~3_combout\);

-- Location: LABCELL_X43_Y3_N21
\processador|UC|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~2_combout\ = ( \processador|UC|operacao[0]~2_combout\ & ( !\processador|UC|operacao[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	dataf => \processador|UC|ALT_INV_operacao[0]~2_combout\,
	combout => \processador|UC|comb~2_combout\);

-- Location: LABCELL_X43_Y3_N30
\processador|UC|operacao[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao\(0) = ( !\processador|UC|comb~2_combout\ & ( \processador|UC|operacao\(0) ) ) # ( !\processador|UC|comb~2_combout\ & ( !\processador|UC|operacao\(0) & ( !\processador|UC|comb~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_comb~3_combout\,
	datae => \processador|UC|ALT_INV_comb~2_combout\,
	dataf => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|UC|operacao\(0));

-- Location: LABCELL_X43_Y4_N54
\processador|fetch|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~18_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & 
-- (!\processador|fetch|registerPC|DOUT\(3) $ (!\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(3) & 
-- \processador|fetch|registerPC|DOUT\(0)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(4))) # (\processador|fetch|registerPC|DOUT\(2) & ((\processador|fetch|registerPC|DOUT\(0)))))) # (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(2) $ (!\processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(3))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & 
-- \processador|fetch|registerPC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010000000100001000010011110000000001001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	combout => \processador|fetch|ROM|memROM~18_combout\);

-- Location: LABCELL_X43_Y4_N0
\processador|fetch|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~19_combout\ = (\processador|fetch|ROM|memROM~18_combout\ & \processador|fetch|ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~18_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|fetch|ROM|memROM~19_combout\);

-- Location: LABCELL_X43_Y3_N45
\processador|UC|habilitaResgistrador~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|habilitaResgistrador~1_combout\ = ( \processador|fetch|ROM|memROM~3_combout\ & ( \processador|fetch|ROM|memROM~5_combout\ & ( (!\processador|fetch|ROM|memROM~7_combout\ & (\processador|fetch|ROM|memROM~6_combout\ & 
-- !\processador|fetch|ROM|memROM~4_combout\)) ) ) ) # ( \processador|fetch|ROM|memROM~3_combout\ & ( !\processador|fetch|ROM|memROM~5_combout\ & ( (!\processador|fetch|ROM|memROM~7_combout\ & (!\processador|fetch|ROM|memROM~6_combout\ & 
-- !\processador|fetch|ROM|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|UC|habilitaResgistrador~1_combout\);

-- Location: LABCELL_X41_Y3_N36
\processador|UC|habilitaResgistrador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|habilitaResgistrador~0_combout\ = ( \processador|fetch|ROM|memROM~7_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & (!\processador|fetch|ROM|memROM~5_combout\ & 
-- !\processador|fetch|ROM|memROM~6_combout\))) ) ) # ( !\processador|fetch|ROM|memROM~7_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & (\processador|fetch|ROM|memROM~5_combout\ & 
-- !\processador|fetch|ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	combout => \processador|UC|habilitaResgistrador~0_combout\);

-- Location: MLABCELL_X42_Y3_N12
\processador|fetch|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~24_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(3) & 
-- ((\processador|fetch|registerPC|DOUT\(4)) # (\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (!\processador|fetch|registerPC|DOUT\(4))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & ((!\processador|fetch|registerPC|DOUT\(3)) # 
-- (!\processador|fetch|registerPC|DOUT\(2)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- ((!\processador|fetch|registerPC|DOUT\(1)) # (!\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (\processador|fetch|registerPC|DOUT\(4) & 
-- ((!\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(1) & \processador|fetch|registerPC|DOUT\(2))) # (\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110100110010000000000011111100000000000001100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~24_combout\);

-- Location: MLABCELL_X42_Y3_N21
\processador|fetch|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~25_combout\ = ( \processador|fetch|ROM|memROM~3_combout\ & ( \processador|fetch|ROM|memROM~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~24_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|fetch|ROM|memROM~25_combout\);

-- Location: MLABCELL_X42_Y3_N18
\processador|fetch|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~22_combout\ = ( \processador|fetch|registerPC|DOUT\(0) & ( (\processador|fetch|registerPC|DOUT\(3) & ((\processador|fetch|registerPC|DOUT\(2)) # (\processador|fetch|registerPC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~22_combout\);

-- Location: MLABCELL_X42_Y3_N0
\processador|fetch|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~21_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(1) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( 
-- \processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(1) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( \processador|fetch|registerPC|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~21_combout\);

-- Location: MLABCELL_X42_Y3_N27
\processador|fetch|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~20_combout\ = ( \processador|fetch|registerPC|DOUT\(0) & ( (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(1) & !\processador|fetch|registerPC|DOUT\(2))) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(1)) # (!\processador|fetch|registerPC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~20_combout\);

-- Location: MLABCELL_X42_Y3_N6
\processador|fetch|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~23_combout\ = ( \processador|fetch|ROM|memROM~20_combout\ & ( \processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(4) & 
-- ((\processador|fetch|ROM|memROM~21_combout\))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|ROM|memROM~22_combout\)))) # (\processador|fetch|registerPC|DOUT\(5) & (((!\processador|fetch|registerPC|DOUT\(4))))) ) ) ) # ( 
-- !\processador|fetch|ROM|memROM~20_combout\ & ( \processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(4) & ((\processador|fetch|ROM|memROM~21_combout\))) # 
-- (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|ROM|memROM~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010001000100101111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~21_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|ROM|ALT_INV_memROM~20_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|fetch|ROM|memROM~23_combout\);

-- Location: MLABCELL_X45_Y4_N39
\processador|arquitetura|memReg|registrador~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~140_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ 
-- & \processador|fetch|ROM|memROM~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~140_combout\);

-- Location: FF_X41_Y4_N43
\processador|arquitetura|memReg|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~57_q\);

-- Location: MLABCELL_X37_Y4_N0
\processador|arquitetura|memReg|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~141_combout\ = ( !\processador|UC|habilitaResgistrador~0_combout\ & ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|UC|habilitaResgistrador~1_combout\ & (\processador|fetch|ROM|memROM~19_combout\ 
-- & !\processador|fetch|ROM|memROM~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datae => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~141_combout\);

-- Location: FF_X37_Y4_N44
\processador|arquitetura|memReg|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~49_q\);

-- Location: MLABCELL_X37_Y4_N18
\processador|arquitetura|memReg|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~142_combout\ = ( !\processador|UC|habilitaResgistrador~0_combout\ & ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|UC|habilitaResgistrador~1_combout\ & (\processador|fetch|ROM|memROM~19_combout\ 
-- & !\processador|fetch|ROM|memROM~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datae => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~142_combout\);

-- Location: FF_X37_Y4_N56
\processador|arquitetura|memReg|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~65_q\);

-- Location: MLABCELL_X45_Y4_N12
\processador|arquitetura|memReg|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~143_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ 
-- & \processador|fetch|ROM|memROM~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~143_combout\);

-- Location: FF_X39_Y4_N31
\processador|arquitetura|memReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~25_q\);

-- Location: MLABCELL_X45_Y4_N9
\processador|arquitetura|memReg|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~146_combout\ = ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ 
-- & !\processador|fetch|ROM|memROM~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~146_combout\);

-- Location: FF_X39_Y4_N17
\processador|arquitetura|memReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[5]~1_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~33_q\);

-- Location: MLABCELL_X37_Y4_N45
\processador|arquitetura|memReg|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~144_combout\ = ( !\processador|UC|habilitaResgistrador~0_combout\ & ( (!\processador|UC|habilitaResgistrador~1_combout\ & (\processador|fetch|ROM|memROM~25_combout\ & (\processador|fetch|ROM|memROM~23_combout\ & 
-- !\processador|fetch|ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	combout => \processador|arquitetura|memReg|registrador~144_combout\);

-- Location: FF_X43_Y4_N32
\processador|arquitetura|memReg|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~41_q\);

-- Location: MLABCELL_X45_Y4_N48
\processador|arquitetura|memReg|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~145_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ 
-- & !\processador|fetch|ROM|memROM~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~145_combout\);

-- Location: FF_X40_Y3_N11
\processador|arquitetura|memReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~1_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~17_q\);

-- Location: LABCELL_X43_Y4_N30
\processador|arquitetura|memReg|registrador~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~128_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~17_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~25_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) 
-- ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~33_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~41_q\)))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~25_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~33_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~41_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~17_q\,
	combout => \processador|arquitetura|memReg|registrador~128_combout\);

-- Location: MLABCELL_X37_Y4_N54
\processador|arquitetura|memReg|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~96_combout\ = ( \processador|arquitetura|memReg|registrador~65_q\ & ( \processador|arquitetura|memReg|registrador~128_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((\processador|arquitetura|memReg|registrador~57_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~65_q\ & ( \processador|arquitetura|memReg|registrador~128_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~57_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~65_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~128_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~49_q\) # (\processador|fetch|ROM|memROM~23_combout\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~65_q\ & ( !\processador|arquitetura|memReg|registrador~128_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|fetch|ROM|memROM~23_combout\ & 
-- \processador|arquitetura|memReg|registrador~49_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000001010101010110111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~57_q\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~49_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~65_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~128_combout\,
	combout => \processador|arquitetura|memReg|registrador~96_combout\);

-- Location: LABCELL_X41_Y3_N0
\processador|fetch|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~8_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(5)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & 
-- (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(5)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(0) & ( 
-- (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(5)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( 
-- !\processador|fetch|registerPC|DOUT\(0) & ( (\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & \processador|fetch|registerPC|DOUT\(3))) # (\processador|fetch|registerPC|DOUT\(1) 
-- & (\processador|fetch|registerPC|DOUT\(4) & !\processador|fetch|registerPC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000000100000000000000100000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~8_combout\);

-- Location: MLABCELL_X42_Y3_N51
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

-- Location: MLABCELL_X42_Y3_N54
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

-- Location: FF_X42_Y3_N56
\processador|fetch|registerPC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(8));

-- Location: MLABCELL_X42_Y3_N57
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

-- Location: FF_X42_Y3_N59
\processador|fetch|registerPC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~37_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(9));

-- Location: LABCELL_X39_Y3_N3
\processador|fetch|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~0_combout\ = ( !\processador|fetch|registerPC|DOUT\(6) & ( !\processador|fetch|registerPC|DOUT\(7) & ( !\processador|fetch|registerPC|DOUT\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	combout => \processador|fetch|ROM|memROM~0_combout\);

-- Location: LABCELL_X40_Y3_N42
\processador|fetch|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~9_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( (\processador|fetch|ROM|memROM~8_combout\ & !\processador|fetch|registerPC|DOUT\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~9_combout\);

-- Location: LABCELL_X40_Y3_N12
\processador|UC|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~0_combout\ = ( \processador|fetch|ROM|memROM~4_combout\ & ( !\processador|fetch|ROM|memROM~3_combout\ ) ) # ( !\processador|fetch|ROM|memROM~4_combout\ & ( (!\processador|fetch|ROM|memROM~3_combout\) # 
-- ((!\processador|fetch|ROM|memROM~6_combout\ & (\processador|fetch|ROM|memROM~7_combout\ & \processador|fetch|ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000010111111110000001011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	combout => \processador|UC|Equal7~0_combout\);

-- Location: LABCELL_X41_Y3_N27
\processador|arquitetura|muxInstRAM|saida_MUX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\ = ( !\processador|UC|Equal7~0_combout\ & ( \processador|fetch|ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	dataf => \processador|UC|ALT_INV_Equal7~0_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\);

-- Location: LABCELL_X41_Y3_N6
\processador|arquitetura|ULA|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Equal7~0_combout\ = (!\processador|UC|operacao\(1) & !\processador|UC|operacao\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao\(1),
	datad => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|arquitetura|ULA|Equal7~0_combout\);

-- Location: LABCELL_X41_Y3_N57
\processador|fetch|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~27_combout\ = ( \processador|fetch|ROM|memROM~8_combout\ & ( \processador|fetch|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	combout => \processador|fetch|ROM|memROM~27_combout\);

-- Location: LABCELL_X39_Y3_N30
\processador|fetch|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~12_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- (!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(4)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(3) & 
-- (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(0) 
-- & !\processador|fetch|registerPC|DOUT\(4)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(1) & ( (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(0) & 
-- ((!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(4))) # (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010000010000010000000000010000100000100000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	combout => \processador|fetch|ROM|memROM~12_combout\);

-- Location: LABCELL_X39_Y4_N12
\processador|fetch|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~26_combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( \processador|fetch|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	combout => \processador|fetch|ROM|memROM~26_combout\);

-- Location: LABCELL_X41_Y3_N48
\processador|fetch|ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~30_combout\ = ( \processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) & 
-- (!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(2))) # (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(5) & \processador|fetch|registerPC|DOUT\(2)))) 
-- ) ) ) # ( \processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(1) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(5) & 
-- \processador|fetch|registerPC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001000000001000000000000000100000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~30_combout\);

-- Location: LABCELL_X41_Y3_N24
\processador|fetch|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~14_combout\ = ( \processador|fetch|ROM|memROM~30_combout\ & ( (!\processador|fetch|registerPC|DOUT\(6) & (!\processador|fetch|registerPC|DOUT\(8) & !\processador|fetch|registerPC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~30_combout\,
	combout => \processador|fetch|ROM|memROM~14_combout\);

-- Location: LABCELL_X39_Y3_N18
\processador|fetch|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~10_combout\ = ( \processador|fetch|registerPC|DOUT\(0) & ( \processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (((!\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(2)))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(0) & ( \processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(3) & 
-- (((\processador|fetch|registerPC|DOUT\(4))))) # (\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(4))) # (\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(4) & !\processador|fetch|registerPC|DOUT\(5))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(0) & ( !\processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(2) & 
-- ((!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) & \processador|fetch|registerPC|DOUT\(5))) # (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(4) & 
-- !\processador|fetch|registerPC|DOUT\(5))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(0) & ( !\processador|fetch|registerPC|DOUT\(1) & ( (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) $ 
-- (((!\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(2)))))) # (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(4) $ 
-- (!\processador|fetch|registerPC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101110010010000001001000000001001011010010100101000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	combout => \processador|fetch|ROM|memROM~10_combout\);

-- Location: LABCELL_X39_Y3_N24
\processador|fetch|ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~29_combout\ = (\processador|fetch|ROM|memROM~10_combout\ & \processador|fetch|ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~29_combout\);

-- Location: LABCELL_X41_Y4_N54
\processador|fetch|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~2_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(3) & 
-- (!\processador|fetch|registerPC|DOUT\(4) $ (!\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (((\processador|fetch|registerPC|DOUT\(3) & 
-- !\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(2)))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (!\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( 
-- !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(4) & 
-- (\processador|fetch|registerPC|DOUT\(2) & ((!\processador|fetch|registerPC|DOUT\(1)) # (\processador|fetch|registerPC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001101000000100111000000001100000100000110000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~2_combout\);

-- Location: LABCELL_X41_Y4_N42
\processador|fetch|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~28_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~28_combout\);

-- Location: LABCELL_X40_Y3_N6
\processador|fetch|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~1_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & (((!\processador|fetch|registerPC|DOUT\(1))))) # 
-- (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(4) & \processador|fetch|registerPC|DOUT\(1)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( 
-- \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0) $ (((!\processador|fetch|registerPC|DOUT\(4)) # (\processador|fetch|registerPC|DOUT\(1)))))) # 
-- (\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(4) & !\processador|fetch|registerPC|DOUT\(1)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(2) & ( 
-- !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) $ (((!\processador|fetch|registerPC|DOUT\(5) & !\processador|fetch|registerPC|DOUT\(0)))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0)))) # 
-- (\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(5) & \processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001001111000000000111100000111000001000101010101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~1_combout\);

-- Location: LABCELL_X41_Y4_N0
\de|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|Equal3~0_combout\ = (\processador|fetch|ROM|memROM~0_combout\ & (!\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~2_combout\ & !\processador|fetch|registerPC|DOUT\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	combout => \de|Equal3~0_combout\);

-- Location: LABCELL_X39_Y3_N45
\de|enderecoChave[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[3]~0_combout\ = ( \processador|fetch|ROM|memROM~8_combout\ & ( \processador|fetch|ROM|memROM~0_combout\ ) ) # ( !\processador|fetch|ROM|memROM~8_combout\ & ( (\processador|fetch|ROM|memROM~12_combout\ & 
-- \processador|fetch|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	combout => \de|enderecoChave[3]~0_combout\);

-- Location: LABCELL_X39_Y3_N51
\processador|fetch|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~11_combout\ = ( \processador|fetch|ROM|memROM~10_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	combout => \processador|fetch|ROM|memROM~11_combout\);

-- Location: LABCELL_X41_Y4_N45
\de|enderecoChave[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[3]~1_combout\ = ( \processador|fetch|ROM|memROM~14_combout\ & ( (\de|Equal3~0_combout\ & (!\de|enderecoChave[3]~0_combout\ & (\processador|fetch|ROM|memROM~11_combout\ & !\processador|fetch|registerPC|DOUT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_Equal3~0_combout\,
	datab => \de|ALT_INV_enderecoChave[3]~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|enderecoChave[3]~1_combout\);

-- Location: LABCELL_X40_Y4_N45
\de|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|Equal2~0_combout\ = ( \processador|fetch|ROM|memROM~8_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~0_combout\) ) ) # ( !\processador|fetch|ROM|memROM~8_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & 
-- (\processador|fetch|ROM|memROM~0_combout\ & \processador|fetch|ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	combout => \de|Equal2~0_combout\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X40_Y3_N30
\processador|fetch|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~17_combout\ = ( \processador|fetch|ROM|memROM~14_combout\ & ( !\processador|fetch|registerPC|DOUT\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \processador|fetch|ROM|memROM~17_combout\);

-- Location: LABCELL_X41_Y4_N3
\processador|fetch|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~16_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~16_combout\);

-- Location: LABCELL_X41_Y4_N12
\out_dataRAM[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~8_combout\ = ( \processador|fetch|ROM|memROM~15_combout\ & ( \processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (!\de|Equal2~0_combout\ & (\SW[8]~input_o\ & 
-- !\processador|fetch|ROM|memROM~17_combout\))) ) ) ) # ( !\processador|fetch|ROM|memROM~15_combout\ & ( \processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (!\de|Equal2~0_combout\ & \SW[8]~input_o\)) ) ) ) # ( 
-- \processador|fetch|ROM|memROM~15_combout\ & ( !\processador|fetch|ROM|memROM~16_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & (!\de|Equal2~0_combout\ & (\SW[8]~input_o\ & \processador|fetch|ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000100000001000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \de|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~17_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	combout => \out_dataRAM[0]~8_combout\);

-- Location: LABCELL_X39_Y3_N27
\processador|fetch|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~13_combout\ = ( !\processador|fetch|registerPC|DOUT\(9) & ( (\processador|fetch|ROM|memROM~12_combout\ & \processador|fetch|ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	combout => \processador|fetch|ROM|memROM~13_combout\);

-- Location: LABCELL_X39_Y3_N57
\baseTempo|leituraUmSegundo[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~0_combout\ = ( \processador|fetch|ROM|memROM~1_combout\ & ( (\processador|fetch|ROM|memROM~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X39_Y3_N6
\out_dataRAM[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~6_combout\ = ( \KEY[0]~input_o\ & ( !\processador|fetch|registerPC|DOUT\(9) & ( (!\processador|fetch|ROM|memROM~13_combout\ & (\processador|fetch|ROM|memROM~11_combout\ & (\processador|fetch|ROM|memROM~14_combout\ & 
-- \baseTempo|leituraUmSegundo[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datad => \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	combout => \out_dataRAM[0]~6_combout\);

-- Location: LABCELL_X39_Y3_N48
\baseTempo|leituraUmSegundo[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~2_combout\ = ( \processador|fetch|ROM|memROM~13_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & ((!\processador|fetch|ROM|memROM~14_combout\) # (\processador|fetch|registerPC|DOUT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~2_combout\);

-- Location: LABCELL_X40_Y3_N21
\baseTempo|leituraUmSegundo[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~1_combout\ = ( !\processador|fetch|ROM|memROM~9_combout\ & ( \processador|UC|Equal7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X39_Y3_N42
\out_dataRAM[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~5_combout\ = ( \processador|fetch|ROM|memROM~15_combout\ & ( (!\processador|fetch|ROM|memROM~16_combout\ & \KEY[2]~input_o\) ) ) # ( !\processador|fetch|ROM|memROM~15_combout\ & ( (!\processador|fetch|ROM|memROM~16_combout\ & 
-- (\KEY[1]~input_o\)) # (\processador|fetch|ROM|memROM~16_combout\ & ((\KEY[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	combout => \out_dataRAM[0]~5_combout\);

-- Location: LABCELL_X39_Y3_N54
\out_dataRAM[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~9_combout\ = ( \out_dataRAM[0]~5_combout\ & ( (\baseTempo|leituraUmSegundo[0]~1_combout\ & ((\baseTempo|leituraUmSegundo[0]~2_combout\) # (\out_dataRAM[0]~6_combout\))) ) ) # ( !\out_dataRAM[0]~5_combout\ & ( (\out_dataRAM[0]~6_combout\ & 
-- \baseTempo|leituraUmSegundo[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_out_dataRAM[0]~6_combout\,
	datac => \baseTempo|ALT_INV_leituraUmSegundo[0]~2_combout\,
	datad => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~5_combout\,
	combout => \out_dataRAM[0]~9_combout\);

-- Location: LABCELL_X40_Y4_N48
\de|enderecoChave~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave~4_combout\ = ( \processador|fetch|ROM|memROM~15_combout\ & ( \processador|fetch|ROM|memROM~14_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & (!\de|Equal2~0_combout\ & ((!\processador|fetch|ROM|memROM~16_combout\) # 
-- (!\processador|fetch|ROM|memROM~29_combout\)))) ) ) ) # ( \processador|fetch|ROM|memROM~15_combout\ & ( !\processador|fetch|ROM|memROM~14_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & (\processador|fetch|ROM|memROM~16_combout\ & 
-- (\processador|fetch|ROM|memROM~29_combout\ & !\de|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~29_combout\,
	datad => \de|ALT_INV_Equal2~0_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|enderecoChave~4_combout\);

-- Location: LABCELL_X40_Y4_N42
\de|enderecoChave[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[2]~2_combout\ = ( \processador|fetch|ROM|memROM~14_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & (!\de|Equal2~0_combout\ & (!\processador|fetch|ROM|memROM~16_combout\ $ (!\processador|fetch|ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|enderecoChave[2]~2_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X41_Y3_N9
\de|enderecoChave[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[1]~3_combout\ = ( !\processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~14_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & !\de|Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \de|ALT_INV_Equal2~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	combout => \de|enderecoChave[1]~3_combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X40_Y4_N54
\out_dataRAM[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~12_combout\ = ( !\de|enderecoChave[1]~3_combout\ & ( (!\de|enderecoChave~4_combout\ & (!\de|enderecoChave[2]~2_combout\ & (\SW[0]~input_o\))) # (\de|enderecoChave~4_combout\ & ((((\SW[1]~input_o\))) # (\de|enderecoChave[2]~2_combout\))) ) 
-- ) # ( \de|enderecoChave[1]~3_combout\ & ( (!\de|enderecoChave~4_combout\ & (!\de|enderecoChave[2]~2_combout\ & (\SW[2]~input_o\))) # (\de|enderecoChave~4_combout\ & ((((\SW[3]~input_o\))) # (\de|enderecoChave[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoChave~4_combout\,
	datab => \de|ALT_INV_enderecoChave[2]~2_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \de|ALT_INV_enderecoChave[1]~3_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	datag => \ALT_INV_SW[0]~input_o\,
	combout => \out_dataRAM[0]~12_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X40_Y4_N30
\out_dataRAM[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~0_combout\ = ( !\de|enderecoChave[1]~3_combout\ & ( (!\out_dataRAM[0]~12_combout\ & (\de|enderecoChave[2]~2_combout\ & (\SW[4]~input_o\))) # (\out_dataRAM[0]~12_combout\ & ((!\de|enderecoChave[2]~2_combout\) # (((\SW[5]~input_o\))))) ) ) # 
-- ( \de|enderecoChave[1]~3_combout\ & ( (!\out_dataRAM[0]~12_combout\ & (\de|enderecoChave[2]~2_combout\ & (\SW[6]~input_o\))) # (\out_dataRAM[0]~12_combout\ & ((!\de|enderecoChave[2]~2_combout\) # (((\SW[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001010111010001100100011001000110010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_dataRAM[0]~12_combout\,
	datab => \de|ALT_INV_enderecoChave[2]~2_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \de|ALT_INV_enderecoChave[1]~3_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	datag => \ALT_INV_SW[4]~input_o\,
	combout => \out_dataRAM[0]~0_combout\);

-- Location: LABCELL_X41_Y4_N30
\de|habilitaChave~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|habilitaChave~0_combout\ = ( \processador|fetch|registerPC|DOUT\(9) & ( \processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & !\de|Equal2~0_combout\) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(9) & ( 
-- \processador|fetch|ROM|memROM~16_combout\ & ( (!\de|Equal2~0_combout\ & ((!\processador|fetch|ROM|memROM~11_combout\ & ((\processador|fetch|ROM|memROM~14_combout\))) # (\processador|fetch|ROM|memROM~11_combout\ & 
-- ((!\processador|fetch|ROM|memROM~15_combout\) # (!\processador|fetch|ROM|memROM~14_combout\))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(9) & ( !\processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~14_combout\ & 
-- !\de|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001011110000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datad => \de|ALT_INV_Equal2~0_combout\,
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	combout => \de|habilitaChave~0_combout\);

-- Location: LABCELL_X24_Y1_N51
\baseTempo|baseTempo|contador[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|contador[0]~0_combout\ = ( !\baseTempo|baseTempo|contador\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \baseTempo|baseTempo|ALT_INV_contador\(0),
	combout => \baseTempo|baseTempo|contador[0]~0_combout\);

-- Location: FF_X24_Y1_N53
\baseTempo|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(0));

-- Location: LABCELL_X24_Y1_N12
\baseTempo|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|tick~0_combout\ = ( \baseTempo|baseTempo|contador\(0) & ( !\baseTempo|baseTempo|tick~q\ ) ) # ( !\baseTempo|baseTempo|contador\(0) & ( \baseTempo|baseTempo|tick~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \baseTempo|baseTempo|ALT_INV_tick~q\,
	dataf => \baseTempo|baseTempo|ALT_INV_contador\(0),
	combout => \baseTempo|baseTempo|tick~0_combout\);

-- Location: LABCELL_X24_Y1_N9
\baseTempo|baseTempo|tick~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|tick~feeder_combout\ = ( \baseTempo|baseTempo|tick~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \baseTempo|baseTempo|ALT_INV_tick~0_combout\,
	combout => \baseTempo|baseTempo|tick~feeder_combout\);

-- Location: FF_X24_Y1_N11
\baseTempo|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \baseTempo|baseTempo|tick~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|tick~q\);

-- Location: LABCELL_X40_Y3_N36
\baseTempo|registraUmSegundo|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|registraUmSegundo|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \baseTempo|registraUmSegundo|DOUT~feeder_combout\);

-- Location: LABCELL_X40_Y3_N45
\processador|UC|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~1_combout\ = ( !\processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~5_combout\ & (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- \processador|fetch|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|UC|Equal7~1_combout\);

-- Location: LABCELL_X40_Y3_N54
\de|limpaLeitura~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~0_combout\ = ( !\processador|fetch|registerPC|DOUT\(9) & ( !\processador|fetch|ROM|memROM~8_combout\ & ( (!\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~12_combout\ & (\processador|fetch|ROM|memROM~10_combout\ 
-- & \processador|fetch|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	combout => \de|limpaLeitura~0_combout\);

-- Location: LABCELL_X40_Y3_N33
\de|limpaLeitura\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~combout\ = ( \de|limpaLeitura~0_combout\ & ( (!\processador|fetch|ROM|memROM~16_combout\ & (\processador|UC|Equal7~1_combout\ & ((!\processador|fetch|ROM|memROM~14_combout\) # (\processador|fetch|registerPC|DOUT\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100011000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|UC|ALT_INV_Equal7~1_combout\,
	dataf => \de|ALT_INV_limpaLeitura~0_combout\,
	combout => \de|limpaLeitura~combout\);

-- Location: FF_X40_Y3_N38
\baseTempo|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \baseTempo|baseTempo|tick~q\,
	d => \baseTempo|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \de|ALT_INV_limpaLeitura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|registraUmSegundo|DOUT~q\);

-- Location: LABCELL_X40_Y3_N24
\out_dataRAM[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~4_combout\ = ( \baseTempo|leituraUmSegundo[0]~0_combout\ & ( \baseTempo|registraUmSegundo|DOUT~q\ & ( (\baseTempo|leituraUmSegundo[0]~1_combout\ & (!\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~17_combout\ & 
-- \processador|fetch|ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	datae => \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\,
	dataf => \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	combout => \out_dataRAM[0]~4_combout\);

-- Location: LABCELL_X40_Y4_N36
\out_dataRAM[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~11_combout\ = ( \de|habilitaChave~0_combout\ & ( \out_dataRAM[0]~4_combout\ & ( (!\de|enderecoChave[3]~1_combout\ & ((\out_dataRAM[0]~0_combout\))) # (\de|enderecoChave[3]~1_combout\ & (\out_dataRAM[0]~8_combout\)) ) ) ) # ( 
-- !\de|habilitaChave~0_combout\ & ( \out_dataRAM[0]~4_combout\ ) ) # ( \de|habilitaChave~0_combout\ & ( !\out_dataRAM[0]~4_combout\ & ( (!\de|enderecoChave[3]~1_combout\ & ((\out_dataRAM[0]~0_combout\))) # (\de|enderecoChave[3]~1_combout\ & 
-- (\out_dataRAM[0]~8_combout\)) ) ) ) # ( !\de|habilitaChave~0_combout\ & ( !\out_dataRAM[0]~4_combout\ & ( ((\de|enderecoChave[3]~1_combout\ & \out_dataRAM[0]~8_combout\)) # (\out_dataRAM[0]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000100011011101111111111111111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datab => \ALT_INV_out_dataRAM[0]~8_combout\,
	datac => \ALT_INV_out_dataRAM[0]~9_combout\,
	datad => \ALT_INV_out_dataRAM[0]~0_combout\,
	datae => \de|ALT_INV_habilitaChave~0_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~4_combout\,
	combout => \out_dataRAM[0]~11_combout\);

-- Location: MLABCELL_X42_Y4_N18
\out_dataRAM[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~10_combout\ = ( \de|habilitaChave~0_combout\ & ( (!\de|enderecoChave[3]~1_combout\) # (!\out_dataRAM[0]~8_combout\) ) ) # ( !\de|habilitaChave~0_combout\ & ( (!\out_dataRAM[0]~9_combout\ & (!\out_dataRAM[0]~4_combout\ & 
-- ((!\de|enderecoChave[3]~1_combout\) # (!\out_dataRAM[0]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_dataRAM[0]~9_combout\,
	datab => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datac => \ALT_INV_out_dataRAM[0]~8_combout\,
	datad => \ALT_INV_out_dataRAM[0]~4_combout\,
	dataf => \de|ALT_INV_habilitaChave~0_combout\,
	combout => \out_dataRAM[0]~10_combout\);

-- Location: MLABCELL_X42_Y4_N6
\processador|arquitetura|muxInstRAM|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\ = ( \processador|UC|Equal7~0_combout\ & ( \de|habilitaChave~0_combout\ & ( (\out_dataRAM[0]~10_combout\ & ((!\out_dataRAM[0]~0_combout\) # (\de|enderecoChave[3]~1_combout\))) ) ) ) # ( 
-- !\processador|UC|Equal7~0_combout\ & ( \de|habilitaChave~0_combout\ & ( !\processador|fetch|ROM|memROM~15_combout\ ) ) ) # ( \processador|UC|Equal7~0_combout\ & ( !\de|habilitaChave~0_combout\ & ( \out_dataRAM[0]~10_combout\ ) ) ) # ( 
-- !\processador|UC|Equal7~0_combout\ & ( !\de|habilitaChave~0_combout\ & ( !\processador|fetch|ROM|memROM~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000011110000111110101010101010100000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_out_dataRAM[0]~0_combout\,
	datac => \ALT_INV_out_dataRAM[0]~10_combout\,
	datad => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datae => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \de|ALT_INV_habilitaChave~0_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\);

-- Location: LABCELL_X40_Y4_N0
\processador|arquitetura|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~34_cout\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	cin => GND,
	cout => \processador|arquitetura|ULA|Add0~34_cout\);

-- Location: LABCELL_X40_Y4_N3
\processador|arquitetura|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~9_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (\processador|fetch|ROM|memROM~15_combout\)) # (\processador|UC|Equal7~0_combout\ & 
-- ((\out_dataRAM[0]~11_combout\))))) ) + ( \processador|arquitetura|memReg|registrador~76_combout\ ) + ( \processador|arquitetura|ULA|Add0~34_cout\ ))
-- \processador|arquitetura|ULA|Add0~10\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (\processador|fetch|ROM|memROM~15_combout\)) # (\processador|UC|Equal7~0_combout\ & 
-- ((\out_dataRAM[0]~11_combout\))))) ) + ( \processador|arquitetura|memReg|registrador~76_combout\ ) + ( \processador|arquitetura|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011010010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_out_dataRAM[0]~11_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	cin => \processador|arquitetura|ULA|Add0~34_cout\,
	sumout => \processador|arquitetura|ULA|Add0~9_sumout\,
	cout => \processador|arquitetura|ULA|Add0~10\);

-- Location: LABCELL_X41_Y4_N51
\processador|arquitetura|ULA|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[0]~8_combout\ = ( \processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~9_sumout\)))) # (\processador|UC|operacao\(1) & 
-- ((!\processador|UC|operacao\(0)) # ((!\processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\)))) ) ) # ( !\processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~9_sumout\)))) 
-- # (\processador|UC|operacao\(1) & (\processador|UC|operacao\(0) & (!\processador|arquitetura|muxInstRAM|saida_MUX[0]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~4_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \processador|arquitetura|ULA|saida[0]~8_combout\);

-- Location: FF_X43_Y4_N58
\processador|arquitetura|memReg|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~44_q\);

-- Location: FF_X41_Y4_N53
\processador|arquitetura|memReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[0]~8_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~28_q\);

-- Location: FF_X39_Y4_N35
\processador|arquitetura|memReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~20_q\);

-- Location: FF_X43_Y4_N4
\processador|arquitetura|memReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~36_q\);

-- Location: FF_X41_Y4_N32
\processador|arquitetura|memReg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~12_q\);

-- Location: MLABCELL_X42_Y4_N24
\processador|arquitetura|memReg|registrador~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~108_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~12_q\)) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~20_q\)))))) # (\processador|fetch|ROM|memROM~19_combout\ & (\processador|fetch|ROM|memROM~25_combout\)) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~28_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~36_q\)))))) # 
-- (\processador|fetch|ROM|memROM~19_combout\ & (\processador|fetch|ROM|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~28_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~20_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~36_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~12_q\,
	combout => \processador|arquitetura|memReg|registrador~108_combout\);

-- Location: FF_X41_Y4_N13
\processador|arquitetura|memReg|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~52_q\);

-- Location: FF_X42_Y4_N44
\processador|arquitetura|memReg|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~60_q\);

-- Location: MLABCELL_X42_Y4_N42
\processador|arquitetura|memReg|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~76_combout\ = ( \processador|arquitetura|memReg|registrador~60_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~108_combout\ & 
-- (((\processador|fetch|ROM|memROM~23_combout\)) # (\processador|arquitetura|memReg|registrador~44_q\))) # (\processador|arquitetura|memReg|registrador~108_combout\ & (((\processador|arquitetura|memReg|registrador~52_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~60_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & 
-- ((!\processador|arquitetura|memReg|registrador~108_combout\ & (\processador|arquitetura|memReg|registrador~44_q\)) # (\processador|arquitetura|memReg|registrador~108_combout\ & ((\processador|arquitetura|memReg|registrador~52_q\))))) ) ) ) # ( 
-- \processador|arquitetura|memReg|registrador~60_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~108_combout\ ) ) ) # ( !\processador|arquitetura|memReg|registrador~60_q\ & ( 
-- !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101000111000000000100011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~44_q\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~108_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~52_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~60_q\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|arquitetura|memReg|registrador~76_combout\);

-- Location: LABCELL_X40_Y4_N6
\processador|arquitetura|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~13_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~28_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~80_combout\ ) + ( \processador|arquitetura|ULA|Add0~10\ ))
-- \processador|arquitetura|ULA|Add0~14\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~28_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~80_combout\ ) + ( \processador|arquitetura|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~28_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	cin => \processador|arquitetura|ULA|Add0~10\,
	sumout => \processador|arquitetura|ULA|Add0~13_sumout\,
	cout => \processador|arquitetura|ULA|Add0~14\);

-- Location: LABCELL_X40_Y4_N9
\processador|arquitetura|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~17_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~84_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & 
-- \processador|fetch|ROM|memROM~29_combout\)))) ) + ( \processador|arquitetura|ULA|Add0~14\ ))
-- \processador|arquitetura|ULA|Add0~18\ = CARRY(( \processador|arquitetura|memReg|registrador~84_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & 
-- \processador|fetch|ROM|memROM~29_combout\)))) ) + ( \processador|arquitetura|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~29_combout\,
	cin => \processador|arquitetura|ULA|Add0~14\,
	sumout => \processador|arquitetura|ULA|Add0~17_sumout\,
	cout => \processador|arquitetura|ULA|Add0~18\);

-- Location: LABCELL_X39_Y4_N9
\processador|arquitetura|ULA|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[2]~4_combout\ = ( \processador|fetch|ROM|memROM~11_combout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0) & (\processador|arquitetura|memReg|registrador~84_combout\)) # (\processador|UC|operacao\(0) 
-- & ((!\processador|UC|Equal7~0_combout\))))) ) ) # ( !\processador|fetch|ROM|memROM~11_combout\ & ( (\processador|UC|operacao\(1) & (\processador|arquitetura|memReg|registrador~84_combout\ & !\processador|UC|operacao\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001010100000001000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	combout => \processador|arquitetura|ULA|saida[2]~4_combout\);

-- Location: LABCELL_X41_Y4_N27
\processador|arquitetura|ULA|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[2]~10_combout\ = ( \processador|arquitetura|ULA|saida[2]~4_combout\ ) # ( !\processador|arquitetura|ULA|saida[2]~4_combout\ & ( (\processador|arquitetura|ULA|Add0~17_sumout\ & !\processador|UC|operacao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[2]~4_combout\,
	combout => \processador|arquitetura|ULA|saida[2]~10_combout\);

-- Location: FF_X42_Y4_N16
\processador|arquitetura|memReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~22_q\);

-- Location: FF_X41_Y4_N29
\processador|arquitetura|memReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[2]~10_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~30_q\);

-- Location: FF_X43_Y4_N44
\processador|arquitetura|memReg|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~38_q\);

-- Location: FF_X42_Y4_N55
\processador|arquitetura|memReg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~14_q\);

-- Location: LABCELL_X43_Y4_N42
\processador|arquitetura|memReg|registrador~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~116_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~14_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~22_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) 
-- ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~30_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~38_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~22_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~30_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~38_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~14_q\,
	combout => \processador|arquitetura|memReg|registrador~116_combout\);

-- Location: FF_X42_Y4_N11
\processador|arquitetura|memReg|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~62_q\);

-- Location: FF_X41_Y4_N58
\processador|arquitetura|memReg|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~54_q\);

-- Location: FF_X43_Y4_N14
\processador|arquitetura|memReg|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~46_q\);

-- Location: LABCELL_X43_Y4_N12
\processador|arquitetura|memReg|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~84_combout\ = ( \processador|arquitetura|memReg|registrador~46_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~116_combout\ & 
-- (((!\processador|fetch|ROM|memROM~23_combout\)) # (\processador|arquitetura|memReg|registrador~62_q\))) # (\processador|arquitetura|memReg|registrador~116_combout\ & (((\processador|arquitetura|memReg|registrador~54_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~46_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~116_combout\ & 
-- (\processador|arquitetura|memReg|registrador~62_q\ & ((\processador|fetch|ROM|memROM~23_combout\)))) # (\processador|arquitetura|memReg|registrador~116_combout\ & (((\processador|arquitetura|memReg|registrador~54_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( \processador|arquitetura|memReg|registrador~46_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~116_combout\ ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~46_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~116_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000101001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~116_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~62_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~54_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~46_q\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|arquitetura|memReg|registrador~84_combout\);

-- Location: LABCELL_X40_Y4_N12
\processador|arquitetura|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~21_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~14_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~88_combout\ ) + ( \processador|arquitetura|ULA|Add0~18\ ))
-- \processador|arquitetura|ULA|Add0~22\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~14_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~88_combout\ ) + ( \processador|arquitetura|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	cin => \processador|arquitetura|ULA|Add0~18\,
	sumout => \processador|arquitetura|ULA|Add0~21_sumout\,
	cout => \processador|arquitetura|ULA|Add0~22\);

-- Location: MLABCELL_X45_Y4_N33
\processador|arquitetura|ULA|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[3]~5_combout\ = ( \processador|UC|operacao\(1) & ( (!\processador|UC|operacao\(0) & (\processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|UC|operacao\(0) & 
-- (((\processador|fetch|ROM|memROM~17_combout\ & !\processador|UC|Equal7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(0),
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|ULA|saida[3]~5_combout\);

-- Location: LABCELL_X41_Y4_N48
\processador|arquitetura|ULA|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[3]~11_combout\ = ( \processador|arquitetura|ULA|saida[3]~5_combout\ ) # ( !\processador|arquitetura|ULA|saida[3]~5_combout\ & ( (!\processador|UC|operacao\(1) & \processador|arquitetura|ULA|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[3]~5_combout\,
	combout => \processador|arquitetura|ULA|saida[3]~11_combout\);

-- Location: FF_X41_Y4_N16
\processador|arquitetura|memReg|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~55_q\);

-- Location: FF_X42_Y4_N46
\processador|arquitetura|memReg|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~63_q\);

-- Location: FF_X43_Y4_N26
\processador|arquitetura|memReg|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~47_q\);

-- Location: FF_X43_Y4_N20
\processador|arquitetura|memReg|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~39_q\);

-- Location: FF_X42_Y4_N31
\processador|arquitetura|memReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~23_q\);

-- Location: FF_X41_Y4_N49
\processador|arquitetura|memReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[3]~11_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~31_q\);

-- Location: FF_X42_Y4_N25
\processador|arquitetura|memReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~15_q\);

-- Location: LABCELL_X43_Y4_N18
\processador|arquitetura|memReg|registrador~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~120_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~15_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~23_q\)))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) 
-- ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & ((\processador|arquitetura|memReg|registrador~31_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- (\processador|arquitetura|memReg|registrador~39_q\)))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000000110011111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~39_q\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~23_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~31_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~15_q\,
	combout => \processador|arquitetura|memReg|registrador~120_combout\);

-- Location: LABCELL_X43_Y4_N24
\processador|arquitetura|memReg|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~88_combout\ = ( \processador|arquitetura|memReg|registrador~47_q\ & ( \processador|arquitetura|memReg|registrador~120_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((\processador|arquitetura|memReg|registrador~55_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~47_q\ & ( \processador|arquitetura|memReg|registrador~120_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~55_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~47_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~120_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~23_combout\) # (\processador|arquitetura|memReg|registrador~63_q\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~47_q\ & ( !\processador|arquitetura|memReg|registrador~120_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~63_q\ & 
-- \processador|fetch|ROM|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110000001111011101110011001101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~55_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~63_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~47_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~120_combout\,
	combout => \processador|arquitetura|memReg|registrador~88_combout\);

-- Location: LABCELL_X40_Y4_N15
\processador|arquitetura|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~1_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~26_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~92_combout\ ) + ( \processador|arquitetura|ULA|Add0~22\ ))
-- \processador|arquitetura|ULA|Add0~2\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~26_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~92_combout\ ) + ( \processador|arquitetura|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~26_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~92_combout\,
	cin => \processador|arquitetura|ULA|Add0~22\,
	sumout => \processador|arquitetura|ULA|Add0~1_sumout\,
	cout => \processador|arquitetura|ULA|Add0~2\);

-- Location: LABCELL_X41_Y3_N39
\processador|arquitetura|muxInstRAM|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\ = ( !\processador|UC|Equal7~0_combout\ & ( \processador|fetch|ROM|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	dataf => \processador|UC|ALT_INV_Equal7~0_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\);

-- Location: LABCELL_X39_Y4_N39
\processador|arquitetura|ULA|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[4]~0_combout\ = ( \processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~1_sumout\)))) # (\processador|UC|operacao\(1) & 
-- (((\processador|arquitetura|memReg|registrador~92_combout\)) # (\processador|UC|operacao\(0)))) ) ) # ( !\processador|arquitetura|muxInstRAM|saida_MUX[4]~0_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~1_sumout\)))) # 
-- (\processador|UC|operacao\(1) & (!\processador|UC|operacao\(0) & ((\processador|arquitetura|memReg|registrador~92_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~1_sumout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~92_combout\,
	dataf => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[4]~0_combout\,
	combout => \processador|arquitetura|ULA|saida[4]~0_combout\);

-- Location: FF_X37_Y4_N11
\processador|arquitetura|memReg|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~48_q\);

-- Location: FF_X44_Y4_N10
\processador|arquitetura|memReg|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~56_q\);

-- Location: FF_X37_Y4_N14
\processador|arquitetura|memReg|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~64_q\);

-- Location: FF_X37_Y4_N49
\processador|arquitetura|memReg|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~40_q\);

-- Location: FF_X39_Y4_N41
\processador|arquitetura|memReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[4]~0_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~32_q\);

-- Location: FF_X39_Y4_N47
\processador|arquitetura|memReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~24_q\);

-- Location: FF_X41_Y4_N23
\processador|arquitetura|memReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~16_q\);

-- Location: MLABCELL_X37_Y4_N48
\processador|arquitetura|memReg|registrador~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~124_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~16_q\)) 
-- # (\processador|fetch|ROM|memROM~25_combout\ & ((\processador|arquitetura|memReg|registrador~24_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & ((\processador|arquitetura|memReg|registrador~32_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~40_q\))))) # 
-- (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000110011111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~40_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~32_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~24_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~16_q\,
	combout => \processador|arquitetura|memReg|registrador~124_combout\);

-- Location: MLABCELL_X37_Y4_N12
\processador|arquitetura|memReg|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~92_combout\ = ( \processador|arquitetura|memReg|registrador~64_q\ & ( \processador|arquitetura|memReg|registrador~124_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~56_q\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~64_q\ & ( \processador|arquitetura|memReg|registrador~124_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~56_q\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~64_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~124_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~48_q\) # (\processador|fetch|ROM|memROM~23_combout\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~64_q\ & ( !\processador|arquitetura|memReg|registrador~124_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & (\processador|arquitetura|memReg|registrador~48_q\ & 
-- \processador|fetch|ROM|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000111011111111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~48_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~56_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~64_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~124_combout\,
	combout => \processador|arquitetura|memReg|registrador~92_combout\);

-- Location: LABCELL_X40_Y4_N18
\processador|arquitetura|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~5_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~27_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~96_combout\ ) + ( \processador|arquitetura|ULA|Add0~2\ ))
-- \processador|arquitetura|ULA|Add0~6\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~27_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~96_combout\ ) + ( \processador|arquitetura|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~27_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~96_combout\,
	cin => \processador|arquitetura|ULA|Add0~2\,
	sumout => \processador|arquitetura|ULA|Add0~5_sumout\,
	cout => \processador|arquitetura|ULA|Add0~6\);

-- Location: LABCELL_X39_Y4_N15
\processador|arquitetura|ULA|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[5]~1_combout\ = ( \processador|arquitetura|ULA|Add0~5_sumout\ & ( (!\processador|UC|operacao\(1)) # ((!\processador|UC|operacao\(0) & (\processador|arquitetura|memReg|registrador~96_combout\)) # 
-- (\processador|UC|operacao\(0) & ((\processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\)))) ) ) # ( !\processador|arquitetura|ULA|Add0~5_sumout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0) & 
-- (\processador|arquitetura|memReg|registrador~96_combout\)) # (\processador|UC|operacao\(0) & ((\processador|arquitetura|muxInstRAM|saida_MUX[5]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~96_combout\,
	datad => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[5]~1_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~5_sumout\,
	combout => \processador|arquitetura|ULA|saida[5]~1_combout\);

-- Location: LABCELL_X39_Y4_N18
\processador|arquitetura|flag|flipFlop|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~2_combout\ = ( \processador|arquitetura|ULA|Add0~21_sumout\ & ( (!\processador|arquitetura|ULA|saida[2]~4_combout\ & (!\processador|arquitetura|ULA|saida[3]~5_combout\ & \processador|UC|operacao\(1))) ) ) # ( 
-- !\processador|arquitetura|ULA|Add0~21_sumout\ & ( (!\processador|arquitetura|ULA|saida[2]~4_combout\ & (!\processador|arquitetura|ULA|saida[3]~5_combout\ & ((!\processador|arquitetura|ULA|Add0~17_sumout\) # (\processador|UC|operacao\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_saida[2]~4_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_saida[3]~5_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~2_combout\);

-- Location: LABCELL_X39_Y4_N57
\processador|arquitetura|muxInstRAM|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[0]~3_combout\ = ( \processador|fetch|ROM|memROM~15_combout\ & ( !\processador|UC|Equal7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[0]~3_combout\);

-- Location: LABCELL_X39_Y3_N12
\out_dataRAM[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~7_combout\ = ( \out_dataRAM[0]~4_combout\ & ( \baseTempo|leituraUmSegundo[0]~1_combout\ & ( !\de|habilitaChave~0_combout\ ) ) ) # ( !\out_dataRAM[0]~4_combout\ & ( \baseTempo|leituraUmSegundo[0]~1_combout\ & ( 
-- (!\de|habilitaChave~0_combout\ & (((\baseTempo|leituraUmSegundo[0]~2_combout\ & \out_dataRAM[0]~5_combout\)) # (\out_dataRAM[0]~6_combout\))) ) ) ) # ( \out_dataRAM[0]~4_combout\ & ( !\baseTempo|leituraUmSegundo[0]~1_combout\ & ( 
-- !\de|habilitaChave~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000011111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|ALT_INV_leituraUmSegundo[0]~2_combout\,
	datab => \ALT_INV_out_dataRAM[0]~5_combout\,
	datac => \ALT_INV_out_dataRAM[0]~6_combout\,
	datad => \de|ALT_INV_habilitaChave~0_combout\,
	datae => \ALT_INV_out_dataRAM[0]~4_combout\,
	dataf => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	combout => \out_dataRAM[0]~7_combout\);

-- Location: LABCELL_X39_Y3_N36
\processador|arquitetura|muxInstRAM|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\ = ( \processador|UC|Equal7~0_combout\ & ( \out_dataRAM[0]~7_combout\ ) ) # ( \processador|UC|Equal7~0_combout\ & ( !\out_dataRAM[0]~7_combout\ & ( (!\de|enderecoChave[3]~1_combout\ & 
-- (\de|habilitaChave~0_combout\ & (\out_dataRAM[0]~0_combout\))) # (\de|enderecoChave[3]~1_combout\ & (((\out_dataRAM[0]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100101011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datab => \de|ALT_INV_habilitaChave~0_combout\,
	datac => \ALT_INV_out_dataRAM[0]~0_combout\,
	datad => \ALT_INV_out_dataRAM[0]~8_combout\,
	datae => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~7_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\);

-- Location: LABCELL_X39_Y4_N51
\processador|arquitetura|ULA|saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[0]~3_combout\ = ( \processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\ & ( (\processador|UC|operacao\(1) & ((\processador|arquitetura|memReg|registrador~76_combout\) # (\processador|UC|operacao\(0)))) ) ) # ( 
-- !\processador|arquitetura|muxInstRAM|saida_MUX[0]~2_combout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0) & (\processador|arquitetura|memReg|registrador~76_combout\)) # (\processador|UC|operacao\(0) & 
-- ((\processador|arquitetura|muxInstRAM|saida_MUX[0]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datad => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~3_combout\,
	dataf => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \processador|arquitetura|ULA|saida[0]~3_combout\);

-- Location: LABCELL_X39_Y4_N36
\processador|arquitetura|ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[1]~2_combout\ = ( \processador|UC|Equal7~0_combout\ & ( (\processador|UC|operacao\(1) & (!\processador|UC|operacao\(0) & \processador|arquitetura|memReg|registrador~80_combout\)) ) ) # ( 
-- !\processador|UC|Equal7~0_combout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0) & (\processador|arquitetura|memReg|registrador~80_combout\)) # (\processador|UC|operacao\(0) & ((\processador|fetch|ROM|memROM~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|UC|ALT_INV_Equal7~0_combout\,
	combout => \processador|arquitetura|ULA|saida[1]~2_combout\);

-- Location: LABCELL_X39_Y4_N30
\processador|arquitetura|flag|flipFlop|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~1_combout\ = ( \processador|UC|operacao\(1) & ( \processador|arquitetura|ULA|Add0~9_sumout\ & ( (!\processador|arquitetura|ULA|saida[0]~3_combout\ & (!\processador|arquitetura|ULA|saida[1]~2_combout\ & 
-- \processador|UC|Equal7~2_combout\)) ) ) ) # ( \processador|UC|operacao\(1) & ( !\processador|arquitetura|ULA|Add0~9_sumout\ & ( (!\processador|arquitetura|ULA|saida[0]~3_combout\ & (!\processador|arquitetura|ULA|saida[1]~2_combout\ & 
-- \processador|UC|Equal7~2_combout\)) ) ) ) # ( !\processador|UC|operacao\(1) & ( !\processador|arquitetura|ULA|Add0~9_sumout\ & ( (!\processador|arquitetura|ULA|saida[0]~3_combout\ & (!\processador|arquitetura|ULA|saida[1]~2_combout\ & 
-- (\processador|UC|Equal7~2_combout\ & !\processador|arquitetura|ULA|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000100000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_saida[0]~3_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_saida[1]~2_combout\,
	datac => \processador|UC|ALT_INV_Equal7~2_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\,
	datae => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~1_combout\);

-- Location: LABCELL_X39_Y4_N48
\processador|arquitetura|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[6]~6_combout\ = (\processador|UC|operacao\(1) & (!\processador|UC|operacao\(0) & \processador|arquitetura|memReg|registrador~100_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|UC|ALT_INV_operacao\(0),
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~100_combout\,
	combout => \processador|arquitetura|ULA|saida[6]~6_combout\);

-- Location: LABCELL_X39_Y4_N6
\processador|arquitetura|ULA|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[6]~12_combout\ = ( \processador|arquitetura|ULA|saida[6]~6_combout\ ) # ( !\processador|arquitetura|ULA|saida[6]~6_combout\ & ( (!\processador|UC|operacao\(1) & \processador|arquitetura|ULA|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[6]~6_combout\,
	combout => \processador|arquitetura|ULA|saida[6]~12_combout\);

-- Location: FF_X37_Y4_N5
\processador|arquitetura|memReg|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~50_q\);

-- Location: LABCELL_X40_Y5_N36
\processador|arquitetura|memReg|registrador~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~58feeder_combout\ = ( \processador|arquitetura|ULA|saida[6]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[6]~12_combout\,
	combout => \processador|arquitetura|memReg|registrador~58feeder_combout\);

-- Location: FF_X40_Y5_N37
\processador|arquitetura|memReg|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~58feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~58_q\);

-- Location: FF_X37_Y4_N26
\processador|arquitetura|memReg|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~66_q\);

-- Location: FF_X39_Y4_N52
\processador|arquitetura|memReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~26_q\);

-- Location: FF_X39_Y4_N8
\processador|arquitetura|memReg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[6]~12_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~34_q\);

-- Location: FF_X37_Y4_N32
\processador|arquitetura|memReg|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~42_q\);

-- Location: FF_X40_Y3_N29
\processador|arquitetura|memReg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~18_q\);

-- Location: MLABCELL_X37_Y4_N30
\processador|arquitetura|memReg|registrador~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~132_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~18_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~26_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) 
-- ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~34_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~42_q\)))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~26_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~34_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~42_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~18_q\,
	combout => \processador|arquitetura|memReg|registrador~132_combout\);

-- Location: MLABCELL_X37_Y4_N24
\processador|arquitetura|memReg|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~100_combout\ = ( \processador|arquitetura|memReg|registrador~66_q\ & ( \processador|arquitetura|memReg|registrador~132_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~58_q\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~66_q\ & ( \processador|arquitetura|memReg|registrador~132_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~58_q\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~66_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~132_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~50_q\) # (\processador|fetch|ROM|memROM~23_combout\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~66_q\ & ( !\processador|arquitetura|memReg|registrador~132_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & (\processador|fetch|ROM|memROM~19_combout\ & 
-- \processador|arquitetura|memReg|registrador~50_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000100110001001111001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~50_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~58_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~66_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~132_combout\,
	combout => \processador|arquitetura|memReg|registrador~100_combout\);

-- Location: LABCELL_X40_Y4_N21
\processador|arquitetura|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~25_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~100_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~6\ ))
-- \processador|arquitetura|ULA|Add0~26\ = CARRY(( \processador|arquitetura|memReg|registrador~100_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~100_combout\,
	cin => \processador|arquitetura|ULA|Add0~6\,
	sumout => \processador|arquitetura|ULA|Add0~25_sumout\,
	cout => \processador|arquitetura|ULA|Add0~26\);

-- Location: LABCELL_X40_Y4_N24
\processador|arquitetura|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~29_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~104_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~104_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	cin => \processador|arquitetura|ULA|Add0~26\,
	sumout => \processador|arquitetura|ULA|Add0~29_sumout\);

-- Location: LABCELL_X39_Y4_N27
\processador|arquitetura|ULA|saida[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[7]~13_combout\ = ( \processador|arquitetura|ULA|saida[7]~7_combout\ ) # ( !\processador|arquitetura|ULA|saida[7]~7_combout\ & ( (!\processador|UC|operacao\(1) & \processador|arquitetura|ULA|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[7]~7_combout\,
	combout => \processador|arquitetura|ULA|saida[7]~13_combout\);

-- Location: FF_X41_Y4_N5
\processador|arquitetura|memReg|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~59_q\);

-- Location: FF_X39_Y4_N29
\processador|arquitetura|memReg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[7]~13_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~35_q\);

-- Location: FF_X37_Y4_N37
\processador|arquitetura|memReg|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~43_q\);

-- Location: FF_X39_Y4_N49
\processador|arquitetura|memReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~27_q\);

-- Location: FF_X41_Y4_N34
\processador|arquitetura|memReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~19_q\);

-- Location: MLABCELL_X37_Y4_N36
\processador|arquitetura|memReg|registrador~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~136_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~19_q\)) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~27_q\)))))) # (\processador|fetch|ROM|memROM~19_combout\ & (\processador|fetch|ROM|memROM~25_combout\)) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~35_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~43_q\)))))) # 
-- (\processador|fetch|ROM|memROM~19_combout\ & (\processador|fetch|ROM|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~35_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~43_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~27_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~19_q\,
	combout => \processador|arquitetura|memReg|registrador~136_combout\);

-- Location: FF_X37_Y4_N17
\processador|arquitetura|memReg|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~67_q\);

-- Location: FF_X37_Y4_N8
\processador|arquitetura|memReg|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[7]~13_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~51_q\);

-- Location: MLABCELL_X37_Y4_N6
\processador|arquitetura|memReg|registrador~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~104_combout\ = ( \processador|arquitetura|memReg|registrador~51_q\ & ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & 
-- (\processador|arquitetura|memReg|registrador~136_combout\)) # (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|arquitetura|memReg|registrador~136_combout\ & \processador|arquitetura|memReg|registrador~67_q\)) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~51_q\ & ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~136_combout\)) # (\processador|fetch|ROM|memROM~19_combout\ & 
-- (!\processador|arquitetura|memReg|registrador~136_combout\ & \processador|arquitetura|memReg|registrador~67_q\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~51_q\ & ( !\processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~136_combout\))) # (\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|arquitetura|memReg|registrador~136_combout\) # 
-- (\processador|arquitetura|memReg|registrador~59_q\))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~51_q\ & ( !\processador|fetch|ROM|memROM~23_combout\ & ( (\processador|arquitetura|memReg|registrador~136_combout\ & 
-- ((!\processador|fetch|ROM|memROM~19_combout\) # (\processador|arquitetura|memReg|registrador~59_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101001111010011110100001100001111000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~59_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~136_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~67_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~51_q\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~104_combout\);

-- Location: LABCELL_X39_Y4_N42
\processador|arquitetura|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[7]~7_combout\ = (\processador|UC|operacao\(1) & (\processador|arquitetura|memReg|registrador~104_combout\ & !\processador|UC|operacao\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~104_combout\,
	datad => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|arquitetura|ULA|saida[7]~7_combout\);

-- Location: LABCELL_X39_Y4_N45
\processador|arquitetura|flag|flipFlop|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ = ( \processador|arquitetura|ULA|Add0~29_sumout\ & ( (\processador|UC|operacao\(1) & (!\processador|arquitetura|ULA|saida[7]~7_combout\ & !\processador|arquitetura|ULA|saida[6]~6_combout\)) ) ) # ( 
-- !\processador|arquitetura|ULA|Add0~29_sumout\ & ( (!\processador|arquitetura|ULA|saida[7]~7_combout\ & (!\processador|arquitetura|ULA|saida[6]~6_combout\ & ((!\processador|arquitetura|ULA|Add0~25_sumout\) # (\processador|UC|operacao\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\,
	datac => \processador|arquitetura|ULA|ALT_INV_saida[7]~7_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_saida[6]~6_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~3_combout\);

-- Location: LABCELL_X39_Y4_N0
\processador|arquitetura|flag|flipFlop|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~4_combout\ = ( \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ & ( \processador|arquitetura|ULA|saida[4]~0_combout\ & ( \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ ) ) ) # ( 
-- !\processador|arquitetura|flag|flipFlop|DOUT~3_combout\ & ( \processador|arquitetura|ULA|saida[4]~0_combout\ & ( \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ ) ) ) # ( \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ & ( 
-- !\processador|arquitetura|ULA|saida[4]~0_combout\ & ( ((!\processador|arquitetura|ULA|saida[5]~1_combout\ & (\processador|arquitetura|flag|flipFlop|DOUT~2_combout\ & \processador|arquitetura|flag|flipFlop|DOUT~1_combout\))) # 
-- (\processador|arquitetura|flag|flipFlop|DOUT~0_combout\) ) ) ) # ( !\processador|arquitetura|flag|flipFlop|DOUT~3_combout\ & ( !\processador|arquitetura|ULA|saida[4]~0_combout\ & ( \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_saida[5]~1_combout\,
	datac => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\,
	datad => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\,
	datae => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[4]~0_combout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~4_combout\);

-- Location: FF_X39_Y4_N2
\processador|arquitetura|flag|flipFlop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|flag|flipFlop|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|flag|flipFlop|DOUT~q\);

-- Location: LABCELL_X41_Y3_N42
\processador|UC|sel_muxJump~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|sel_muxJump~0_combout\ = ( \processador|fetch|ROM|memROM~6_combout\ & ( \processador|fetch|ROM|memROM~5_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- !\processador|fetch|ROM|memROM~7_combout\)) ) ) ) # ( !\processador|fetch|ROM|memROM~6_combout\ & ( !\processador|fetch|ROM|memROM~5_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- (\processador|arquitetura|flag|flipFlop|DOUT~q\ & !\processador|fetch|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|UC|sel_muxJump~0_combout\);

-- Location: FF_X42_Y3_N50
\processador|fetch|registerPC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(6));

-- Location: FF_X42_Y3_N53
\processador|fetch|registerPC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(7));

-- Location: MLABCELL_X42_Y3_N24
\processador|fetch|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~3_combout\ = ( !\processador|fetch|registerPC|DOUT\(8) & ( (!\processador|fetch|registerPC|DOUT\(7) & (!\processador|fetch|registerPC|DOUT\(6) & !\processador|fetch|registerPC|DOUT\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	combout => \processador|fetch|ROM|memROM~3_combout\);

-- Location: LABCELL_X40_Y3_N18
\processador|fetch|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~15_combout\ = ( \processador|fetch|ROM|memROM~1_combout\ & ( \processador|fetch|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|fetch|ROM|memROM~15_combout\);

-- Location: FF_X40_Y3_N17
\processador|fetch|registerPC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|registerPC|DOUT[0]~feeder_combout\,
	asdata => \processador|fetch|ROM|memROM~15_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(0));

-- Location: MLABCELL_X42_Y3_N33
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

-- Location: FF_X42_Y3_N35
\processador|fetch|registerPC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~5_sumout\,
	asdata => \processador|fetch|ROM|memROM~16_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(1));

-- Location: MLABCELL_X42_Y3_N36
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

-- Location: FF_X42_Y3_N38
\processador|fetch|registerPC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~9_sumout\,
	asdata => \processador|fetch|ROM|memROM~11_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N39
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

-- Location: FF_X42_Y3_N41
\processador|fetch|registerPC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~13_sumout\,
	asdata => \processador|fetch|ROM|memROM~17_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(3));

-- Location: MLABCELL_X42_Y3_N42
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

-- Location: FF_X42_Y3_N44
\processador|fetch|registerPC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~17_sumout\,
	asdata => \processador|fetch|ROM|memROM~13_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(4));

-- Location: FF_X42_Y3_N47
\processador|fetch|registerPC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~21_sumout\,
	asdata => \processador|fetch|ROM|memROM~9_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(5));

-- Location: LABCELL_X41_Y3_N18
\processador|fetch|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~4_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(0) & (\processador|fetch|registerPC|DOUT\(1) 
-- & \processador|fetch|registerPC|DOUT\(4)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( \processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & ((!\processador|fetch|registerPC|DOUT\(5) & 
-- (!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(4))) # (\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(4))))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(1) & ((!\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(4)))) # 
-- (\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(4)))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( !\processador|fetch|registerPC|DOUT\(3) & ( 
-- (!\processador|fetch|registerPC|DOUT\(5) & (((!\processador|fetch|registerPC|DOUT\(4))))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(1) & 
-- \processador|fetch|registerPC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000000111000000011000000000001000010000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~4_combout\);

-- Location: LABCELL_X43_Y3_N54
\processador|UC|operacao[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[2]~1_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( \processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~7_combout\ & \processador|fetch|ROM|memROM~3_combout\) ) ) ) # ( 
-- !\processador|fetch|ROM|memROM~5_combout\ & ( !\processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & \processador|fetch|ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|UC|operacao[2]~1_combout\);

-- Location: LABCELL_X43_Y3_N39
\processador|UC|operacao[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[1]~0_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( \processador|fetch|ROM|memROM~6_combout\ & ( (\processador|fetch|ROM|memROM~7_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- \processador|fetch|ROM|memROM~3_combout\)) ) ) ) # ( !\processador|fetch|ROM|memROM~5_combout\ & ( \processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & \processador|fetch|ROM|memROM~3_combout\) ) ) ) # ( 
-- \processador|fetch|ROM|memROM~5_combout\ & ( !\processador|fetch|ROM|memROM~6_combout\ & ( (\processador|fetch|ROM|memROM~3_combout\ & ((!\processador|fetch|ROM|memROM~7_combout\) # (\processador|fetch|ROM|memROM~4_combout\))) ) ) ) # ( 
-- !\processador|fetch|ROM|memROM~5_combout\ & ( !\processador|fetch|ROM|memROM~6_combout\ & ( (!\processador|fetch|ROM|memROM~7_combout\ & (\processador|fetch|ROM|memROM~4_combout\ & \processador|fetch|ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000010110000101100001100000011000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|UC|operacao[1]~0_combout\);

-- Location: LABCELL_X43_Y3_N51
\processador|UC|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~1_combout\ = (\processador|UC|operacao[1]~0_combout\) # (\processador|UC|operacao[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	datab => \processador|UC|ALT_INV_operacao[1]~0_combout\,
	combout => \processador|UC|comb~1_combout\);

-- Location: LABCELL_X43_Y3_N48
\processador|UC|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~0_combout\ = (!\processador|UC|operacao[2]~1_combout\ & \processador|UC|operacao[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	datab => \processador|UC|ALT_INV_operacao[1]~0_combout\,
	combout => \processador|UC|comb~0_combout\);

-- Location: LABCELL_X43_Y3_N15
\processador|UC|operacao[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao\(1) = ( \processador|UC|operacao\(1) & ( !\processador|UC|comb~0_combout\ ) ) # ( !\processador|UC|operacao\(1) & ( (!\processador|UC|comb~1_combout\ & !\processador|UC|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_comb~1_combout\,
	datad => \processador|UC|ALT_INV_comb~0_combout\,
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|UC|operacao\(1));

-- Location: LABCELL_X39_Y4_N54
\processador|arquitetura|ULA|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[1]~9_combout\ = ( \processador|arquitetura|ULA|Add0~13_sumout\ & ( (!\processador|UC|operacao\(1)) # (\processador|arquitetura|ULA|saida[1]~2_combout\) ) ) # ( !\processador|arquitetura|ULA|Add0~13_sumout\ & ( 
-- \processador|arquitetura|ULA|saida[1]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datad => \processador|arquitetura|ULA|ALT_INV_saida[1]~2_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\,
	combout => \processador|arquitetura|ULA|saida[1]~9_combout\);

-- Location: FF_X39_Y4_N22
\processador|arquitetura|memReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~21_q\);

-- Location: FF_X39_Y4_N58
\processador|arquitetura|memReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~29_q\);

-- Location: FF_X43_Y4_N7
\processador|arquitetura|memReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~37_q\);

-- Location: FF_X41_Y4_N19
\processador|arquitetura|memReg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~13_q\);

-- Location: LABCELL_X43_Y4_N6
\processador|arquitetura|memReg|registrador~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~112_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~13_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~21_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) 
-- ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~29_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~37_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~21_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~29_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~37_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~13_q\,
	combout => \processador|arquitetura|memReg|registrador~112_combout\);

-- Location: FF_X43_Y4_N56
\processador|arquitetura|memReg|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~45_q\);

-- Location: FF_X41_Y4_N55
\processador|arquitetura|memReg|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~53_q\);

-- Location: FF_X43_Y4_N38
\processador|arquitetura|memReg|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~61_q\);

-- Location: LABCELL_X43_Y4_N36
\processador|arquitetura|memReg|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~80_combout\ = ( \processador|arquitetura|memReg|registrador~61_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~112_combout\ & 
-- (((\processador|fetch|ROM|memROM~23_combout\)) # (\processador|arquitetura|memReg|registrador~45_q\))) # (\processador|arquitetura|memReg|registrador~112_combout\ & (((\processador|arquitetura|memReg|registrador~53_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~61_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & 
-- ((!\processador|arquitetura|memReg|registrador~112_combout\ & (\processador|arquitetura|memReg|registrador~45_q\)) # (\processador|arquitetura|memReg|registrador~112_combout\ & ((\processador|arquitetura|memReg|registrador~53_q\))))) ) ) ) # ( 
-- \processador|arquitetura|memReg|registrador~61_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~112_combout\ ) ) ) # ( !\processador|arquitetura|memReg|registrador~61_q\ & ( 
-- !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~112_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100100111000000000010011110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~112_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~45_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~53_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~61_q\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|arquitetura|memReg|registrador~80_combout\);

-- Location: LABCELL_X43_Y4_N3
\display|display0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[0]~0_combout\ = ( \processador|arquitetura|memReg|registrador~84_combout\ & ( (!\processador|arquitetura|memReg|registrador~80_combout\ & (!\processador|arquitetura|memReg|registrador~88_combout\ $ 
-- (\processador|arquitetura|memReg|registrador~76_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~84_combout\ & ( (\processador|arquitetura|memReg|registrador~76_combout\ & (!\processador|arquitetura|memReg|registrador~80_combout\ $ 
-- (\processador|arquitetura|memReg|registrador~88_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	combout => \display|display0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y4_N3
\de|habilitaDisplay~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|habilitaDisplay~0_combout\ = ( \processador|fetch|ROM|memROM~14_combout\ & ( (!\de|Equal2~0_combout\ & (\processador|fetch|registerPC|DOUT\(9) & ((!\processador|fetch|ROM|memROM~16_combout\) # (!\processador|fetch|ROM|memROM~11_combout\)))) ) ) # ( 
-- !\processador|fetch|ROM|memROM~14_combout\ & ( (!\de|Equal2~0_combout\ & ((!\processador|fetch|ROM|memROM~16_combout\) # (!\processador|fetch|ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000000100010001000000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_Equal2~0_combout\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|habilitaDisplay~0_combout\);

-- Location: LABCELL_X41_Y4_N24
\de|enderecoDisplay[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[2]~1_combout\ = ( \processador|fetch|ROM|memROM~14_combout\ & ( (!\processador|fetch|ROM|memROM~16_combout\ & (!\de|Equal2~0_combout\ & (\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~11_combout\))) ) ) # ( 
-- !\processador|fetch|ROM|memROM~14_combout\ & ( (!\processador|fetch|ROM|memROM~16_combout\ & (!\de|Equal2~0_combout\ & \processador|fetch|ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datab => \de|ALT_INV_Equal2~0_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|enderecoDisplay[2]~1_combout\);

-- Location: LABCELL_X41_Y4_N21
\de|enderecoDisplay[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[0]~0_combout\ = ( !\de|Equal2~0_combout\ & ( \processador|fetch|ROM|memROM~14_combout\ & ( (\processador|fetch|registerPC|DOUT\(9) & (\processador|fetch|ROM|memROM~15_combout\ & ((!\processador|fetch|ROM|memROM~16_combout\) # 
-- (!\processador|fetch|ROM|memROM~11_combout\)))) ) ) ) # ( !\de|Equal2~0_combout\ & ( !\processador|fetch|ROM|memROM~14_combout\ & ( (\processador|fetch|ROM|memROM~15_combout\ & ((!\processador|fetch|ROM|memROM~16_combout\) # 
-- (!\processador|fetch|ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000000000000000000000011000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datae => \de|ALT_INV_Equal2~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \de|enderecoDisplay[0]~0_combout\);

-- Location: LABCELL_X41_Y3_N51
\processador|fetch|ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~31_combout\ = ( \processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) & 
-- (!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(2))) # (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(0) & (\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(5)))) 
-- ) ) ) # ( \processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(1) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & 
-- \processador|fetch|registerPC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001000010000000000000001000000000001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~31_combout\);

-- Location: LABCELL_X41_Y3_N12
\de|enderecoDisplay[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[1]~2_combout\ = ( \processador|fetch|ROM|memROM~16_combout\ & ( \processador|fetch|ROM|memROM~31_combout\ & ( !\processador|fetch|ROM|memROM~0_combout\ ) ) ) # ( \processador|fetch|ROM|memROM~16_combout\ & ( 
-- !\processador|fetch|ROM|memROM~31_combout\ & ( (!\processador|fetch|ROM|memROM~0_combout\) # ((!\processador|fetch|ROM|memROM~8_combout\ & (!\processador|fetch|ROM|memROM~10_combout\ & !\processador|fetch|ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~31_combout\,
	combout => \de|enderecoDisplay[1]~2_combout\);

-- Location: LABCELL_X41_Y4_N6
\display|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = ( !\de|enderecoDisplay[1]~2_combout\ & ( (\de|habilitaDisplay~0_combout\ & (\processador|UC|Equal7~1_combout\ & (!\de|enderecoDisplay[2]~1_combout\ & !\de|enderecoDisplay[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_habilitaDisplay~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	combout => \display|Equal0~0_combout\);

-- Location: LABCELL_X44_Y4_N12
\display|display0|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(0) = ( \display|display0|saida7seg\(0) & ( (!\display|Equal0~0_combout\) # (\display|display0|rascSaida7seg[0]~0_combout\) ) ) # ( !\display|display0|saida7seg\(0) & ( (\display|display0|rascSaida7seg[0]~0_combout\ & 
-- \display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_saida7seg\(0),
	combout => \display|display0|saida7seg\(0));

-- Location: LABCELL_X43_Y4_N48
\display|display0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[1]~1_combout\ = ( \processador|arquitetura|memReg|registrador~84_combout\ & ( (!\processador|arquitetura|memReg|registrador~88_combout\ & (!\processador|arquitetura|memReg|registrador~80_combout\ $ 
-- (!\processador|arquitetura|memReg|registrador~76_combout\))) # (\processador|arquitetura|memReg|registrador~88_combout\ & ((!\processador|arquitetura|memReg|registrador~76_combout\) # (\processador|arquitetura|memReg|registrador~80_combout\))) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~84_combout\ & ( (\processador|arquitetura|memReg|registrador~88_combout\ & (\processador|arquitetura|memReg|registrador~80_combout\ & \processador|arquitetura|memReg|registrador~76_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	combout => \display|display0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y4_N42
\display|display0|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(1) = ( \display|display0|saida7seg\(1) & ( (!\display|Equal0~0_combout\) # (\display|display0|rascSaida7seg[1]~1_combout\) ) ) # ( !\display|display0|saida7seg\(1) & ( (\display|display0|rascSaida7seg[1]~1_combout\ & 
-- \display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_saida7seg\(1),
	combout => \display|display0|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N3
\display|display0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[2]~2_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ & 
-- !\processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|arquitetura|memReg|registrador~84_combout\ & ((\processador|arquitetura|memReg|registrador~88_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( 
-- (!\processador|arquitetura|memReg|registrador~76_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\ & \processador|arquitetura|memReg|registrador~88_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y4_N24
\display|display0|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~0_combout\) # (\display|display0|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display0|saida7seg\(2) & 
-- !\display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display0|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N18
\display|display0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[3]~3_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ & 
-- \processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|arquitetura|memReg|registrador~84_combout\ & (\processador|arquitetura|memReg|registrador~76_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( 
-- (!\processador|arquitetura|memReg|registrador~88_combout\ & (!\processador|arquitetura|memReg|registrador~84_combout\ $ (!\processador|arquitetura|memReg|registrador~76_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y4_N33
\display|display0|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~0_combout\) # (\display|display0|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display0|saida7seg\(3) & 
-- !\display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_saida7seg\(3),
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display0|saida7seg\(3));

-- Location: LABCELL_X43_Y4_N51
\display|display0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[4]~4_combout\ = (!\processador|arquitetura|memReg|registrador~80_combout\ & ((!\processador|arquitetura|memReg|registrador~84_combout\ & ((\processador|arquitetura|memReg|registrador~76_combout\))) # 
-- (\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~88_combout\)))) # (\processador|arquitetura|memReg|registrador~80_combout\ & (!\processador|arquitetura|memReg|registrador~88_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101100000010001110110000001000111011000000100011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \display|display0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y4_N57
\display|display0|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(4) = ( \display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|Equal0~0_combout\) # (\display|display0|saida7seg\(4)) ) ) # ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|display0|saida7seg\(4) & 
-- !\display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_saida7seg\(4),
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display0|saida7seg\(4));

-- Location: LABCELL_X44_Y4_N0
\display|display0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[5]~5_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~88_combout\ & ((!\processador|arquitetura|memReg|registrador~84_combout\) # 
-- (\processador|arquitetura|memReg|registrador~76_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( (\processador|arquitetura|memReg|registrador~76_combout\ & (!\processador|arquitetura|memReg|registrador~84_combout\ $ 
-- (\processador|arquitetura|memReg|registrador~88_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y4_N51
\display|display0|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~0_combout\) # (\display|display0|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display0|saida7seg\(5) & 
-- !\display|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~0_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display0|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N45
\display|display0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[6]~6_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (\processador|arquitetura|memReg|registrador~76_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\ & 
-- !\processador|arquitetura|memReg|registrador~88_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & ((!\processador|arquitetura|memReg|registrador~88_combout\))) # 
-- (\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ & \processador|arquitetura|memReg|registrador~88_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X45_Y4_N6
\display|display0|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display0|saida7seg\(6)) # (\display|Equal0~0_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~0_combout\ & 
-- \display|display0|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~0_combout\,
	datad => \display|display0|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display0|saida7seg\(6));

-- Location: LABCELL_X41_Y4_N9
\display|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = ( !\de|enderecoDisplay[2]~1_combout\ & ( (\de|habilitaDisplay~0_combout\ & (\processador|UC|Equal7~1_combout\ & (!\de|enderecoDisplay[1]~2_combout\ & \de|enderecoDisplay[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_habilitaDisplay~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	combout => \display|Equal0~1_combout\);

-- Location: LABCELL_X44_Y4_N15
\display|display1|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(0) = ( \display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|Equal0~1_combout\) # (\display|display1|saida7seg\(0)) ) ) # ( !\display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|display1|saida7seg\(0) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display1|ALT_INV_saida7seg\(0),
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \display|display1|saida7seg\(0));

-- Location: LABCELL_X44_Y4_N45
\display|display1|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(1) = ( \display|Equal0~1_combout\ & ( \display|display0|rascSaida7seg[1]~1_combout\ ) ) # ( !\display|Equal0~1_combout\ & ( \display|display1|saida7seg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(1),
	dataf => \display|ALT_INV_Equal0~1_combout\,
	combout => \display|display1|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N27
\display|display1|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display1|saida7seg\(2)) # (\display|Equal0~1_combout\) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (!\display|Equal0~1_combout\ & 
-- \display|display1|saida7seg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Equal0~1_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(2),
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display1|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N27
\display|display1|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display1|saida7seg\(3)) # (\display|Equal0~1_combout\) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (!\display|Equal0~1_combout\ & 
-- \display|display1|saida7seg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Equal0~1_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(3),
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display1|saida7seg\(3));

-- Location: LABCELL_X39_Y4_N24
\display|display1|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(4) = ( \display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|Equal0~1_combout\) # (\display|display1|saida7seg\(4)) ) ) # ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|display1|saida7seg\(4) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display1|ALT_INV_saida7seg\(4),
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display1|saida7seg\(4));

-- Location: LABCELL_X44_Y4_N36
\display|display1|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display1|saida7seg\(5)) # (\display|Equal0~1_combout\) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (!\display|Equal0~1_combout\ & 
-- \display|display1|saida7seg\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~1_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(5),
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display1|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N36
\display|display1|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display1|saida7seg\(6)) # (\display|Equal0~1_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~1_combout\ & 
-- \display|display1|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~1_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display1|saida7seg\(6));

-- Location: LABCELL_X41_Y4_N36
\display|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = ( \de|enderecoDisplay[1]~2_combout\ & ( (!\de|enderecoDisplay[0]~0_combout\ & (\processador|UC|Equal7~1_combout\ & (!\de|enderecoDisplay[2]~1_combout\ & \de|habilitaDisplay~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	datad => \de|ALT_INV_habilitaDisplay~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	combout => \display|Equal0~2_combout\);

-- Location: LABCELL_X44_Y4_N21
\display|display2|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(0) = ( \display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|display2|saida7seg\(0)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[0]~0_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display2|saida7seg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~2_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(0),
	dataf => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \display|display2|saida7seg\(0));

-- Location: LABCELL_X44_Y4_N6
\display|display2|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(1) = ( \display|display2|saida7seg\(1) & ( (!\display|Equal0~2_combout\) # (\display|display0|rascSaida7seg[1]~1_combout\) ) ) # ( !\display|display2|saida7seg\(1) & ( (\display|display0|rascSaida7seg[1]~1_combout\ & 
-- \display|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	datad => \display|ALT_INV_Equal0~2_combout\,
	dataf => \display|display2|ALT_INV_saida7seg\(1),
	combout => \display|display2|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N18
\display|display2|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~2_combout\) # (\display|display2|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display2|saida7seg\(2) & 
-- !\display|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display2|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~2_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display2|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N9
\display|display2|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display2|saida7seg\(3)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display2|saida7seg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Equal0~2_combout\,
	datac => \display|display2|ALT_INV_saida7seg\(3),
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display2|saida7seg\(3));

-- Location: MLABCELL_X42_Y4_N15
\display|display2|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(4) = ( \display|Equal0~2_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ ) ) # ( !\display|Equal0~2_combout\ & ( \display|display2|saida7seg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	datac => \display|display2|ALT_INV_saida7seg\(4),
	dataf => \display|ALT_INV_Equal0~2_combout\,
	combout => \display|display2|saida7seg\(4));

-- Location: LABCELL_X44_Y4_N3
\display|display2|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display2|saida7seg\(5)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display2|saida7seg\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~2_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(5),
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display2|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N51
\display|display2|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display2|saida7seg\(6)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display2|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~2_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display2|saida7seg\(6));

-- Location: LABCELL_X41_Y4_N39
\display|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = ( !\de|enderecoDisplay[2]~1_combout\ & ( (\de|enderecoDisplay[0]~0_combout\ & (\processador|UC|Equal7~1_combout\ & (\de|enderecoDisplay[1]~2_combout\ & \de|habilitaDisplay~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	datad => \de|ALT_INV_habilitaDisplay~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	combout => \display|Equal0~3_combout\);

-- Location: MLABCELL_X42_Y4_N54
\display|display3|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(0) = ( \display|Equal0~3_combout\ & ( \display|display0|rascSaida7seg[0]~0_combout\ ) ) # ( !\display|Equal0~3_combout\ & ( \display|display3|saida7seg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datac => \display|display3|ALT_INV_saida7seg\(0),
	dataf => \display|ALT_INV_Equal0~3_combout\,
	combout => \display|display3|saida7seg\(0));

-- Location: MLABCELL_X42_Y4_N12
\display|display3|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(1) = ( \display|Equal0~3_combout\ & ( \display|display0|rascSaida7seg[1]~1_combout\ ) ) # ( !\display|Equal0~3_combout\ & ( \display|display3|saida7seg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display3|ALT_INV_saida7seg\(1),
	datac => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	dataf => \display|ALT_INV_Equal0~3_combout\,
	combout => \display|display3|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N54
\display|display3|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~3_combout\) # (\display|display3|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display3|saida7seg\(2) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display3|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N54
\display|display3|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display3|saida7seg\(3)) # (\display|Equal0~3_combout\) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (!\display|Equal0~3_combout\ & 
-- \display|display3|saida7seg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Equal0~3_combout\,
	datad => \display|display3|ALT_INV_saida7seg\(3),
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display3|saida7seg\(3));

-- Location: MLABCELL_X42_Y4_N33
\display|display3|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(4) = ( \display|display3|saida7seg\(4) & ( (!\display|Equal0~3_combout\) # (\display|display0|rascSaida7seg[4]~4_combout\) ) ) # ( !\display|display3|saida7seg\(4) & ( (\display|display0|rascSaida7seg[4]~4_combout\ & 
-- \display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display3|ALT_INV_saida7seg\(4),
	combout => \display|display3|saida7seg\(4));

-- Location: LABCELL_X44_Y4_N39
\display|display3|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~3_combout\) # (\display|display3|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display3|saida7seg\(5) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display3|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N15
\display|display3|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|Equal0~3_combout\) # (\display|display3|saida7seg\(6)) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display3|saida7seg\(6) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(6),
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display3|saida7seg\(6));

-- Location: MLABCELL_X42_Y4_N48
\display|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = ( !\de|enderecoDisplay[1]~2_combout\ & ( (\processador|UC|Equal7~1_combout\ & (\de|enderecoDisplay[2]~1_combout\ & (!\de|enderecoDisplay[0]~0_combout\ & \de|habilitaDisplay~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal7~1_combout\,
	datab => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	datad => \de|ALT_INV_habilitaDisplay~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: MLABCELL_X42_Y4_N51
\display|display4|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(0) = ( \display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|Equal0~4_combout\) # (\display|display4|saida7seg\(0)) ) ) # ( !\display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|display4|saida7seg\(0) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display4|ALT_INV_saida7seg\(0),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \display|display4|saida7seg\(0));

-- Location: MLABCELL_X42_Y4_N36
\display|display4|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display4|saida7seg\(1)) # (\display|Equal0~4_combout\) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (!\display|Equal0~4_combout\ & 
-- \display|display4|saida7seg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~4_combout\,
	datad => \display|display4|ALT_INV_saida7seg\(1),
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display4|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N21
\display|display4|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display4|saida7seg\(2)) # (\display|Equal0~4_combout\) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (!\display|Equal0~4_combout\ & 
-- \display|display4|saida7seg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Equal0~4_combout\,
	datad => \display|display4|ALT_INV_saida7seg\(2),
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display4|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N24
\display|display4|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~4_combout\) # (\display|display4|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display4|saida7seg\(3) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display4|ALT_INV_saida7seg\(3),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display4|saida7seg\(3));

-- Location: MLABCELL_X42_Y4_N21
\display|display4|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(4) = ( \display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|display4|saida7seg\(4)) # (\display|Equal0~4_combout\) ) ) # ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( (!\display|Equal0~4_combout\ & 
-- \display|display4|saida7seg\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~4_combout\,
	datad => \display|display4|ALT_INV_saida7seg\(4),
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display4|saida7seg\(4));

-- Location: LABCELL_X44_Y4_N48
\display|display4|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~4_combout\) # (\display|display4|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display4|saida7seg\(5) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display4|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display4|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N42
\display|display4|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display4|saida7seg\(6)) # (\display|Equal0~4_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~4_combout\ & 
-- \display|display4|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~4_combout\,
	datad => \display|display4|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display4|saida7seg\(6));

-- Location: MLABCELL_X42_Y4_N39
\display|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~5_combout\ = ( \processador|UC|Equal7~1_combout\ & ( (\de|habilitaDisplay~0_combout\ & (\de|enderecoDisplay[2]~1_combout\ & (!\de|enderecoDisplay[1]~2_combout\ & \de|enderecoDisplay[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_habilitaDisplay~0_combout\,
	datab => \de|ALT_INV_enderecoDisplay[2]~1_combout\,
	datac => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \processador|UC|ALT_INV_Equal7~1_combout\,
	combout => \display|Equal0~5_combout\);

-- Location: MLABCELL_X42_Y4_N57
\display|display5|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(0) = ( \display|display0|rascSaida7seg[0]~0_combout\ & ( (\display|display5|saida7seg\(0)) # (\display|Equal0~5_combout\) ) ) # ( !\display|display0|rascSaida7seg[0]~0_combout\ & ( (!\display|Equal0~5_combout\ & 
-- \display|display5|saida7seg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~5_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(0),
	dataf => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \display|display5|saida7seg\(0));

-- Location: MLABCELL_X42_Y4_N0
\display|display5|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~5_combout\) # (\display|display5|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display5|saida7seg\(1) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display5|ALT_INV_saida7seg\(1),
	datad => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display5|saida7seg\(1));

-- Location: MLABCELL_X45_Y4_N57
\display|display5|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display5|saida7seg\(2)) # (\display|Equal0~5_combout\) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (!\display|Equal0~5_combout\ & 
-- \display|display5|saida7seg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|ALT_INV_Equal0~5_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(2),
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display5|saida7seg\(2));

-- Location: LABCELL_X44_Y4_N30
\display|display5|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~5_combout\) # (\display|display5|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display5|saida7seg\(3) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display5|ALT_INV_saida7seg\(3),
	datad => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display5|saida7seg\(3));

-- Location: MLABCELL_X42_Y4_N30
\display|display5|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(4) = ( \display|Equal0~5_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ ) ) # ( !\display|Equal0~5_combout\ & ( \display|display5|saida7seg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display5|ALT_INV_saida7seg\(4),
	datac => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	dataf => \display|ALT_INV_Equal0~5_combout\,
	combout => \display|display5|saida7seg\(4));

-- Location: MLABCELL_X45_Y4_N30
\display|display5|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display5|saida7seg\(5)) # (\display|Equal0~5_combout\) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (!\display|Equal0~5_combout\ & 
-- \display|display5|saida7seg\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~5_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(5),
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display5|saida7seg\(5));

-- Location: MLABCELL_X45_Y4_N0
\display|display5|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display5|saida7seg\(6)) # (\display|Equal0~5_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~5_combout\ & 
-- \display|display5|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~5_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display5|saida7seg\(6));

-- Location: LABCELL_X40_Y3_N39
\baseTempo|leituraUmSegundo[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~3_combout\ = ( \baseTempo|leituraUmSegundo[0]~0_combout\ & ( (\baseTempo|leituraUmSegundo[0]~1_combout\ & (\baseTempo|leituraUmSegundo[0]~2_combout\ & \baseTempo|registraUmSegundo|DOUT~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	datac => \baseTempo|ALT_INV_leituraUmSegundo[0]~2_combout\,
	datad => \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	dataf => \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~3_combout\);
END structure;


