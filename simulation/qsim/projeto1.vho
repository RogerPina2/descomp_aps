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

-- DATE "10/18/2020 20:40:54"

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
-- HEX0[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pinoTeste[9]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_outMem[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t_BT[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \processador|fetch|somPC|Add0~18\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~6_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~22\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~4_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~30_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~12_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~16_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~0_combout\ : std_logic;
SIGNAL \processador|UC|operacao[2]~1_combout\ : std_logic;
SIGNAL \processador|UC|operacao[0]~2_combout\ : std_logic;
SIGNAL \processador|UC|comb~2_combout\ : std_logic;
SIGNAL \processador|UC|comb~3_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~18_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~19_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~24_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~25_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Equal7~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~13_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~5_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~29_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~10_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~26_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~15_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~14_combout\ : std_logic;
SIGNAL \de|enderecoChave[3]~0_combout\ : std_logic;
SIGNAL \de|enderecoChave[3]~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \de|Equal2~0_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~9_combout\ : std_logic;
SIGNAL \de|habilitaChave~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~17_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~4_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~22\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~6\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~94\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~50\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~54\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~10\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~14\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~18\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~30\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~26\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~46\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~42\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~38\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~34\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~2\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~98\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~90\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~86\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~82\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~78\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~74\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~70\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~66\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~62\ : std_logic;
SIGNAL \baseTempo|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|tick~q\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \de|Equal7~0_combout\ : std_logic;
SIGNAL \de|limpaLeitura~2_combout\ : std_logic;
SIGNAL \de|limpaLeitura~combout\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \de|limpaLeitura~0_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~1_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~0_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~5_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~6_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~7_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~8_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \de|enderecoChave[2]~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \de|enderecoChave[1]~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \de|enderecoChave~4_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~12_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \out_dataRAM[0]~0_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~10_combout\ : std_logic;
SIGNAL \out_dataRAM[0]~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~34_cout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[0]~7_combout\ : std_logic;
SIGNAL \processador|UC|habilitaResgistrador~0_combout\ : std_logic;
SIGNAL \processador|UC|habilitaResgistrador~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~20_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~22_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~21_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~23_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~140_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~52_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~141_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~44_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~142_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~60_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~143_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~20_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~146_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~28_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~144_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~36_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~145_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~12_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~108_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~76_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~6\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[1]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~53_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~45feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~45_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~61_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~37_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~29_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~21_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~13feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~13_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~112_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~80_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~2\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~18\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[3]~9_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~31_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~23_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~39_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~15feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~15_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~120_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~63_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~55_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~47_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~88_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[3]~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[2]~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~27_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~22\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[4]~10_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~56_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~48_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~64_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~24_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~32_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~40_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~16_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~124_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~92_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[4]~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~28_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~10\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[5]~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~49_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~65feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~65_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~57feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~57_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~25feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~25_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~33_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~41_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~17_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~128_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~96_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[5]~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~14\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[6]~12_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~50_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~58_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~66_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~34_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~42_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~26_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~18_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~132_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~100_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[6]~5_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[7]~6_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[7]~13_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~67_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~59_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~51_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~35_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~27feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~27_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~43_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~19feeder_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~19_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~136_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~104_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~26\ : std_logic;
SIGNAL \processador|arquitetura|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[0]~14_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~5_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|DOUT~q\ : std_logic;
SIGNAL \processador|UC|sel_muxJump~0_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~26\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~30\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~34\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~37_sumout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~7_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~8_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~9_combout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~2\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~6\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~10\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~14\ : std_logic;
SIGNAL \processador|fetch|somPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~3_combout\ : std_logic;
SIGNAL \processador|UC|operacao[1]~0_combout\ : std_logic;
SIGNAL \processador|UC|comb~1_combout\ : std_logic;
SIGNAL \processador|UC|comb~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|saida[2]~8_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~54_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~22_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~30_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~38_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~14_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~116_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~46_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~62_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|registrador~84_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|memROM~31_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[1]~1_combout\ : std_logic;
SIGNAL \processador|UC|Equal7~1_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \de|limpaLeitura~1_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[0]~0_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display|display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \de|enderecoDisplay[1]~2_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|Equal0~5_combout\ : std_logic;
SIGNAL \display|Equal0~6_combout\ : std_logic;
SIGNAL \baseTempo|leituraUmSegundo[0]~2_combout\ : std_logic;
SIGNAL \processador|fetch|registerPC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \processador|UC|operacao\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|display0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \baseTempo|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \display|display5|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display4|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display3|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display2|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \display|display1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \baseTempo|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
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
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[1]~3_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[2]~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao[0]~2_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao[2]~1_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_operacao[1]~0_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[7]~13_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[5]~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \processador|arquitetura|memReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[3]~9_combout\ : std_logic;
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
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~11_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[7]~6_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[6]~5_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[2]~3_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[5]~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~4_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[3]~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoChave[3]~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_habilitaChave~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~2_combout\ : std_logic;
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
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[1]~2_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \display|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[1]~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_enderecoDisplay[0]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~1_combout\ : std_logic;
SIGNAL \de|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \de|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \de|ALT_INV_limpaLeitura~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|fetch|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_saida[0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~12_combout\ : std_logic;
SIGNAL \baseTempo|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_out_dataRAM[0]~0_combout\ : std_logic;
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
\baseTempo|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ <= NOT \baseTempo|baseTempo|contador[19]~DUPLICATE_q\;
\baseTempo|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \baseTempo|baseTempo|contador[11]~DUPLICATE_q\;
\baseTempo|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ <= NOT \baseTempo|baseTempo|contador[12]~DUPLICATE_q\;
\baseTempo|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \baseTempo|baseTempo|contador[0]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
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
\processador|fetch|ROM|ALT_INV_memROM~28_combout\ <= NOT \processador|fetch|ROM|memROM~28_combout\;
\processador|fetch|ROM|ALT_INV_memROM~27_combout\ <= NOT \processador|fetch|ROM|memROM~27_combout\;
\de|ALT_INV_enderecoChave[1]~3_combout\ <= NOT \de|enderecoChave[1]~3_combout\;
\de|ALT_INV_enderecoChave[2]~2_combout\ <= NOT \de|enderecoChave[2]~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~26_combout\ <= NOT \processador|fetch|ROM|memROM~26_combout\;
\processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\ <= NOT \processador|arquitetura|ULA|Equal7~0_combout\;
\processador|UC|ALT_INV_comb~3_combout\ <= NOT \processador|UC|comb~3_combout\;
\processador|UC|ALT_INV_comb~2_combout\ <= NOT \processador|UC|comb~2_combout\;
\processador|UC|ALT_INV_operacao[0]~2_combout\ <= NOT \processador|UC|operacao[0]~2_combout\;
\processador|UC|ALT_INV_comb~1_combout\ <= NOT \processador|UC|comb~1_combout\;
\processador|UC|ALT_INV_comb~0_combout\ <= NOT \processador|UC|comb~0_combout\;
\processador|UC|ALT_INV_operacao[2]~1_combout\ <= NOT \processador|UC|operacao[2]~1_combout\;
\processador|UC|ALT_INV_operacao[1]~0_combout\ <= NOT \processador|UC|operacao[1]~0_combout\;
\baseTempo|baseTempo|ALT_INV_Equal0~4_combout\ <= NOT \baseTempo|baseTempo|Equal0~4_combout\;
\baseTempo|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \baseTempo|baseTempo|Equal0~3_combout\;
\baseTempo|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \baseTempo|baseTempo|Equal0~2_combout\;
\baseTempo|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \baseTempo|baseTempo|Equal0~1_combout\;
\baseTempo|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \baseTempo|baseTempo|Equal0~0_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~35_q\ <= NOT \processador|arquitetura|memReg|registrador~35_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~19_q\ <= NOT \processador|arquitetura|memReg|registrador~19_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~43_q\ <= NOT \processador|arquitetura|memReg|registrador~43_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~27_q\ <= NOT \processador|arquitetura|memReg|registrador~27_q\;
\processador|arquitetura|ULA|ALT_INV_saida[7]~13_combout\ <= NOT \processador|arquitetura|ULA|saida[7]~13_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~34_q\ <= NOT \processador|arquitetura|memReg|registrador~34_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~18_q\ <= NOT \processador|arquitetura|memReg|registrador~18_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~42_q\ <= NOT \processador|arquitetura|memReg|registrador~42_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~26_q\ <= NOT \processador|arquitetura|memReg|registrador~26_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~33_q\ <= NOT \processador|arquitetura|memReg|registrador~33_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~17_q\ <= NOT \processador|arquitetura|memReg|registrador~17_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~41_q\ <= NOT \processador|arquitetura|memReg|registrador~41_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~25_q\ <= NOT \processador|arquitetura|memReg|registrador~25_q\;
\processador|arquitetura|ULA|ALT_INV_saida[5]~11_combout\ <= NOT \processador|arquitetura|ULA|saida[5]~11_combout\;
\processador|arquitetura|memReg|ALT_INV_registrador~32_q\ <= NOT \processador|arquitetura|memReg|registrador~32_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~16_q\ <= NOT \processador|arquitetura|memReg|registrador~16_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~40_q\ <= NOT \processador|arquitetura|memReg|registrador~40_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~24_q\ <= NOT \processador|arquitetura|memReg|registrador~24_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~31_q\ <= NOT \processador|arquitetura|memReg|registrador~31_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~15_q\ <= NOT \processador|arquitetura|memReg|registrador~15_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~39_q\ <= NOT \processador|arquitetura|memReg|registrador~39_q\;
\processador|arquitetura|memReg|ALT_INV_registrador~23_q\ <= NOT \processador|arquitetura|memReg|registrador~23_q\;
\processador|arquitetura|ULA|ALT_INV_saida[3]~9_combout\ <= NOT \processador|arquitetura|ULA|saida[3]~9_combout\;
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
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\;
\ALT_INV_out_dataRAM[0]~11_combout\ <= NOT \out_dataRAM[0]~11_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~4_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~4_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[7]~6_combout\ <= NOT \processador|arquitetura|ULA|saida[7]~6_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[6]~5_combout\ <= NOT \processador|arquitetura|ULA|saida[6]~5_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~3_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[3]~4_combout\ <= NOT \processador|arquitetura|ULA|saida[3]~4_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[2]~3_combout\ <= NOT \processador|arquitetura|ULA|saida[2]~3_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~2_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[5]~2_combout\ <= NOT \processador|arquitetura|ULA|saida[5]~2_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[4]~1_combout\ <= NOT \processador|arquitetura|ULA|saida[4]~1_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~1_combout\;
\ALT_INV_out_dataRAM[0]~10_combout\ <= NOT \out_dataRAM[0]~10_combout\;
\ALT_INV_out_dataRAM[0]~9_combout\ <= NOT \out_dataRAM[0]~9_combout\;
\ALT_INV_out_dataRAM[0]~8_combout\ <= NOT \out_dataRAM[0]~8_combout\;
\ALT_INV_out_dataRAM[0]~7_combout\ <= NOT \out_dataRAM[0]~7_combout\;
\ALT_INV_out_dataRAM[0]~6_combout\ <= NOT \out_dataRAM[0]~6_combout\;
\ALT_INV_out_dataRAM[0]~5_combout\ <= NOT \out_dataRAM[0]~5_combout\;
\ALT_INV_out_dataRAM[0]~4_combout\ <= NOT \out_dataRAM[0]~4_combout\;
\de|ALT_INV_enderecoChave[3]~1_combout\ <= NOT \de|enderecoChave[3]~1_combout\;
\de|ALT_INV_enderecoChave[3]~0_combout\ <= NOT \de|enderecoChave[3]~0_combout\;
\de|ALT_INV_habilitaChave~0_combout\ <= NOT \de|habilitaChave~0_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~0_combout\;
\processador|UC|ALT_INV_Equal7~2_combout\ <= NOT \processador|UC|Equal7~2_combout\;
\processador|arquitetura|ULA|ALT_INV_saida[1]~0_combout\ <= NOT \processador|arquitetura|ULA|saida[1]~0_combout\;
\processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\;
\de|ALT_INV_limpaLeitura~combout\ <= NOT \de|limpaLeitura~combout\;
\de|ALT_INV_limpaLeitura~2_combout\ <= NOT \de|limpaLeitura~2_combout\;
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
\processador|fetch|ROM|ALT_INV_memROM~16_combout\ <= NOT \processador|fetch|ROM|memROM~16_combout\;
\processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\ <= NOT \processador|arquitetura|flag|flipFlop|DOUT~q\;
\display|ALT_INV_Equal0~6_combout\ <= NOT \display|Equal0~6_combout\;
\display|ALT_INV_Equal0~5_combout\ <= NOT \display|Equal0~5_combout\;
\display|ALT_INV_Equal0~4_combout\ <= NOT \display|Equal0~4_combout\;
\display|ALT_INV_Equal0~3_combout\ <= NOT \display|Equal0~3_combout\;
\de|ALT_INV_enderecoDisplay[1]~2_combout\ <= NOT \de|enderecoDisplay[1]~2_combout\;
\display|ALT_INV_Equal0~2_combout\ <= NOT \display|Equal0~2_combout\;
\display|display0|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \display|display0|rascSaida7seg[6]~6_combout\;
\display|display0|ALT_INV_rascSaida7seg[5]~5_combout\ <= NOT \display|display0|rascSaida7seg[5]~5_combout\;
\display|display0|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \display|display0|rascSaida7seg[4]~4_combout\;
\display|display0|ALT_INV_rascSaida7seg[3]~3_combout\ <= NOT \display|display0|rascSaida7seg[3]~3_combout\;
\display|display0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \display|display0|rascSaida7seg[2]~2_combout\;
\display|display0|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \display|display0|rascSaida7seg[1]~1_combout\;
\display|ALT_INV_Equal0~1_combout\ <= NOT \display|Equal0~1_combout\;
\display|ALT_INV_Equal0~0_combout\ <= NOT \display|Equal0~0_combout\;
\processador|UC|ALT_INV_Equal7~1_combout\ <= NOT \processador|UC|Equal7~1_combout\;
\de|ALT_INV_enderecoDisplay[1]~1_combout\ <= NOT \de|enderecoDisplay[1]~1_combout\;
\de|ALT_INV_enderecoDisplay[0]~0_combout\ <= NOT \de|enderecoDisplay[0]~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~15_combout\ <= NOT \processador|fetch|ROM|memROM~15_combout\;
\de|ALT_INV_limpaLeitura~1_combout\ <= NOT \de|limpaLeitura~1_combout\;
\de|ALT_INV_Equal7~0_combout\ <= NOT \de|Equal7~0_combout\;
\de|ALT_INV_Equal2~0_combout\ <= NOT \de|Equal2~0_combout\;
\display|display0|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \display|display0|rascSaida7seg[0]~0_combout\;
\baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\ <= NOT \baseTempo|leituraUmSegundo[0]~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~14_combout\ <= NOT \processador|fetch|ROM|memROM~14_combout\;
\processador|fetch|ROM|ALT_INV_memROM~13_combout\ <= NOT \processador|fetch|ROM|memROM~13_combout\;
\baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\ <= NOT \baseTempo|leituraUmSegundo[0]~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~12_combout\ <= NOT \processador|fetch|ROM|memROM~12_combout\;
\processador|fetch|ROM|ALT_INV_memROM~11_combout\ <= NOT \processador|fetch|ROM|memROM~11_combout\;
\processador|fetch|ROM|ALT_INV_memROM~10_combout\ <= NOT \processador|fetch|ROM|memROM~10_combout\;
\processador|fetch|ROM|ALT_INV_memROM~9_combout\ <= NOT \processador|fetch|ROM|memROM~9_combout\;
\processador|fetch|ROM|ALT_INV_memROM~8_combout\ <= NOT \processador|fetch|ROM|memROM~8_combout\;
\de|ALT_INV_limpaLeitura~0_combout\ <= NOT \de|limpaLeitura~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~7_combout\ <= NOT \processador|fetch|ROM|memROM~7_combout\;
\processador|fetch|ROM|ALT_INV_memROM~6_combout\ <= NOT \processador|fetch|ROM|memROM~6_combout\;
\processador|fetch|ROM|ALT_INV_memROM~5_combout\ <= NOT \processador|fetch|ROM|memROM~5_combout\;
\processador|UC|ALT_INV_Equal7~0_combout\ <= NOT \processador|UC|Equal7~0_combout\;
\processador|fetch|ROM|ALT_INV_memROM~4_combout\ <= NOT \processador|fetch|ROM|memROM~4_combout\;
\processador|fetch|ROM|ALT_INV_memROM~3_combout\ <= NOT \processador|fetch|ROM|memROM~3_combout\;
\processador|fetch|ROM|ALT_INV_memROM~2_combout\ <= NOT \processador|fetch|ROM|memROM~2_combout\;
\processador|fetch|ROM|ALT_INV_memROM~1_combout\ <= NOT \processador|fetch|ROM|memROM~1_combout\;
\processador|fetch|ROM|ALT_INV_memROM~0_combout\ <= NOT \processador|fetch|ROM|memROM~0_combout\;
\baseTempo|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \baseTempo|registraUmSegundo|DOUT~q\;
\processador|arquitetura|ULA|ALT_INV_saida[0]~14_combout\ <= NOT \processador|arquitetura|ULA|saida[0]~14_combout\;
\ALT_INV_out_dataRAM[0]~12_combout\ <= NOT \out_dataRAM[0]~12_combout\;
\baseTempo|baseTempo|ALT_INV_contador\(15) <= NOT \baseTempo|baseTempo|contador\(15);
\baseTempo|baseTempo|ALT_INV_contador\(2) <= NOT \baseTempo|baseTempo|contador\(2);
\baseTempo|baseTempo|ALT_INV_contador\(16) <= NOT \baseTempo|baseTempo|contador\(16);
\baseTempo|baseTempo|ALT_INV_contador\(17) <= NOT \baseTempo|baseTempo|contador\(17);
\baseTempo|baseTempo|ALT_INV_contador\(18) <= NOT \baseTempo|baseTempo|contador\(18);
\baseTempo|baseTempo|ALT_INV_contador\(19) <= NOT \baseTempo|baseTempo|contador\(19);
\baseTempo|baseTempo|ALT_INV_contador\(20) <= NOT \baseTempo|baseTempo|contador\(20);
\baseTempo|baseTempo|ALT_INV_contador\(21) <= NOT \baseTempo|baseTempo|contador\(21);
\baseTempo|baseTempo|ALT_INV_contador\(22) <= NOT \baseTempo|baseTempo|contador\(22);
\baseTempo|baseTempo|ALT_INV_contador\(23) <= NOT \baseTempo|baseTempo|contador\(23);
\baseTempo|baseTempo|ALT_INV_contador\(24) <= NOT \baseTempo|baseTempo|contador\(24);
\baseTempo|baseTempo|ALT_INV_contador\(4) <= NOT \baseTempo|baseTempo|contador\(4);
\baseTempo|baseTempo|ALT_INV_contador\(3) <= NOT \baseTempo|baseTempo|contador\(3);
\baseTempo|baseTempo|ALT_INV_contador\(10) <= NOT \baseTempo|baseTempo|contador\(10);
\baseTempo|baseTempo|ALT_INV_contador\(11) <= NOT \baseTempo|baseTempo|contador\(11);
\baseTempo|baseTempo|ALT_INV_contador\(12) <= NOT \baseTempo|baseTempo|contador\(12);
\baseTempo|baseTempo|ALT_INV_contador\(13) <= NOT \baseTempo|baseTempo|contador\(13);
\baseTempo|baseTempo|ALT_INV_contador\(8) <= NOT \baseTempo|baseTempo|contador\(8);
\baseTempo|baseTempo|ALT_INV_contador\(9) <= NOT \baseTempo|baseTempo|contador\(9);
\baseTempo|baseTempo|ALT_INV_contador\(0) <= NOT \baseTempo|baseTempo|contador\(0);
\baseTempo|baseTempo|ALT_INV_contador\(7) <= NOT \baseTempo|baseTempo|contador\(7);
\baseTempo|baseTempo|ALT_INV_contador\(6) <= NOT \baseTempo|baseTempo|contador\(6);
\baseTempo|baseTempo|ALT_INV_contador\(5) <= NOT \baseTempo|baseTempo|contador\(5);
\baseTempo|baseTempo|ALT_INV_contador\(1) <= NOT \baseTempo|baseTempo|contador\(1);
\baseTempo|baseTempo|ALT_INV_contador\(14) <= NOT \baseTempo|baseTempo|contador\(14);
\processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|arquitetura|ULA|Add0~29_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|arquitetura|ULA|Add0~25_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|arquitetura|ULA|Add0~21_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|arquitetura|ULA|Add0~17_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|arquitetura|ULA|Add0~13_sumout\;
\processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|arquitetura|ULA|Add0~9_sumout\;
\ALT_INV_out_dataRAM[0]~0_combout\ <= NOT \out_dataRAM[0]~0_combout\;
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

-- Location: IOOBUF_X54_Y21_N5
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y45_N2
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X54_Y21_N22
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X50_Y45_N53
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X52_Y45_N53
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X54_Y20_N39
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

-- Location: IOOBUF_X52_Y45_N19
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X52_Y45_N2
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X48_Y45_N53
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

-- Location: IOOBUF_X46_Y45_N93
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X54_Y20_N5
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

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X54_Y20_N22
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

-- Location: IOOBUF_X50_Y45_N2
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X54_Y18_N45
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

-- Location: IOOBUF_X54_Y15_N22
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

-- Location: IOOBUF_X54_Y19_N39
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

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X52_Y45_N36
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X54_Y21_N39
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

-- Location: IOOBUF_X54_Y19_N5
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X0_Y20_N5
\t_BT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \baseTempo|leituraUmSegundo[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_t_BT(0));

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X10_Y45_N2
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X38_Y45_N2
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N2
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: LABCELL_X53_Y19_N30
\processador|fetch|somPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|somPC|Add0~1_sumout\ = SUM(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|fetch|somPC|Add0~2\ = CARRY(( \processador|fetch|registerPC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|fetch|somPC|Add0~1_sumout\,
	cout => \processador|fetch|somPC|Add0~2\);

-- Location: LABCELL_X50_Y19_N45
\processador|fetch|registerPC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|registerPC|DOUT[0]~feeder_combout\ = ( \processador|fetch|somPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|fetch|somPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|fetch|registerPC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X53_Y19_N42
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

-- Location: LABCELL_X53_Y19_N45
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

-- Location: LABCELL_X53_Y19_N18
\processador|fetch|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~6_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(3) $ (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & 
-- (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(4)))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) 
-- $ (!\processador|fetch|registerPC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001000100000000000000000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~6_combout\);

-- Location: LABCELL_X53_Y19_N48
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

-- Location: LABCELL_X53_Y19_N6
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

-- Location: LABCELL_X53_Y19_N12
\processador|fetch|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~2_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(2) $ (((!\processador|fetch|registerPC|DOUT\(0)) # 
-- (\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(3)) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(1)) # (\processador|fetch|registerPC|DOUT\(3))))) # (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(0) & 
-- ((!\processador|fetch|registerPC|DOUT\(3)) # (\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(1) & 
-- ((!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0)))) # (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(2) & 
-- !\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(0) $ (((!\processador|fetch|registerPC|DOUT\(3)) # (\processador|fetch|registerPC|DOUT\(2)))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(4) & ( (\processador|fetch|registerPC|DOUT\(3) & (\processador|fetch|registerPC|DOUT\(2) & ((!\processador|fetch|registerPC|DOUT\(1)) # 
-- (\processador|fetch|registerPC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011100100100100110100001101101100000011111110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	combout => \processador|fetch|ROM|memROM~2_combout\);

-- Location: MLABCELL_X49_Y19_N42
\processador|fetch|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~1_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(3)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(3) & 
-- ((!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) $ 
-- (\processador|fetch|registerPC|DOUT\(0)))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- ((!\processador|fetch|registerPC|DOUT\(3))))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(4)) # ((\processador|fetch|registerPC|DOUT\(2) & 
-- \processador|fetch|registerPC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000100010000100000101100001000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	combout => \processador|fetch|ROM|memROM~1_combout\);

-- Location: MLABCELL_X49_Y19_N51
\processador|fetch|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~4_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(4) & ( ((!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(1) & 
-- !\processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(2) & ((\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(3)) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( 
-- \processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0))))) # 
-- (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) $ (\processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(3) & !\processador|fetch|registerPC|DOUT\(0)))) # 
-- (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(0)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(2)) # ((!\processador|fetch|registerPC|DOUT\(3)) # ((!\processador|fetch|registerPC|DOUT\(1) & !\processador|fetch|registerPC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100001000000000010010000100001000011000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	combout => \processador|fetch|ROM|memROM~4_combout\);

-- Location: LABCELL_X52_Y19_N6
\processador|fetch|ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~30_combout\ = ( \processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) & 
-- (\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(5) & \processador|fetch|registerPC|DOUT\(0)))) 
-- ) ) ) # ( \processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(1) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & 
-- \processador|fetch|registerPC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000001001000000000000000100000010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~30_combout\);

-- Location: LABCELL_X52_Y19_N27
\processador|fetch|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~12_combout\ = ( \processador|fetch|ROM|memROM~30_combout\ & ( (!\processador|fetch|registerPC|DOUT\(8) & (!\processador|fetch|registerPC|DOUT\(6) & !\processador|fetch|registerPC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~30_combout\,
	combout => \processador|fetch|ROM|memROM~12_combout\);

-- Location: LABCELL_X52_Y19_N39
\processador|fetch|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~16_combout\ = (\processador|fetch|ROM|memROM~12_combout\ & !\processador|fetch|registerPC|DOUT\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	combout => \processador|fetch|ROM|memROM~16_combout\);

-- Location: LABCELL_X50_Y19_N51
\processador|fetch|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~0_combout\ = ( !\processador|fetch|registerPC|DOUT\(8) & ( (!\processador|fetch|registerPC|DOUT\(6) & (!\processador|fetch|registerPC|DOUT\(7) & !\processador|fetch|registerPC|DOUT\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	combout => \processador|fetch|ROM|memROM~0_combout\);

-- Location: MLABCELL_X49_Y19_N27
\processador|UC|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~0_combout\ = ( \processador|fetch|ROM|memROM~3_combout\ & ( !\processador|fetch|ROM|memROM~0_combout\ ) ) # ( !\processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|ROM|memROM~0_combout\) # 
-- ((!\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~4_combout\ & \processador|fetch|ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000010111111110000001011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|UC|Equal7~0_combout\);

-- Location: MLABCELL_X49_Y19_N9
\processador|UC|operacao[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[2]~1_combout\ = ( \processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & \processador|fetch|ROM|memROM~2_combout\)) ) ) # ( 
-- !\processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & !\processador|fetch|ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|UC|operacao[2]~1_combout\);

-- Location: MLABCELL_X49_Y19_N39
\processador|UC|operacao[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[0]~2_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( (!\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~1_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ & 
-- \processador|fetch|ROM|memROM~2_combout\))) # (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~2_combout\ $ (((!\processador|fetch|ROM|memROM~1_combout\ & \processador|fetch|ROM|memROM~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001101010000100000110101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|UC|operacao[0]~2_combout\);

-- Location: LABCELL_X52_Y20_N18
\processador|UC|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~2_combout\ = (!\processador|UC|operacao[2]~1_combout\ & \processador|UC|operacao[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	datad => \processador|UC|ALT_INV_operacao[0]~2_combout\,
	combout => \processador|UC|comb~2_combout\);

-- Location: MLABCELL_X49_Y19_N57
\processador|UC|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~3_combout\ = ( \processador|UC|operacao[2]~1_combout\ ) # ( !\processador|UC|operacao[2]~1_combout\ & ( \processador|UC|operacao[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao[0]~2_combout\,
	dataf => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	combout => \processador|UC|comb~3_combout\);

-- Location: LABCELL_X52_Y20_N39
\processador|UC|operacao[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao\(0) = ( \processador|UC|comb~3_combout\ & ( \processador|UC|operacao\(0) & ( !\processador|UC|comb~2_combout\ ) ) ) # ( !\processador|UC|comb~3_combout\ & ( \processador|UC|operacao\(0) & ( !\processador|UC|comb~2_combout\ ) ) ) # 
-- ( !\processador|UC|comb~3_combout\ & ( !\processador|UC|operacao\(0) & ( !\processador|UC|comb~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_comb~2_combout\,
	datae => \processador|UC|ALT_INV_comb~3_combout\,
	dataf => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|UC|operacao\(0));

-- Location: LABCELL_X50_Y19_N0
\processador|fetch|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~18_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) $ 
-- (!\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) $ 
-- (((!\processador|fetch|registerPC|DOUT\(5)) # (!\processador|fetch|registerPC|DOUT\(3)))))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(3))))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(5) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & 
-- ((!\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(3))))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- !\processador|fetch|registerPC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000001010000000001000001000011011001010000001001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~18_combout\);

-- Location: LABCELL_X50_Y19_N48
\processador|fetch|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~19_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~18_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~19_combout\);

-- Location: LABCELL_X50_Y19_N18
\processador|fetch|ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~24_combout\ = ( \processador|fetch|registerPC|DOUT\(3) & ( \processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(5) & 
-- !\processador|fetch|registerPC|DOUT\(0))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(3) & ( \processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(2) & 
-- (!\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(1)))) # (\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(0) & ((!\processador|fetch|registerPC|DOUT\(2)) # 
-- (!\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(0) & 
-- ((!\processador|fetch|registerPC|DOUT\(5)) # (\processador|fetch|registerPC|DOUT\(1))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(4) & ( (!\processador|fetch|registerPC|DOUT\(5) & 
-- (((\processador|fetch|registerPC|DOUT\(0))))) # (\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(2) & 
-- ((!\processador|fetch|registerPC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100101100000010000000101000000011010000101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	combout => \processador|fetch|ROM|memROM~24_combout\);

-- Location: LABCELL_X50_Y19_N42
\processador|fetch|ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~25_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~24_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~25_combout\);

-- Location: LABCELL_X48_Y21_N30
\processador|arquitetura|ULA|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Equal7~0_combout\ = ( !\processador|UC|operacao\(0) & ( !\processador|UC|operacao\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|ULA|Equal7~0_combout\);

-- Location: LABCELL_X52_Y19_N54
\processador|fetch|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~13_combout\ = ( \processador|fetch|registerPC|DOUT\(3) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(5) & 
-- (!\processador|fetch|registerPC|DOUT\(1) $ (!\processador|fetch|registerPC|DOUT\(4))))) # (\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4)))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(3) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & !\processador|fetch|registerPC|DOUT\(2))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & ((!\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(5) & 
-- \processador|fetch|registerPC|DOUT\(2))) # (\processador|fetch|registerPC|DOUT\(1) & ((!\processador|fetch|registerPC|DOUT\(2)))))) # (\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(5) & 
-- \processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(3) & ( !\processador|fetch|registerPC|DOUT\(0) & ( !\processador|fetch|registerPC|DOUT\(4) $ ((((!\processador|fetch|registerPC|DOUT\(5)) # 
-- (\processador|fetch|registerPC|DOUT\(2))) # (\processador|fetch|registerPC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100110011010001000011100000001100000000000110000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~13_combout\);

-- Location: LABCELL_X52_Y19_N36
\processador|fetch|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~5_combout\ = ( !\processador|fetch|registerPC|DOUT\(6) & ( (!\processador|fetch|registerPC|DOUT\(7) & !\processador|fetch|registerPC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(7),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(8),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(6),
	combout => \processador|fetch|ROM|memROM~5_combout\);

-- Location: LABCELL_X52_Y19_N3
\processador|fetch|ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~29_combout\ = (\processador|fetch|ROM|memROM~13_combout\ & \processador|fetch|ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|fetch|ROM|memROM~29_combout\);

-- Location: LABCELL_X52_Y19_N48
\processador|fetch|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~10_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(4) & 
-- (!\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(2)))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(5) & (((\processador|fetch|registerPC|DOUT\(3) & 
-- !\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) $ (!\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(3) $ 
-- (!\processador|fetch|registerPC|DOUT\(2))))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(5) $ (!\processador|fetch|registerPC|DOUT\(3))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(5) & (\processador|fetch|registerPC|DOUT\(3)))) # 
-- (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & ((!\processador|fetch|registerPC|DOUT\(5)) # (!\processador|fetch|registerPC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111010000001000101001000011010010000000100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~10_combout\);

-- Location: LABCELL_X47_Y20_N15
\processador|fetch|ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~26_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( \processador|fetch|ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|fetch|ROM|memROM~26_combout\);

-- Location: LABCELL_X52_Y19_N21
\processador|fetch|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~11_combout\ = ( \processador|fetch|ROM|memROM~10_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	combout => \processador|fetch|ROM|memROM~11_combout\);

-- Location: LABCELL_X48_Y21_N15
\processador|arquitetura|muxInstRAM|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\ = (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal7~0_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\);

-- Location: LABCELL_X52_Y19_N45
\processador|fetch|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~15_combout\ = ( \processador|fetch|ROM|memROM~13_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & \processador|fetch|ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	combout => \processador|fetch|ROM|memROM~15_combout\);

-- Location: LABCELL_X53_Y19_N0
\processador|fetch|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~14_combout\ = ( \processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & 
-- (\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(3)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( \processador|fetch|registerPC|DOUT\(0) & ( (\processador|fetch|registerPC|DOUT\(1) & 
-- (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(3)))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( 
-- (!\processador|fetch|registerPC|DOUT\(2) & ((!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(4) & \processador|fetch|registerPC|DOUT\(3))) # (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(4) 
-- & !\processador|fetch|registerPC|DOUT\(3))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(5) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(2) & (((\processador|fetch|registerPC|DOUT\(4) & 
-- !\processador|fetch|registerPC|DOUT\(3))))) # (\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(1)) # (!\processador|fetch|registerPC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001110000100001000000000000001000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~14_combout\);

-- Location: LABCELL_X48_Y19_N27
\de|enderecoChave[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[3]~0_combout\ = ( \processador|fetch|ROM|memROM~6_combout\ & ( \processador|fetch|ROM|memROM~5_combout\ ) ) # ( !\processador|fetch|ROM|memROM~6_combout\ & ( (\processador|fetch|ROM|memROM~14_combout\ & 
-- \processador|fetch|ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \de|enderecoChave[3]~0_combout\);

-- Location: LABCELL_X48_Y19_N30
\de|enderecoChave[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[3]~1_combout\ = ( \processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~9_combout\ & (\processador|fetch|ROM|memROM~15_combout\ & !\de|enderecoChave[3]~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datad => \de|ALT_INV_enderecoChave[3]~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	combout => \de|enderecoChave[3]~1_combout\);

-- Location: IOIBUF_X48_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X53_Y19_N24
\de|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|Equal2~0_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & ((\processador|fetch|ROM|memROM~14_combout\) # (\processador|fetch|ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \de|Equal2~0_combout\);

-- Location: LABCELL_X48_Y19_N6
\out_dataRAM[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~9_combout\ = ( !\de|Equal2~0_combout\ & ( \processador|fetch|ROM|memROM~16_combout\ & ( (\SW[8]~input_o\ & ((!\processador|fetch|ROM|memROM~11_combout\ & (\processador|fetch|ROM|memROM~9_combout\ & 
-- !\processador|fetch|ROM|memROM~15_combout\)) # (\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~9_combout\ & \processador|fetch|ROM|memROM~15_combout\)))) ) ) ) # ( !\de|Equal2~0_combout\ & ( 
-- !\processador|fetch|ROM|memROM~16_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (\processador|fetch|ROM|memROM~15_combout\ & \SW[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000001001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \de|ALT_INV_Equal2~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	combout => \out_dataRAM[0]~9_combout\);

-- Location: MLABCELL_X49_Y19_N12
\de|habilitaChave~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|habilitaChave~0_combout\ = ( \processador|fetch|ROM|memROM~15_combout\ & ( \processador|fetch|ROM|memROM~9_combout\ & ( (!\de|Equal2~0_combout\ & (!\processador|fetch|ROM|memROM~11_combout\ $ (((!\processador|fetch|ROM|memROM~12_combout\) # 
-- (\processador|fetch|registerPC|DOUT\(9)))))) ) ) ) # ( !\processador|fetch|ROM|memROM~15_combout\ & ( \processador|fetch|ROM|memROM~9_combout\ & ( (!\de|Equal2~0_combout\ & (\processador|fetch|ROM|memROM~12_combout\ & 
-- !\processador|fetch|registerPC|DOUT\(9))) ) ) ) # ( \processador|fetch|ROM|memROM~15_combout\ & ( !\processador|fetch|ROM|memROM~9_combout\ & ( (!\de|Equal2~0_combout\ & (((\processador|fetch|ROM|memROM~12_combout\ & 
-- !\processador|fetch|registerPC|DOUT\(9))) # (\processador|fetch|ROM|memROM~11_combout\))) ) ) ) # ( !\processador|fetch|ROM|memROM~15_combout\ & ( !\processador|fetch|ROM|memROM~9_combout\ & ( (!\de|Equal2~0_combout\ & 
-- (\processador|fetch|ROM|memROM~12_combout\ & !\processador|fetch|registerPC|DOUT\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001010100000101000100010000000000010100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_Equal2~0_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datae => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	combout => \de|habilitaChave~0_combout\);

-- Location: LABCELL_X48_Y19_N51
\processador|fetch|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~17_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( (\processador|fetch|ROM|memROM~14_combout\ & !\processador|fetch|registerPC|DOUT\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|fetch|ROM|memROM~17_combout\);

-- Location: LABCELL_X48_Y19_N36
\out_dataRAM[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~4_combout\ = ( \processador|fetch|registerPC|DOUT\(9) & ( \processador|fetch|ROM|memROM~9_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~15_combout\ & \processador|fetch|ROM|memROM~17_combout\)) 
-- ) ) ) # ( !\processador|fetch|registerPC|DOUT\(9) & ( \processador|fetch|ROM|memROM~9_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~15_combout\ & (\processador|fetch|ROM|memROM~17_combout\ & 
-- !\processador|fetch|ROM|memROM~12_combout\))) # (\processador|fetch|ROM|memROM~11_combout\ & (\processador|fetch|ROM|memROM~15_combout\ & (!\processador|fetch|ROM|memROM~17_combout\ & \processador|fetch|ROM|memROM~12_combout\))) ) ) ) # ( 
-- \processador|fetch|registerPC|DOUT\(9) & ( !\processador|fetch|ROM|memROM~9_combout\ & ( (!\processador|fetch|ROM|memROM~15_combout\ & \processador|fetch|ROM|memROM~17_combout\) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(9) & ( 
-- !\processador|fetch|ROM|memROM~9_combout\ & ( (!\processador|fetch|ROM|memROM~15_combout\ & (\processador|fetch|ROM|memROM~17_combout\ & !\processador|fetch|ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000110000001000000100000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~17_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	combout => \out_dataRAM[0]~4_combout\);

-- Location: LABCELL_X53_Y18_N30
\baseTempo|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~21_sumout\ = SUM(( \baseTempo|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \baseTempo|baseTempo|Add0~22\ = CARRY(( \baseTempo|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \baseTempo|baseTempo|Add0~21_sumout\,
	cout => \baseTempo|baseTempo|Add0~22\);

-- Location: FF_X53_Y18_N31
\baseTempo|baseTempo|contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~21_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador[0]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y18_N33
\baseTempo|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~5_sumout\ = SUM(( \baseTempo|baseTempo|contador\(1) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~22\ ))
-- \baseTempo|baseTempo|Add0~6\ = CARRY(( \baseTempo|baseTempo|contador\(1) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(1),
	cin => \baseTempo|baseTempo|Add0~22\,
	sumout => \baseTempo|baseTempo|Add0~5_sumout\,
	cout => \baseTempo|baseTempo|Add0~6\);

-- Location: FF_X53_Y18_N35
\baseTempo|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~5_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(1));

-- Location: LABCELL_X53_Y18_N36
\baseTempo|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~93_sumout\ = SUM(( \baseTempo|baseTempo|contador\(2) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~6\ ))
-- \baseTempo|baseTempo|Add0~94\ = CARRY(( \baseTempo|baseTempo|contador\(2) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(2),
	cin => \baseTempo|baseTempo|Add0~6\,
	sumout => \baseTempo|baseTempo|Add0~93_sumout\,
	cout => \baseTempo|baseTempo|Add0~94\);

-- Location: FF_X53_Y18_N38
\baseTempo|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~93_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(2));

-- Location: LABCELL_X53_Y18_N39
\baseTempo|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~49_sumout\ = SUM(( \baseTempo|baseTempo|contador\(3) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~94\ ))
-- \baseTempo|baseTempo|Add0~50\ = CARRY(( \baseTempo|baseTempo|contador\(3) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(3),
	cin => \baseTempo|baseTempo|Add0~94\,
	sumout => \baseTempo|baseTempo|Add0~49_sumout\,
	cout => \baseTempo|baseTempo|Add0~50\);

-- Location: FF_X53_Y18_N41
\baseTempo|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~49_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(3));

-- Location: LABCELL_X53_Y18_N42
\baseTempo|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~53_sumout\ = SUM(( \baseTempo|baseTempo|contador\(4) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~50\ ))
-- \baseTempo|baseTempo|Add0~54\ = CARRY(( \baseTempo|baseTempo|contador\(4) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(4),
	cin => \baseTempo|baseTempo|Add0~50\,
	sumout => \baseTempo|baseTempo|Add0~53_sumout\,
	cout => \baseTempo|baseTempo|Add0~54\);

-- Location: FF_X53_Y18_N43
\baseTempo|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~53_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(4));

-- Location: LABCELL_X53_Y18_N45
\baseTempo|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~9_sumout\ = SUM(( \baseTempo|baseTempo|contador\(5) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~54\ ))
-- \baseTempo|baseTempo|Add0~10\ = CARRY(( \baseTempo|baseTempo|contador\(5) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(5),
	cin => \baseTempo|baseTempo|Add0~54\,
	sumout => \baseTempo|baseTempo|Add0~9_sumout\,
	cout => \baseTempo|baseTempo|Add0~10\);

-- Location: FF_X53_Y18_N47
\baseTempo|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~9_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(5));

-- Location: LABCELL_X53_Y18_N48
\baseTempo|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~13_sumout\ = SUM(( \baseTempo|baseTempo|contador\(6) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~10\ ))
-- \baseTempo|baseTempo|Add0~14\ = CARRY(( \baseTempo|baseTempo|contador\(6) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(6),
	cin => \baseTempo|baseTempo|Add0~10\,
	sumout => \baseTempo|baseTempo|Add0~13_sumout\,
	cout => \baseTempo|baseTempo|Add0~14\);

-- Location: FF_X53_Y18_N50
\baseTempo|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~13_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(6));

-- Location: LABCELL_X53_Y18_N51
\baseTempo|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~17_sumout\ = SUM(( \baseTempo|baseTempo|contador\(7) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~14\ ))
-- \baseTempo|baseTempo|Add0~18\ = CARRY(( \baseTempo|baseTempo|contador\(7) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(7),
	cin => \baseTempo|baseTempo|Add0~14\,
	sumout => \baseTempo|baseTempo|Add0~17_sumout\,
	cout => \baseTempo|baseTempo|Add0~18\);

-- Location: FF_X53_Y18_N53
\baseTempo|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~17_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(7));

-- Location: LABCELL_X53_Y18_N54
\baseTempo|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~29_sumout\ = SUM(( \baseTempo|baseTempo|contador\(8) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~18\ ))
-- \baseTempo|baseTempo|Add0~30\ = CARRY(( \baseTempo|baseTempo|contador\(8) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(8),
	cin => \baseTempo|baseTempo|Add0~18\,
	sumout => \baseTempo|baseTempo|Add0~29_sumout\,
	cout => \baseTempo|baseTempo|Add0~30\);

-- Location: FF_X53_Y18_N56
\baseTempo|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~29_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(8));

-- Location: LABCELL_X53_Y18_N57
\baseTempo|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~25_sumout\ = SUM(( \baseTempo|baseTempo|contador\(9) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~30\ ))
-- \baseTempo|baseTempo|Add0~26\ = CARRY(( \baseTempo|baseTempo|contador\(9) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(9),
	cin => \baseTempo|baseTempo|Add0~30\,
	sumout => \baseTempo|baseTempo|Add0~25_sumout\,
	cout => \baseTempo|baseTempo|Add0~26\);

-- Location: FF_X53_Y18_N59
\baseTempo|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~25_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(9));

-- Location: LABCELL_X53_Y17_N0
\baseTempo|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~45_sumout\ = SUM(( \baseTempo|baseTempo|contador\(10) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~26\ ))
-- \baseTempo|baseTempo|Add0~46\ = CARRY(( \baseTempo|baseTempo|contador\(10) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador\(10),
	cin => \baseTempo|baseTempo|Add0~26\,
	sumout => \baseTempo|baseTempo|Add0~45_sumout\,
	cout => \baseTempo|baseTempo|Add0~46\);

-- Location: FF_X53_Y17_N2
\baseTempo|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~45_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(10));

-- Location: LABCELL_X53_Y17_N3
\baseTempo|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~41_sumout\ = SUM(( \baseTempo|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~46\ ))
-- \baseTempo|baseTempo|Add0~42\ = CARRY(( \baseTempo|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	cin => \baseTempo|baseTempo|Add0~46\,
	sumout => \baseTempo|baseTempo|Add0~41_sumout\,
	cout => \baseTempo|baseTempo|Add0~42\);

-- Location: FF_X53_Y17_N5
\baseTempo|baseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~41_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador[11]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y17_N6
\baseTempo|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~37_sumout\ = SUM(( \baseTempo|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~42\ ))
-- \baseTempo|baseTempo|Add0~38\ = CARRY(( \baseTempo|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \baseTempo|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\,
	cin => \baseTempo|baseTempo|Add0~42\,
	sumout => \baseTempo|baseTempo|Add0~37_sumout\,
	cout => \baseTempo|baseTempo|Add0~38\);

-- Location: FF_X53_Y17_N7
\baseTempo|baseTempo|contador[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~37_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador[12]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y17_N9
\baseTempo|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~33_sumout\ = SUM(( \baseTempo|baseTempo|contador\(13) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~38\ ))
-- \baseTempo|baseTempo|Add0~34\ = CARRY(( \baseTempo|baseTempo|contador\(13) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(13),
	cin => \baseTempo|baseTempo|Add0~38\,
	sumout => \baseTempo|baseTempo|Add0~33_sumout\,
	cout => \baseTempo|baseTempo|Add0~34\);

-- Location: FF_X53_Y17_N11
\baseTempo|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~33_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(13));

-- Location: LABCELL_X53_Y17_N12
\baseTempo|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~1_sumout\ = SUM(( \baseTempo|baseTempo|contador\(14) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~34\ ))
-- \baseTempo|baseTempo|Add0~2\ = CARRY(( \baseTempo|baseTempo|contador\(14) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \baseTempo|baseTempo|ALT_INV_contador\(14),
	cin => \baseTempo|baseTempo|Add0~34\,
	sumout => \baseTempo|baseTempo|Add0~1_sumout\,
	cout => \baseTempo|baseTempo|Add0~2\);

-- Location: FF_X53_Y17_N14
\baseTempo|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~1_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(14));

-- Location: LABCELL_X53_Y17_N15
\baseTempo|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~97_sumout\ = SUM(( \baseTempo|baseTempo|contador\(15) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~2\ ))
-- \baseTempo|baseTempo|Add0~98\ = CARRY(( \baseTempo|baseTempo|contador\(15) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(15),
	cin => \baseTempo|baseTempo|Add0~2\,
	sumout => \baseTempo|baseTempo|Add0~97_sumout\,
	cout => \baseTempo|baseTempo|Add0~98\);

-- Location: FF_X53_Y18_N11
\baseTempo|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \baseTempo|baseTempo|Add0~97_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(15));

-- Location: LABCELL_X53_Y17_N18
\baseTempo|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~89_sumout\ = SUM(( \baseTempo|baseTempo|contador\(16) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~98\ ))
-- \baseTempo|baseTempo|Add0~90\ = CARRY(( \baseTempo|baseTempo|contador\(16) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(16),
	cin => \baseTempo|baseTempo|Add0~98\,
	sumout => \baseTempo|baseTempo|Add0~89_sumout\,
	cout => \baseTempo|baseTempo|Add0~90\);

-- Location: FF_X53_Y17_N20
\baseTempo|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~89_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(16));

-- Location: LABCELL_X53_Y17_N21
\baseTempo|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~85_sumout\ = SUM(( \baseTempo|baseTempo|contador\(17) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~90\ ))
-- \baseTempo|baseTempo|Add0~86\ = CARRY(( \baseTempo|baseTempo|contador\(17) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(17),
	cin => \baseTempo|baseTempo|Add0~90\,
	sumout => \baseTempo|baseTempo|Add0~85_sumout\,
	cout => \baseTempo|baseTempo|Add0~86\);

-- Location: FF_X53_Y17_N22
\baseTempo|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~85_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(17));

-- Location: LABCELL_X53_Y17_N24
\baseTempo|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~81_sumout\ = SUM(( \baseTempo|baseTempo|contador\(18) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~86\ ))
-- \baseTempo|baseTempo|Add0~82\ = CARRY(( \baseTempo|baseTempo|contador\(18) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(18),
	cin => \baseTempo|baseTempo|Add0~86\,
	sumout => \baseTempo|baseTempo|Add0~81_sumout\,
	cout => \baseTempo|baseTempo|Add0~82\);

-- Location: FF_X53_Y17_N26
\baseTempo|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~81_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(18));

-- Location: LABCELL_X53_Y18_N18
\baseTempo|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Equal0~3_combout\ = ( \baseTempo|baseTempo|contador\(16) & ( !\baseTempo|baseTempo|contador\(17) & ( (!\baseTempo|baseTempo|contador\(2) & (!\baseTempo|baseTempo|contador\(15) & \baseTempo|baseTempo|contador\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(2),
	datab => \baseTempo|baseTempo|ALT_INV_contador\(15),
	datac => \baseTempo|baseTempo|ALT_INV_contador\(18),
	datae => \baseTempo|baseTempo|ALT_INV_contador\(16),
	dataf => \baseTempo|baseTempo|ALT_INV_contador\(17),
	combout => \baseTempo|baseTempo|Equal0~3_combout\);

-- Location: FF_X53_Y18_N32
\baseTempo|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~21_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(0));

-- Location: LABCELL_X53_Y18_N12
\baseTempo|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Equal0~0_combout\ = ( !\baseTempo|baseTempo|contador\(8) & ( !\baseTempo|baseTempo|contador\(0) & ( (!\baseTempo|baseTempo|contador\(7) & (!\baseTempo|baseTempo|contador\(9) & (\baseTempo|baseTempo|contador\(6) & 
-- !\baseTempo|baseTempo|contador\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(7),
	datab => \baseTempo|baseTempo|ALT_INV_contador\(9),
	datac => \baseTempo|baseTempo|ALT_INV_contador\(6),
	datad => \baseTempo|baseTempo|ALT_INV_contador\(5),
	datae => \baseTempo|baseTempo|ALT_INV_contador\(8),
	dataf => \baseTempo|baseTempo|ALT_INV_contador\(0),
	combout => \baseTempo|baseTempo|Equal0~0_combout\);

-- Location: FF_X53_Y17_N8
\baseTempo|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~37_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(12));

-- Location: FF_X53_Y17_N4
\baseTempo|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~41_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(11));

-- Location: LABCELL_X53_Y18_N0
\baseTempo|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Equal0~1_combout\ = ( !\baseTempo|baseTempo|contador\(10) & ( \baseTempo|baseTempo|contador\(11) & ( (\baseTempo|baseTempo|contador\(13) & (!\baseTempo|baseTempo|contador\(4) & (\baseTempo|baseTempo|contador\(12) & 
-- !\baseTempo|baseTempo|contador\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(13),
	datab => \baseTempo|baseTempo|ALT_INV_contador\(4),
	datac => \baseTempo|baseTempo|ALT_INV_contador\(12),
	datad => \baseTempo|baseTempo|ALT_INV_contador\(3),
	datae => \baseTempo|baseTempo|ALT_INV_contador\(10),
	dataf => \baseTempo|baseTempo|ALT_INV_contador\(11),
	combout => \baseTempo|baseTempo|Equal0~1_combout\);

-- Location: FF_X53_Y17_N28
\baseTempo|baseTempo|contador[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~77_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador[19]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y17_N27
\baseTempo|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~77_sumout\ = SUM(( \baseTempo|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~82\ ))
-- \baseTempo|baseTempo|Add0~78\ = CARRY(( \baseTempo|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \baseTempo|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\,
	cin => \baseTempo|baseTempo|Add0~82\,
	sumout => \baseTempo|baseTempo|Add0~77_sumout\,
	cout => \baseTempo|baseTempo|Add0~78\);

-- Location: FF_X53_Y17_N29
\baseTempo|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~77_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(19));

-- Location: LABCELL_X53_Y17_N30
\baseTempo|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~73_sumout\ = SUM(( \baseTempo|baseTempo|contador\(20) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~78\ ))
-- \baseTempo|baseTempo|Add0~74\ = CARRY(( \baseTempo|baseTempo|contador\(20) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \baseTempo|baseTempo|ALT_INV_contador\(20),
	cin => \baseTempo|baseTempo|Add0~78\,
	sumout => \baseTempo|baseTempo|Add0~73_sumout\,
	cout => \baseTempo|baseTempo|Add0~74\);

-- Location: FF_X53_Y17_N32
\baseTempo|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~73_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(20));

-- Location: LABCELL_X53_Y17_N33
\baseTempo|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~69_sumout\ = SUM(( \baseTempo|baseTempo|contador\(21) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~74\ ))
-- \baseTempo|baseTempo|Add0~70\ = CARRY(( \baseTempo|baseTempo|contador\(21) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(21),
	cin => \baseTempo|baseTempo|Add0~74\,
	sumout => \baseTempo|baseTempo|Add0~69_sumout\,
	cout => \baseTempo|baseTempo|Add0~70\);

-- Location: FF_X53_Y17_N35
\baseTempo|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~69_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(21));

-- Location: LABCELL_X53_Y17_N36
\baseTempo|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~65_sumout\ = SUM(( \baseTempo|baseTempo|contador\(22) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~70\ ))
-- \baseTempo|baseTempo|Add0~66\ = CARRY(( \baseTempo|baseTempo|contador\(22) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(22),
	cin => \baseTempo|baseTempo|Add0~70\,
	sumout => \baseTempo|baseTempo|Add0~65_sumout\,
	cout => \baseTempo|baseTempo|Add0~66\);

-- Location: FF_X53_Y17_N38
\baseTempo|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~65_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(22));

-- Location: LABCELL_X53_Y17_N39
\baseTempo|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~61_sumout\ = SUM(( \baseTempo|baseTempo|contador\(23) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~66\ ))
-- \baseTempo|baseTempo|Add0~62\ = CARRY(( \baseTempo|baseTempo|contador\(23) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_contador\(23),
	cin => \baseTempo|baseTempo|Add0~66\,
	sumout => \baseTempo|baseTempo|Add0~61_sumout\,
	cout => \baseTempo|baseTempo|Add0~62\);

-- Location: FF_X53_Y17_N41
\baseTempo|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~61_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(23));

-- Location: LABCELL_X53_Y17_N42
\baseTempo|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Add0~57_sumout\ = SUM(( \baseTempo|baseTempo|contador\(24) ) + ( GND ) + ( \baseTempo|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \baseTempo|baseTempo|ALT_INV_contador\(24),
	cin => \baseTempo|baseTempo|Add0~62\,
	sumout => \baseTempo|baseTempo|Add0~57_sumout\);

-- Location: FF_X53_Y17_N44
\baseTempo|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \baseTempo|baseTempo|Add0~57_sumout\,
	sclr => \baseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|contador\(24));

-- Location: LABCELL_X53_Y17_N51
\baseTempo|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Equal0~2_combout\ = ( \baseTempo|baseTempo|contador\(22) & ( !\baseTempo|baseTempo|contador\(23) & ( (\baseTempo|baseTempo|contador\(19) & (\baseTempo|baseTempo|contador\(24) & (\baseTempo|baseTempo|contador\(20) & 
-- \baseTempo|baseTempo|contador\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(19),
	datab => \baseTempo|baseTempo|ALT_INV_contador\(24),
	datac => \baseTempo|baseTempo|ALT_INV_contador\(20),
	datad => \baseTempo|baseTempo|ALT_INV_contador\(21),
	datae => \baseTempo|baseTempo|ALT_INV_contador\(22),
	dataf => \baseTempo|baseTempo|ALT_INV_contador\(23),
	combout => \baseTempo|baseTempo|Equal0~2_combout\);

-- Location: LABCELL_X53_Y18_N6
\baseTempo|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|Equal0~4_combout\ = ( \baseTempo|baseTempo|Equal0~1_combout\ & ( \baseTempo|baseTempo|Equal0~2_combout\ & ( (!\baseTempo|baseTempo|contador\(1) & (\baseTempo|baseTempo|contador\(14) & (\baseTempo|baseTempo|Equal0~3_combout\ & 
-- \baseTempo|baseTempo|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|baseTempo|ALT_INV_contador\(1),
	datab => \baseTempo|baseTempo|ALT_INV_contador\(14),
	datac => \baseTempo|baseTempo|ALT_INV_Equal0~3_combout\,
	datad => \baseTempo|baseTempo|ALT_INV_Equal0~0_combout\,
	datae => \baseTempo|baseTempo|ALT_INV_Equal0~1_combout\,
	dataf => \baseTempo|baseTempo|ALT_INV_Equal0~2_combout\,
	combout => \baseTempo|baseTempo|Equal0~4_combout\);

-- Location: LABCELL_X53_Y18_N27
\baseTempo|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|baseTempo|tick~0_combout\ = ( \baseTempo|baseTempo|tick~q\ & ( !\baseTempo|baseTempo|Equal0~4_combout\ ) ) # ( !\baseTempo|baseTempo|tick~q\ & ( \baseTempo|baseTempo|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \baseTempo|baseTempo|ALT_INV_Equal0~4_combout\,
	dataf => \baseTempo|baseTempo|ALT_INV_tick~q\,
	combout => \baseTempo|baseTempo|tick~0_combout\);

-- Location: FF_X53_Y18_N17
\baseTempo|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \baseTempo|baseTempo|tick~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baseTempo|baseTempo|tick~q\);

-- Location: MLABCELL_X49_Y19_N36
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

-- Location: LABCELL_X52_Y19_N0
\de|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|Equal7~0_combout\ = ( !\processador|fetch|ROM|memROM~10_combout\ & ( (\processador|fetch|ROM|memROM~5_combout\ & (\processador|fetch|ROM|memROM~13_combout\ & !\processador|fetch|registerPC|DOUT\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~10_combout\,
	combout => \de|Equal7~0_combout\);

-- Location: MLABCELL_X49_Y19_N54
\de|limpaLeitura~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~2_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( (!\processador|fetch|registerPC|DOUT\(9) & (\processador|fetch|ROM|memROM~14_combout\ & !\processador|fetch|ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datac => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \de|limpaLeitura~2_combout\);

-- Location: MLABCELL_X49_Y19_N0
\de|limpaLeitura\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( !\processador|fetch|ROM|memROM~7_combout\ & ( (\de|Equal7~0_combout\ & (\processador|UC|Equal7~0_combout\ & (\de|limpaLeitura~2_combout\ & 
-- \processador|fetch|registerPC|DOUT\(9)))) ) ) ) # ( !\processador|fetch|ROM|memROM~12_combout\ & ( !\processador|fetch|ROM|memROM~7_combout\ & ( (\de|Equal7~0_combout\ & (\processador|UC|Equal7~0_combout\ & \de|limpaLeitura~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_Equal7~0_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \de|ALT_INV_limpaLeitura~2_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datae => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	combout => \de|limpaLeitura~combout\);

-- Location: FF_X49_Y19_N37
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

-- Location: LABCELL_X48_Y19_N12
\de|limpaLeitura~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~0_combout\ = ( !\processador|fetch|ROM|memROM~7_combout\ & ( \processador|UC|Equal7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	combout => \de|limpaLeitura~0_combout\);

-- Location: LABCELL_X48_Y19_N48
\baseTempo|leituraUmSegundo[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~1_combout\ = ( !\processador|fetch|ROM|memROM~13_combout\ & ( (\processador|fetch|ROM|memROM~14_combout\ & (\processador|fetch|ROM|memROM~5_combout\ & !\processador|fetch|registerPC|DOUT\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~1_combout\);

-- Location: LABCELL_X48_Y20_N12
\baseTempo|leituraUmSegundo[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~0_combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( (\processador|fetch|ROM|memROM~9_combout\ & (\processador|fetch|ROM|memROM~11_combout\ & \processador|fetch|registerPC|DOUT\(9))) ) ) # ( 
-- !\processador|fetch|ROM|memROM~12_combout\ & ( (\processador|fetch|ROM|memROM~9_combout\ & \processador|fetch|ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~0_combout\);

-- Location: LABCELL_X48_Y20_N24
\out_dataRAM[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~5_combout\ = ( \baseTempo|leituraUmSegundo[0]~1_combout\ & ( \baseTempo|leituraUmSegundo[0]~0_combout\ & ( (!\out_dataRAM[0]~4_combout\ & (\baseTempo|registraUmSegundo|DOUT~q\ & \de|limpaLeitura~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_dataRAM[0]~4_combout\,
	datab => \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	datac => \de|ALT_INV_limpaLeitura~0_combout\,
	datae => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	dataf => \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\,
	combout => \out_dataRAM[0]~5_combout\);

-- Location: IOIBUF_X51_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X48_Y19_N21
\out_dataRAM[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~6_combout\ = ( \KEY[0]~input_o\ & ( \processador|fetch|ROM|memROM~13_combout\ & ( (\processador|fetch|ROM|memROM~8_combout\ & (!\processador|fetch|ROM|memROM~14_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & 
-- \processador|fetch|ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	combout => \out_dataRAM[0]~6_combout\);

-- Location: IOIBUF_X54_Y15_N55
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X54_Y15_N4
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y15_N38
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X48_Y19_N33
\out_dataRAM[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~7_combout\ = ( \KEY[3]~input_o\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & ((!\processador|fetch|ROM|memROM~9_combout\ & ((\KEY[1]~input_o\))) # (\processador|fetch|ROM|memROM~9_combout\ & (\KEY[2]~input_o\)))) # 
-- (\processador|fetch|ROM|memROM~11_combout\ & (!\processador|fetch|ROM|memROM~9_combout\)) ) ) # ( !\KEY[3]~input_o\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & ((!\processador|fetch|ROM|memROM~9_combout\ & ((\KEY[1]~input_o\))) # 
-- (\processador|fetch|ROM|memROM~9_combout\ & (\KEY[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \out_dataRAM[0]~7_combout\);

-- Location: LABCELL_X48_Y19_N54
\out_dataRAM[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~8_combout\ = ( \baseTempo|leituraUmSegundo[0]~1_combout\ & ( \out_dataRAM[0]~7_combout\ & ( (\de|limpaLeitura~0_combout\ & ((!\processador|fetch|ROM|memROM~16_combout\) # ((\processador|fetch|ROM|memROM~11_combout\ & 
-- \out_dataRAM[0]~6_combout\)))) ) ) ) # ( !\baseTempo|leituraUmSegundo[0]~1_combout\ & ( \out_dataRAM[0]~7_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (\de|limpaLeitura~0_combout\ & (\out_dataRAM[0]~6_combout\ & 
-- \processador|fetch|ROM|memROM~16_combout\))) ) ) ) # ( \baseTempo|leituraUmSegundo[0]~1_combout\ & ( !\out_dataRAM[0]~7_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (\de|limpaLeitura~0_combout\ & (\out_dataRAM[0]~6_combout\ & 
-- \processador|fetch|ROM|memROM~16_combout\))) ) ) ) # ( !\baseTempo|leituraUmSegundo[0]~1_combout\ & ( !\out_dataRAM[0]~7_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & (\de|limpaLeitura~0_combout\ & (\out_dataRAM[0]~6_combout\ & 
-- \processador|fetch|ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010011001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \de|ALT_INV_limpaLeitura~0_combout\,
	datac => \ALT_INV_out_dataRAM[0]~6_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datae => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~7_combout\,
	combout => \out_dataRAM[0]~8_combout\);

-- Location: IOIBUF_X48_Y0_N75
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X52_Y19_N42
\de|enderecoChave[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[2]~2_combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( (!\de|Equal2~0_combout\ & (!\processador|fetch|registerPC|DOUT\(9) & (!\processador|fetch|ROM|memROM~11_combout\ $ (!\processador|fetch|ROM|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	combout => \de|enderecoChave[2]~2_combout\);

-- Location: IOIBUF_X48_Y45_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X48_Y45_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X52_Y19_N24
\de|enderecoChave[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave[1]~3_combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\ & (!\de|Equal2~0_combout\ & !\processador|fetch|registerPC|DOUT\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	combout => \de|enderecoChave[1]~3_combout\);

-- Location: IOIBUF_X48_Y45_N1
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X52_Y19_N30
\de|enderecoChave~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoChave~4_combout\ = ( \processador|fetch|ROM|memROM~11_combout\ & ( \processador|fetch|ROM|memROM~12_combout\ & ( (!\de|Equal2~0_combout\ & (\processador|fetch|ROM|memROM~9_combout\ & (!\processador|fetch|ROM|memROM~29_combout\ & 
-- !\processador|fetch|registerPC|DOUT\(9)))) ) ) ) # ( !\processador|fetch|ROM|memROM~11_combout\ & ( \processador|fetch|ROM|memROM~12_combout\ & ( (!\de|Equal2~0_combout\ & (\processador|fetch|ROM|memROM~9_combout\ & 
-- !\processador|fetch|registerPC|DOUT\(9))) ) ) ) # ( \processador|fetch|ROM|memROM~11_combout\ & ( !\processador|fetch|ROM|memROM~12_combout\ & ( (!\de|Equal2~0_combout\ & (\processador|fetch|ROM|memROM~9_combout\ & 
-- (\processador|fetch|ROM|memROM~29_combout\ & !\processador|fetch|registerPC|DOUT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000100010000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_Equal2~0_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~29_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datae => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	combout => \de|enderecoChave~4_combout\);

-- Location: IOIBUF_X0_Y20_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N55
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X48_Y20_N6
\out_dataRAM[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~12_combout\ = ( !\de|enderecoChave[1]~3_combout\ & ( ((!\de|enderecoChave~4_combout\ & (\SW[0]~input_o\ & ((!\de|enderecoChave[2]~2_combout\)))) # (\de|enderecoChave~4_combout\ & (((\de|enderecoChave[2]~2_combout\) # (\SW[1]~input_o\))))) 
-- ) ) # ( \de|enderecoChave[1]~3_combout\ & ( (!\de|enderecoChave~4_combout\ & (((\SW[2]~input_o\ & ((!\de|enderecoChave[2]~2_combout\)))))) # (\de|enderecoChave~4_combout\ & ((((\de|enderecoChave[2]~2_combout\))) # (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \de|ALT_INV_enderecoChave~4_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \de|ALT_INV_enderecoChave[1]~3_combout\,
	dataf => \de|ALT_INV_enderecoChave[2]~2_combout\,
	datag => \ALT_INV_SW[0]~input_o\,
	combout => \out_dataRAM[0]~12_combout\);

-- Location: IOIBUF_X46_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X48_Y20_N18
\out_dataRAM[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~0_combout\ = ( !\de|enderecoChave[1]~3_combout\ & ( ((!\de|enderecoChave[2]~2_combout\ & (((\out_dataRAM[0]~12_combout\)))) # (\de|enderecoChave[2]~2_combout\ & ((!\out_dataRAM[0]~12_combout\ & (\SW[4]~input_o\)) # 
-- (\out_dataRAM[0]~12_combout\ & ((\SW[5]~input_o\)))))) ) ) # ( \de|enderecoChave[1]~3_combout\ & ( (!\de|enderecoChave[2]~2_combout\ & ((((\out_dataRAM[0]~12_combout\))))) # (\de|enderecoChave[2]~2_combout\ & (((!\out_dataRAM[0]~12_combout\ & 
-- ((\SW[6]~input_o\))) # (\out_dataRAM[0]~12_combout\ & (\SW[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \de|ALT_INV_enderecoChave[2]~2_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \de|ALT_INV_enderecoChave[1]~3_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~12_combout\,
	datag => \ALT_INV_SW[4]~input_o\,
	combout => \out_dataRAM[0]~0_combout\);

-- Location: LABCELL_X48_Y20_N0
\out_dataRAM[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~10_combout\ = ( \out_dataRAM[0]~8_combout\ & ( \out_dataRAM[0]~0_combout\ & ( (!\de|enderecoChave[3]~1_combout\) # ((!\de|habilitaChave~0_combout\) # (\out_dataRAM[0]~9_combout\)) ) ) ) # ( !\out_dataRAM[0]~8_combout\ & ( 
-- \out_dataRAM[0]~0_combout\ & ( (!\de|enderecoChave[3]~1_combout\ & (((\out_dataRAM[0]~5_combout\) # (\de|habilitaChave~0_combout\)))) # (\de|enderecoChave[3]~1_combout\ & (((!\de|habilitaChave~0_combout\ & \out_dataRAM[0]~5_combout\)) # 
-- (\out_dataRAM[0]~9_combout\))) ) ) ) # ( \out_dataRAM[0]~8_combout\ & ( !\out_dataRAM[0]~0_combout\ & ( (!\de|habilitaChave~0_combout\) # ((\de|enderecoChave[3]~1_combout\ & \out_dataRAM[0]~9_combout\)) ) ) ) # ( !\out_dataRAM[0]~8_combout\ & ( 
-- !\out_dataRAM[0]~0_combout\ & ( (!\de|enderecoChave[3]~1_combout\ & (((!\de|habilitaChave~0_combout\ & \out_dataRAM[0]~5_combout\)))) # (\de|enderecoChave[3]~1_combout\ & (((!\de|habilitaChave~0_combout\ & \out_dataRAM[0]~5_combout\)) # 
-- (\out_dataRAM[0]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001111100011111000100011011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datab => \ALT_INV_out_dataRAM[0]~9_combout\,
	datac => \de|ALT_INV_habilitaChave~0_combout\,
	datad => \ALT_INV_out_dataRAM[0]~5_combout\,
	datae => \ALT_INV_out_dataRAM[0]~8_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~0_combout\,
	combout => \out_dataRAM[0]~10_combout\);

-- Location: LABCELL_X47_Y20_N33
\out_dataRAM[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_dataRAM[0]~11_combout\ = ( \out_dataRAM[0]~5_combout\ & ( (\de|habilitaChave~0_combout\ & ((!\out_dataRAM[0]~9_combout\) # (!\de|enderecoChave[3]~1_combout\))) ) ) # ( !\out_dataRAM[0]~5_combout\ & ( (!\out_dataRAM[0]~9_combout\ & 
-- (((!\out_dataRAM[0]~8_combout\)) # (\de|habilitaChave~0_combout\))) # (\out_dataRAM[0]~9_combout\ & (!\de|enderecoChave[3]~1_combout\ & ((!\out_dataRAM[0]~8_combout\) # (\de|habilitaChave~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000110010111110100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_dataRAM[0]~9_combout\,
	datab => \de|ALT_INV_habilitaChave~0_combout\,
	datac => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datad => \ALT_INV_out_dataRAM[0]~8_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~5_combout\,
	combout => \out_dataRAM[0]~11_combout\);

-- Location: LABCELL_X47_Y20_N18
\processador|arquitetura|muxInstRAM|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\ = ( \processador|fetch|ROM|memROM~9_combout\ & ( \out_dataRAM[0]~0_combout\ & ( (\out_dataRAM[0]~11_combout\ & (\processador|UC|Equal7~0_combout\ & ((!\de|habilitaChave~0_combout\) # 
-- (\de|enderecoChave[3]~1_combout\)))) ) ) ) # ( !\processador|fetch|ROM|memROM~9_combout\ & ( \out_dataRAM[0]~0_combout\ & ( (!\processador|UC|Equal7~0_combout\) # ((\out_dataRAM[0]~11_combout\ & ((!\de|habilitaChave~0_combout\) # 
-- (\de|enderecoChave[3]~1_combout\)))) ) ) ) # ( \processador|fetch|ROM|memROM~9_combout\ & ( !\out_dataRAM[0]~0_combout\ & ( (\out_dataRAM[0]~11_combout\ & \processador|UC|Equal7~0_combout\) ) ) ) # ( !\processador|fetch|ROM|memROM~9_combout\ & ( 
-- !\out_dataRAM[0]~0_combout\ & ( (!\processador|UC|Equal7~0_combout\) # (\out_dataRAM[0]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000001010000010111110101111100010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_dataRAM[0]~11_combout\,
	datab => \de|ALT_INV_enderecoChave[3]~1_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \de|ALT_INV_habilitaChave~0_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	dataf => \ALT_INV_out_dataRAM[0]~0_combout\,
	combout => \processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\);

-- Location: LABCELL_X48_Y20_N30
\processador|arquitetura|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~34_cout\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	cin => GND,
	cout => \processador|arquitetura|ULA|Add0~34_cout\);

-- Location: LABCELL_X48_Y20_N33
\processador|arquitetura|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~5_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (\processador|fetch|ROM|memROM~9_combout\)) # (\processador|UC|Equal7~0_combout\ & 
-- ((\out_dataRAM[0]~10_combout\))))) ) + ( \processador|arquitetura|memReg|registrador~76_combout\ ) + ( \processador|arquitetura|ULA|Add0~34_cout\ ))
-- \processador|arquitetura|ULA|Add0~6\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|UC|Equal7~0_combout\ & (\processador|fetch|ROM|memROM~9_combout\)) # (\processador|UC|Equal7~0_combout\ & ((\out_dataRAM[0]~10_combout\))))) 
-- ) + ( \processador|arquitetura|memReg|registrador~76_combout\ ) + ( \processador|arquitetura|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_out_dataRAM[0]~10_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	cin => \processador|arquitetura|ULA|Add0~34_cout\,
	sumout => \processador|arquitetura|ULA|Add0~5_sumout\,
	cout => \processador|arquitetura|ULA|Add0~6\);

-- Location: LABCELL_X47_Y20_N48
\processador|arquitetura|ULA|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[0]~7_combout\ = ( \processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~5_sumout\)))) # (\processador|UC|operacao\(1) & 
-- ((!\processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\) # ((!\processador|UC|operacao\(0))))) ) ) # ( !\processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~5_sumout\)))) 
-- # (\processador|UC|operacao\(1) & (!\processador|arquitetura|muxInstRAM|saida_MUX[0]~1_combout\ & ((\processador|UC|operacao\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111001011111010011100101111101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[0]~1_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~5_sumout\,
	datad => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \processador|arquitetura|ULA|saida[0]~7_combout\);

-- Location: MLABCELL_X49_Y19_N6
\processador|UC|habilitaResgistrador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|habilitaResgistrador~0_combout\ = ( !\processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|ROM|memROM~1_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & (!\processador|fetch|ROM|memROM~4_combout\ $ 
-- (!\processador|fetch|ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|UC|habilitaResgistrador~0_combout\);

-- Location: LABCELL_X48_Y19_N45
\processador|UC|habilitaResgistrador~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|habilitaResgistrador~1_combout\ = ( \processador|fetch|ROM|memROM~2_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & (\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & 
-- !\processador|fetch|ROM|memROM~1_combout\))) ) ) # ( !\processador|fetch|ROM|memROM~2_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & (!\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & 
-- !\processador|fetch|ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|UC|habilitaResgistrador~1_combout\);

-- Location: LABCELL_X50_Y19_N57
\processador|fetch|ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~20_combout\ = ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(3) & \processador|fetch|registerPC|DOUT\(1))) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(3) & ((!\processador|fetch|registerPC|DOUT\(2)) # (!\processador|fetch|registerPC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~20_combout\);

-- Location: LABCELL_X50_Y19_N6
\processador|fetch|ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~22_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(2) & ( (\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(3)) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(2) & ( (\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(3)) ) ) ) # ( \processador|fetch|registerPC|DOUT\(1) & ( 
-- !\processador|fetch|registerPC|DOUT\(2) & ( (\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	combout => \processador|fetch|ROM|memROM~22_combout\);

-- Location: LABCELL_X50_Y19_N54
\processador|fetch|ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~21_combout\ = ( \processador|fetch|registerPC|DOUT\(2) & ( (!\processador|fetch|registerPC|DOUT\(1) & \processador|fetch|registerPC|DOUT\(3)) ) ) # ( !\processador|fetch|registerPC|DOUT\(2) & ( 
-- !\processador|fetch|registerPC|DOUT\(1) $ (!\processador|fetch|registerPC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	combout => \processador|fetch|ROM|memROM~21_combout\);

-- Location: LABCELL_X50_Y19_N36
\processador|fetch|ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~23_combout\ = ( \processador|fetch|ROM|memROM~21_combout\ & ( \processador|fetch|ROM|memROM~0_combout\ & ( (!\processador|fetch|registerPC|DOUT\(4) & (((!\processador|fetch|registerPC|DOUT\(5))) # 
-- (\processador|fetch|ROM|memROM~20_combout\))) # (\processador|fetch|registerPC|DOUT\(4) & (((\processador|fetch|ROM|memROM~22_combout\ & !\processador|fetch|registerPC|DOUT\(5))))) ) ) ) # ( !\processador|fetch|ROM|memROM~21_combout\ & ( 
-- \processador|fetch|ROM|memROM~0_combout\ & ( (!\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|ROM|memROM~20_combout\ & ((\processador|fetch|registerPC|DOUT\(5))))) # (\processador|fetch|registerPC|DOUT\(4) & 
-- (((\processador|fetch|ROM|memROM~22_combout\ & !\processador|fetch|registerPC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~20_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~22_combout\,
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datae => \processador|fetch|ROM|ALT_INV_memROM~21_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~23_combout\);

-- Location: LABCELL_X52_Y20_N54
\processador|arquitetura|memReg|registrador~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~140_combout\ = ( \processador|fetch|ROM|memROM~25_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & 
-- !\processador|fetch|ROM|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|arquitetura|memReg|registrador~140_combout\);

-- Location: FF_X49_Y20_N55
\processador|arquitetura|memReg|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~52_q\);

-- Location: MLABCELL_X49_Y21_N18
\processador|arquitetura|memReg|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~141_combout\ = ( !\processador|UC|habilitaResgistrador~1_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|fetch|ROM|memROM~25_combout\ 
-- & !\processador|fetch|ROM|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	combout => \processador|arquitetura|memReg|registrador~141_combout\);

-- Location: FF_X50_Y20_N31
\processador|arquitetura|memReg|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~44_q\);

-- Location: LABCELL_X52_Y20_N0
\processador|arquitetura|memReg|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~142_combout\ = ( !\processador|fetch|ROM|memROM~25_combout\ & ( (\processador|fetch|ROM|memROM~23_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ 
-- & \processador|fetch|ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|arquitetura|memReg|registrador~142_combout\);

-- Location: FF_X50_Y20_N14
\processador|arquitetura|memReg|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~60_q\);

-- Location: LABCELL_X52_Y20_N24
\processador|arquitetura|memReg|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~143_combout\ = ( \processador|fetch|ROM|memROM~25_combout\ & ( (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ 
-- & !\processador|fetch|ROM|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|arquitetura|memReg|registrador~143_combout\);

-- Location: FF_X47_Y20_N25
\processador|arquitetura|memReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~20_q\);

-- Location: LABCELL_X52_Y20_N45
\processador|arquitetura|memReg|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~146_combout\ = ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ & 
-- !\processador|UC|habilitaResgistrador~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~146_combout\);

-- Location: FF_X47_Y20_N49
\processador|arquitetura|memReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[0]~7_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~28_q\);

-- Location: LABCELL_X52_Y20_N27
\processador|arquitetura|memReg|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~144_combout\ = ( \processador|fetch|ROM|memROM~25_combout\ & ( (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ 
-- & \processador|fetch|ROM|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	combout => \processador|arquitetura|memReg|registrador~144_combout\);

-- Location: FF_X50_Y20_N20
\processador|arquitetura|memReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~36_q\);

-- Location: MLABCELL_X49_Y21_N51
\processador|arquitetura|memReg|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~145_combout\ = ( !\processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & (!\processador|UC|habilitaResgistrador~1_combout\ & (!\processador|UC|habilitaResgistrador~0_combout\ 
-- & !\processador|fetch|ROM|memROM~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|UC|ALT_INV_habilitaResgistrador~1_combout\,
	datac => \processador|UC|ALT_INV_habilitaResgistrador~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|arquitetura|memReg|registrador~145_combout\);

-- Location: FF_X49_Y20_N34
\processador|arquitetura|memReg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[0]~7_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~12_q\);

-- Location: LABCELL_X50_Y20_N18
\processador|arquitetura|memReg|registrador~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~108_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~12_q\ & 
-- (!\processador|fetch|ROM|memROM~19_combout\))))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|fetch|ROM|memROM~19_combout\))) # (\processador|arquitetura|memReg|registrador~20_q\))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~28_q\ & (!\processador|fetch|ROM|memROM~19_combout\))))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~36_q\) # 
-- (\processador|fetch|ROM|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~20_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~28_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~36_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~12_q\,
	combout => \processador|arquitetura|memReg|registrador~108_combout\);

-- Location: LABCELL_X50_Y20_N12
\processador|arquitetura|memReg|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~76_combout\ = ( \processador|arquitetura|memReg|registrador~60_q\ & ( \processador|arquitetura|memReg|registrador~108_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((\processador|arquitetura|memReg|registrador~52_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~60_q\ & ( \processador|arquitetura|memReg|registrador~108_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~52_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~60_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~108_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|fetch|ROM|memROM~23_combout\) # (\processador|arquitetura|memReg|registrador~44_q\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~60_q\ & ( !\processador|arquitetura|memReg|registrador~108_combout\ & ( (\processador|arquitetura|memReg|registrador~44_q\ & (!\processador|fetch|ROM|memROM~23_combout\ & 
-- \processador|fetch|ROM|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011111111111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~52_q\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~44_q\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~60_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~108_combout\,
	combout => \processador|arquitetura|memReg|registrador~76_combout\);

-- Location: LABCELL_X48_Y20_N36
\processador|arquitetura|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~1_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~26_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~80_combout\ ) + ( \processador|arquitetura|ULA|Add0~6\ ))
-- \processador|arquitetura|ULA|Add0~2\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~26_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~80_combout\ ) + ( \processador|arquitetura|ULA|Add0~6\ ))

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
	datad => \processador|fetch|ROM|ALT_INV_memROM~26_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	cin => \processador|arquitetura|ULA|Add0~6\,
	sumout => \processador|arquitetura|ULA|Add0~1_sumout\,
	cout => \processador|arquitetura|ULA|Add0~2\);

-- Location: LABCELL_X47_Y20_N12
\processador|arquitetura|ULA|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[1]~0_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~1_sumout\)))) # (\processador|UC|operacao\(1) & 
-- (((!\processador|UC|operacao\(0))) # (\processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|UC|operacao\(1) & (((\processador|arquitetura|ULA|Add0~1_sumout\)))) # 
-- (\processador|UC|operacao\(1) & (\processador|arquitetura|muxInstRAM|saida_MUX[1]~0_combout\ & ((\processador|UC|operacao\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|muxInstRAM|ALT_INV_saida_MUX[1]~0_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_Add0~1_sumout\,
	datac => \processador|UC|ALT_INV_operacao\(1),
	datad => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \processador|arquitetura|ULA|saida[1]~0_combout\);

-- Location: FF_X49_Y20_N52
\processador|arquitetura|memReg|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~53_q\);

-- Location: MLABCELL_X45_Y20_N48
\processador|arquitetura|memReg|registrador~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~45feeder_combout\ = \processador|arquitetura|ULA|saida[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_saida[1]~0_combout\,
	combout => \processador|arquitetura|memReg|registrador~45feeder_combout\);

-- Location: FF_X45_Y20_N50
\processador|arquitetura|memReg|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~45feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~45_q\);

-- Location: FF_X49_Y20_N38
\processador|arquitetura|memReg|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~61_q\);

-- Location: FF_X50_Y19_N5
\processador|arquitetura|memReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~37_q\);

-- Location: FF_X47_Y20_N10
\processador|arquitetura|memReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~29_q\);

-- Location: FF_X47_Y20_N44
\processador|arquitetura|memReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[1]~0_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~21_q\);

-- Location: LABCELL_X47_Y19_N24
\processador|arquitetura|memReg|registrador~13feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~13feeder_combout\ = \processador|arquitetura|ULA|saida[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_saida[1]~0_combout\,
	combout => \processador|arquitetura|memReg|registrador~13feeder_combout\);

-- Location: FF_X47_Y19_N26
\processador|arquitetura|memReg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~13feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~13_q\);

-- Location: LABCELL_X50_Y19_N12
\processador|arquitetura|memReg|registrador~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~112_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~13_q\ & 
-- ((!\processador|fetch|ROM|memROM~19_combout\)))) # (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|fetch|ROM|memROM~19_combout\) # (\processador|arquitetura|memReg|registrador~21_q\))))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~29_q\ & ((!\processador|fetch|ROM|memROM~19_combout\)))))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|fetch|ROM|memROM~19_combout\))) # 
-- (\processador|arquitetura|memReg|registrador~37_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~37_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~29_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~21_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~13_q\,
	combout => \processador|arquitetura|memReg|registrador~112_combout\);

-- Location: MLABCELL_X49_Y20_N36
\processador|arquitetura|memReg|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~80_combout\ = ( \processador|arquitetura|memReg|registrador~61_q\ & ( \processador|arquitetura|memReg|registrador~112_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((\processador|arquitetura|memReg|registrador~53_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~61_q\ & ( \processador|arquitetura|memReg|registrador~112_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~53_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~61_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~112_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~45_q\) # (\processador|fetch|ROM|memROM~23_combout\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~61_q\ & ( !\processador|arquitetura|memReg|registrador~112_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & (\processador|fetch|ROM|memROM~19_combout\ & 
-- \processador|arquitetura|memReg|registrador~45_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000110000111111110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~53_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~45_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~61_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~112_combout\,
	combout => \processador|arquitetura|memReg|registrador~80_combout\);

-- Location: LABCELL_X48_Y20_N39
\processador|arquitetura|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~17_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~29_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~84_combout\ ) + ( \processador|arquitetura|ULA|Add0~2\ ))
-- \processador|arquitetura|ULA|Add0~18\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~29_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~84_combout\ ) + ( \processador|arquitetura|ULA|Add0~2\ ))

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
	datad => \processador|fetch|ROM|ALT_INV_memROM~29_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	cin => \processador|arquitetura|ULA|Add0~2\,
	sumout => \processador|arquitetura|ULA|Add0~17_sumout\,
	cout => \processador|arquitetura|ULA|Add0~18\);

-- Location: LABCELL_X48_Y20_N42
\processador|arquitetura|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~21_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~12_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~88_combout\ ) + ( \processador|arquitetura|ULA|Add0~18\ ))
-- \processador|arquitetura|ULA|Add0~22\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~12_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~88_combout\ ) + ( \processador|arquitetura|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	cin => \processador|arquitetura|ULA|Add0~18\,
	sumout => \processador|arquitetura|ULA|Add0~21_sumout\,
	cout => \processador|arquitetura|ULA|Add0~22\);

-- Location: LABCELL_X47_Y20_N51
\processador|arquitetura|ULA|saida[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[3]~9_combout\ = ( \processador|arquitetura|ULA|saida[3]~4_combout\ ) # ( !\processador|arquitetura|ULA|saida[3]~4_combout\ & ( (!\processador|UC|operacao\(1) & \processador|arquitetura|ULA|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[3]~4_combout\,
	combout => \processador|arquitetura|ULA|saida[3]~9_combout\);

-- Location: FF_X47_Y20_N53
\processador|arquitetura|memReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[3]~9_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~31_q\);

-- Location: FF_X47_Y20_N22
\processador|arquitetura|memReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~23_q\);

-- Location: FF_X50_Y19_N26
\processador|arquitetura|memReg|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~39_q\);

-- Location: LABCELL_X47_Y19_N6
\processador|arquitetura|memReg|registrador~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~15feeder_combout\ = ( \processador|arquitetura|ULA|saida[3]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[3]~9_combout\,
	combout => \processador|arquitetura|memReg|registrador~15feeder_combout\);

-- Location: FF_X47_Y19_N8
\processador|arquitetura|memReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~15feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~15_q\);

-- Location: LABCELL_X50_Y19_N24
\processador|arquitetura|memReg|registrador~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~120_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~15_q\)) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~23_q\)))))) # (\processador|fetch|ROM|memROM~19_combout\ & (\processador|fetch|ROM|memROM~25_combout\)) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~31_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~39_q\)))))) # 
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
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~31_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~23_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~39_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~15_q\,
	combout => \processador|arquitetura|memReg|registrador~120_combout\);

-- Location: FF_X48_Y19_N1
\processador|arquitetura|memReg|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~63_q\);

-- Location: FF_X49_Y20_N43
\processador|arquitetura|memReg|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~55_q\);

-- Location: FF_X50_Y19_N32
\processador|arquitetura|memReg|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[3]~9_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~47_q\);

-- Location: LABCELL_X50_Y19_N30
\processador|arquitetura|memReg|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~88_combout\ = ( \processador|arquitetura|memReg|registrador~47_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~120_combout\ & 
-- ((!\processador|fetch|ROM|memROM~23_combout\) # ((\processador|arquitetura|memReg|registrador~63_q\)))) # (\processador|arquitetura|memReg|registrador~120_combout\ & (!\processador|fetch|ROM|memROM~23_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~55_q\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~47_q\ & ( \processador|fetch|ROM|memROM~19_combout\ & ( (!\processador|arquitetura|memReg|registrador~120_combout\ & 
-- (\processador|fetch|ROM|memROM~23_combout\ & (\processador|arquitetura|memReg|registrador~63_q\))) # (\processador|arquitetura|memReg|registrador~120_combout\ & (!\processador|fetch|ROM|memROM~23_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~55_q\)))) ) ) ) # ( \processador|arquitetura|memReg|registrador~47_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~120_combout\ ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~47_q\ & ( !\processador|fetch|ROM|memROM~19_combout\ & ( \processador|arquitetura|memReg|registrador~120_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000010010001101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~120_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~63_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~55_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~47_q\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	combout => \processador|arquitetura|memReg|registrador~88_combout\);

-- Location: LABCELL_X48_Y19_N15
\processador|arquitetura|ULA|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[3]~4_combout\ = ( \processador|arquitetura|memReg|registrador~88_combout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0)) # ((\processador|fetch|ROM|memROM~16_combout\ & 
-- !\processador|UC|Equal7~0_combout\)))) ) ) # ( !\processador|arquitetura|memReg|registrador~88_combout\ & ( (\processador|fetch|ROM|memROM~16_combout\ & (!\processador|UC|Equal7~0_combout\ & (\processador|UC|operacao\(1) & \processador|UC|operacao\(0)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001111000001000000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~16_combout\,
	datab => \processador|UC|ALT_INV_Equal7~0_combout\,
	datac => \processador|UC|ALT_INV_operacao\(1),
	datad => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	combout => \processador|arquitetura|ULA|saida[3]~4_combout\);

-- Location: LABCELL_X47_Y20_N54
\processador|arquitetura|ULA|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[2]~3_combout\ = ( \processador|arquitetura|memReg|registrador~84_combout\ & ( (\processador|UC|operacao\(1) & ((!\processador|UC|operacao\(0)) # ((\processador|fetch|ROM|memROM~15_combout\ & 
-- !\processador|UC|Equal7~0_combout\)))) ) ) # ( !\processador|arquitetura|memReg|registrador~84_combout\ & ( (\processador|UC|operacao\(1) & (\processador|fetch|ROM|memROM~15_combout\ & (!\processador|UC|Equal7~0_combout\ & \processador|UC|operacao\(0)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000001010101000100000101010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datab => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	combout => \processador|arquitetura|ULA|saida[2]~3_combout\);

-- Location: LABCELL_X47_Y20_N27
\processador|arquitetura|flag|flipFlop|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~3_combout\ = ( \processador|UC|operacao\(1) & ( (!\processador|arquitetura|ULA|saida[3]~4_combout\ & !\processador|arquitetura|ULA|saida[2]~3_combout\) ) ) # ( !\processador|UC|operacao\(1) & ( 
-- (!\processador|arquitetura|ULA|saida[3]~4_combout\ & (!\processador|arquitetura|ULA|Add0~21_sumout\ & (!\processador|arquitetura|ULA|saida[2]~3_combout\ & !\processador|arquitetura|ULA|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_saida[3]~4_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_Add0~21_sumout\,
	datac => \processador|arquitetura|ULA|ALT_INV_saida[2]~3_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\,
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|flag|flipFlop|DOUT~3_combout\);

-- Location: MLABCELL_X49_Y19_N24
\processador|fetch|ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~27_combout\ = (\processador|fetch|ROM|memROM~5_combout\ & \processador|fetch|ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	combout => \processador|fetch|ROM|memROM~27_combout\);

-- Location: LABCELL_X48_Y20_N45
\processador|arquitetura|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~9_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~92_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & 
-- \processador|fetch|ROM|memROM~27_combout\)))) ) + ( \processador|arquitetura|ULA|Add0~22\ ))
-- \processador|arquitetura|ULA|Add0~10\ = CARRY(( \processador|arquitetura|memReg|registrador~92_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & 
-- \processador|fetch|ROM|memROM~27_combout\)))) ) + ( \processador|arquitetura|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~92_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~27_combout\,
	cin => \processador|arquitetura|ULA|Add0~22\,
	sumout => \processador|arquitetura|ULA|Add0~9_sumout\,
	cout => \processador|arquitetura|ULA|Add0~10\);

-- Location: LABCELL_X52_Y20_N3
\processador|arquitetura|ULA|saida[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[4]~10_combout\ = ( \processador|arquitetura|ULA|saida[4]~1_combout\ ) # ( !\processador|arquitetura|ULA|saida[4]~1_combout\ & ( (\processador|arquitetura|ULA|Add0~9_sumout\ & !\processador|UC|operacao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[4]~1_combout\,
	combout => \processador|arquitetura|ULA|saida[4]~10_combout\);

-- Location: FF_X52_Y20_N53
\processador|arquitetura|memReg|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~56_q\);

-- Location: FF_X53_Y20_N2
\processador|arquitetura|memReg|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~48_q\);

-- Location: FF_X52_Y20_N8
\processador|arquitetura|memReg|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~64_q\);

-- Location: FF_X52_Y19_N53
\processador|arquitetura|memReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~24_q\);

-- Location: FF_X52_Y20_N4
\processador|arquitetura|memReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[4]~10_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~32_q\);

-- Location: FF_X53_Y20_N32
\processador|arquitetura|memReg|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~40_q\);

-- Location: FF_X53_Y20_N43
\processador|arquitetura|memReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[4]~10_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~16_q\);

-- Location: LABCELL_X53_Y20_N30
\processador|arquitetura|memReg|registrador~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~124_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & 
-- (((\processador|arquitetura|memReg|registrador~16_q\)))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~24_q\)))) # (\processador|fetch|ROM|memROM~19_combout\ & 
-- ((((\processador|fetch|ROM|memROM~25_combout\))))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~32_q\)) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & ((\processador|arquitetura|memReg|registrador~40_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001110111000011000011001100001100011101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~24_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~32_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~40_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~16_q\,
	combout => \processador|arquitetura|memReg|registrador~124_combout\);

-- Location: LABCELL_X52_Y20_N6
\processador|arquitetura|memReg|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~92_combout\ = ( \processador|arquitetura|memReg|registrador~64_q\ & ( \processador|arquitetura|memReg|registrador~124_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((\processador|arquitetura|memReg|registrador~56_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~64_q\ & ( \processador|arquitetura|memReg|registrador~124_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~56_q\ & !\processador|fetch|ROM|memROM~23_combout\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~64_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~124_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|arquitetura|memReg|registrador~48_q\) # (\processador|fetch|ROM|memROM~23_combout\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~64_q\ & ( !\processador|arquitetura|memReg|registrador~124_combout\ & ( (!\processador|fetch|ROM|memROM~23_combout\ & (\processador|arquitetura|memReg|registrador~48_q\ & 
-- \processador|fetch|ROM|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000011111111111111010001001111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~56_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~48_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~64_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~124_combout\,
	combout => \processador|arquitetura|memReg|registrador~92_combout\);

-- Location: LABCELL_X52_Y20_N48
\processador|arquitetura|ULA|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[4]~1_combout\ = ( \processador|UC|operacao\(1) & ( (!\processador|UC|operacao\(0) & (((\processador|arquitetura|memReg|registrador~92_combout\)))) # (\processador|UC|operacao\(0) & 
-- (\processador|fetch|ROM|memROM~17_combout\ & ((!\processador|UC|Equal7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110101000000000000000000000011001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~17_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~92_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|UC|ALT_INV_operacao\(0),
	datae => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|ULA|saida[4]~1_combout\);

-- Location: LABCELL_X52_Y20_N12
\processador|fetch|ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~28_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( \processador|fetch|ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	combout => \processador|fetch|ROM|memROM~28_combout\);

-- Location: LABCELL_X48_Y20_N48
\processador|arquitetura|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~13_sumout\ = SUM(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~28_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~96_combout\ ) + ( \processador|arquitetura|ULA|Add0~10\ ))
-- \processador|arquitetura|ULA|Add0~14\ = CARRY(( !\processador|arquitetura|ULA|Equal7~0_combout\ $ (((!\processador|fetch|registerPC|DOUT\(9) & (!\processador|UC|Equal7~0_combout\ & \processador|fetch|ROM|memROM~28_combout\)))) ) + ( 
-- \processador|arquitetura|memReg|registrador~96_combout\ ) + ( \processador|arquitetura|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|UC|ALT_INV_Equal7~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~28_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~96_combout\,
	cin => \processador|arquitetura|ULA|Add0~10\,
	sumout => \processador|arquitetura|ULA|Add0~13_sumout\,
	cout => \processador|arquitetura|ULA|Add0~14\);

-- Location: MLABCELL_X49_Y21_N21
\processador|arquitetura|ULA|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[5]~11_combout\ = ( \processador|arquitetura|ULA|saida[5]~2_combout\ ) # ( !\processador|arquitetura|ULA|saida[5]~2_combout\ & ( (\processador|arquitetura|ULA|Add0~13_sumout\ & !\processador|UC|operacao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[5]~2_combout\,
	combout => \processador|arquitetura|ULA|saida[5]~11_combout\);

-- Location: FF_X49_Y21_N29
\processador|arquitetura|memReg|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~49_q\);

-- Location: LABCELL_X48_Y21_N18
\processador|arquitetura|memReg|registrador~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~65feeder_combout\ = ( \processador|arquitetura|ULA|saida[5]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[5]~11_combout\,
	combout => \processador|arquitetura|memReg|registrador~65feeder_combout\);

-- Location: FF_X48_Y21_N19
\processador|arquitetura|memReg|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~65feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~65_q\);

-- Location: LABCELL_X48_Y21_N39
\processador|arquitetura|memReg|registrador~57feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~57feeder_combout\ = ( \processador|arquitetura|ULA|saida[5]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[5]~11_combout\,
	combout => \processador|arquitetura|memReg|registrador~57feeder_combout\);

-- Location: FF_X48_Y21_N40
\processador|arquitetura|memReg|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~57feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~57_q\);

-- Location: LABCELL_X48_Y21_N3
\processador|arquitetura|memReg|registrador~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~25feeder_combout\ = ( \processador|arquitetura|ULA|saida[5]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[5]~11_combout\,
	combout => \processador|arquitetura|memReg|registrador~25feeder_combout\);

-- Location: FF_X48_Y21_N4
\processador|arquitetura|memReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~25feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~25_q\);

-- Location: FF_X49_Y21_N23
\processador|arquitetura|memReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[5]~11_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~33_q\);

-- Location: FF_X50_Y21_N2
\processador|arquitetura|memReg|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~41_q\);

-- Location: FF_X49_Y21_N58
\processador|arquitetura|memReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[5]~11_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~17_q\);

-- Location: MLABCELL_X49_Y21_N57
\processador|arquitetura|memReg|registrador~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~128_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & (((!\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~17_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~25_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & ((((\processador|fetch|ROM|memROM~25_combout\))))) 
-- ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( ((!\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~25_combout\ & (\processador|arquitetura|memReg|registrador~33_q\)) # (\processador|fetch|ROM|memROM~25_combout\ & 
-- ((\processador|arquitetura|memReg|registrador~41_q\))))) # (\processador|fetch|ROM|memROM~19_combout\ & (((\processador|fetch|ROM|memROM~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~25_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~33_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~41_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~17_q\,
	combout => \processador|arquitetura|memReg|registrador~128_combout\);

-- Location: MLABCELL_X49_Y21_N24
\processador|arquitetura|memReg|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~96_combout\ = ( \processador|arquitetura|memReg|registrador~128_combout\ & ( \processador|fetch|ROM|memROM~23_combout\ & ( !\processador|fetch|ROM|memROM~19_combout\ ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~128_combout\ & ( \processador|fetch|ROM|memROM~23_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & \processador|arquitetura|memReg|registrador~65_q\) ) ) ) # ( 
-- \processador|arquitetura|memReg|registrador~128_combout\ & ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # (\processador|arquitetura|memReg|registrador~57_q\) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~128_combout\ & ( !\processador|fetch|ROM|memROM~23_combout\ & ( (\processador|arquitetura|memReg|registrador~49_q\ & \processador|fetch|ROM|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110011001111111100000011000000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~49_q\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~65_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~57_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~128_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	combout => \processador|arquitetura|memReg|registrador~96_combout\);

-- Location: LABCELL_X48_Y21_N54
\processador|arquitetura|ULA|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[5]~2_combout\ = ( \processador|UC|operacao\(0) & ( \processador|fetch|ROM|memROM~7_combout\ & ( (!\processador|UC|Equal7~0_combout\ & \processador|UC|operacao\(1)) ) ) ) # ( !\processador|UC|operacao\(0) & ( 
-- \processador|fetch|ROM|memROM~7_combout\ & ( (\processador|arquitetura|memReg|registrador~96_combout\ & \processador|UC|operacao\(1)) ) ) ) # ( !\processador|UC|operacao\(0) & ( !\processador|fetch|ROM|memROM~7_combout\ & ( 
-- (\processador|arquitetura|memReg|registrador~96_combout\ & \processador|UC|operacao\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000001100110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal7~0_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~96_combout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	datae => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~7_combout\,
	combout => \processador|arquitetura|ULA|saida[5]~2_combout\);

-- Location: LABCELL_X47_Y20_N6
\processador|arquitetura|flag|flipFlop|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~2_combout\ = ( \processador|UC|operacao\(1) & ( (!\processador|arquitetura|ULA|saida[4]~1_combout\ & !\processador|arquitetura|ULA|saida[5]~2_combout\) ) ) # ( !\processador|UC|operacao\(1) & ( 
-- (!\processador|arquitetura|ULA|saida[4]~1_combout\ & (!\processador|arquitetura|ULA|saida[5]~2_combout\ & (!\processador|arquitetura|ULA|Add0~9_sumout\ & !\processador|arquitetura|ULA|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|ULA|ALT_INV_saida[4]~1_combout\,
	datab => \processador|arquitetura|ULA|ALT_INV_saida[5]~2_combout\,
	datac => \processador|arquitetura|ULA|ALT_INV_Add0~9_sumout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|flag|flipFlop|DOUT~2_combout\);

-- Location: LABCELL_X48_Y20_N51
\processador|arquitetura|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~25_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~100_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~14\ ))
-- \processador|arquitetura|ULA|Add0~26\ = CARRY(( \processador|arquitetura|memReg|registrador~100_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~100_combout\,
	cin => \processador|arquitetura|ULA|Add0~14\,
	sumout => \processador|arquitetura|ULA|Add0~25_sumout\,
	cout => \processador|arquitetura|ULA|Add0~26\);

-- Location: LABCELL_X52_Y20_N21
\processador|arquitetura|ULA|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[6]~12_combout\ = ( \processador|arquitetura|ULA|Add0~25_sumout\ & ( (!\processador|UC|operacao\(1)) # (\processador|arquitetura|ULA|saida[6]~5_combout\) ) ) # ( !\processador|arquitetura|ULA|Add0~25_sumout\ & ( 
-- \processador|arquitetura|ULA|saida[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_saida[6]~5_combout\,
	datac => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|arquitetura|ULA|saida[6]~12_combout\);

-- Location: FF_X53_Y20_N10
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

-- Location: FF_X52_Y20_N17
\processador|arquitetura|memReg|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[6]~12_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~58_q\);

-- Location: FF_X52_Y20_N32
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

-- Location: FF_X52_Y20_N23
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

-- Location: FF_X53_Y20_N26
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

-- Location: FF_X47_Y20_N40
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

-- Location: FF_X53_Y20_N52
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

-- Location: LABCELL_X53_Y20_N24
\processador|arquitetura|memReg|registrador~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~132_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~18_q\))) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~26_q\))) # (\processador|fetch|ROM|memROM~19_combout\))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & 
-- (!\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~34_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~42_q\))) # (\processador|fetch|ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~34_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~42_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~26_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~18_q\,
	combout => \processador|arquitetura|memReg|registrador~132_combout\);

-- Location: LABCELL_X52_Y20_N30
\processador|arquitetura|memReg|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~100_combout\ = ( \processador|arquitetura|memReg|registrador~66_q\ & ( \processador|arquitetura|memReg|registrador~132_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~58_q\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~66_q\ & ( \processador|arquitetura|memReg|registrador~132_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~58_q\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~66_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~132_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((\processador|fetch|ROM|memROM~23_combout\) # (\processador|arquitetura|memReg|registrador~50_q\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~66_q\ & ( !\processador|arquitetura|memReg|registrador~132_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~50_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101010001010110101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~50_q\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~58_q\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~66_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~132_combout\,
	combout => \processador|arquitetura|memReg|registrador~100_combout\);

-- Location: LABCELL_X52_Y20_N42
\processador|arquitetura|ULA|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[6]~5_combout\ = ( !\processador|UC|operacao\(0) & ( (\processador|arquitetura|memReg|registrador~100_combout\ & \processador|UC|operacao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~100_combout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|arquitetura|ULA|saida[6]~5_combout\);

-- Location: LABCELL_X53_Y20_N15
\processador|arquitetura|ULA|saida[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[7]~6_combout\ = ( !\processador|UC|operacao\(0) & ( (\processador|arquitetura|memReg|registrador~104_combout\ & \processador|UC|operacao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~104_combout\,
	datac => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|UC|ALT_INV_operacao\(0),
	combout => \processador|arquitetura|ULA|saida[7]~6_combout\);

-- Location: LABCELL_X52_Y20_N57
\processador|arquitetura|ULA|saida[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[7]~13_combout\ = ( \processador|arquitetura|ULA|Add0~29_sumout\ & ( (!\processador|UC|operacao\(1)) # (\processador|arquitetura|ULA|saida[7]~6_combout\) ) ) # ( !\processador|arquitetura|ULA|Add0~29_sumout\ & ( 
-- \processador|arquitetura|ULA|saida[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|arquitetura|ULA|ALT_INV_saida[7]~6_combout\,
	datad => \processador|UC|ALT_INV_operacao\(1),
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\,
	combout => \processador|arquitetura|ULA|saida[7]~13_combout\);

-- Location: FF_X52_Y20_N38
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

-- Location: FF_X52_Y20_N13
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

-- Location: FF_X53_Y20_N38
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

-- Location: FF_X52_Y20_N58
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

-- Location: LABCELL_X47_Y20_N24
\processador|arquitetura|memReg|registrador~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~27feeder_combout\ = ( \processador|arquitetura|ULA|saida[7]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[7]~13_combout\,
	combout => \processador|arquitetura|memReg|registrador~27feeder_combout\);

-- Location: FF_X47_Y20_N26
\processador|arquitetura|memReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~27feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~27_q\);

-- Location: FF_X53_Y20_N20
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

-- Location: LABCELL_X53_Y20_N48
\processador|arquitetura|memReg|registrador~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~19feeder_combout\ = ( \processador|arquitetura|ULA|saida[7]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[7]~13_combout\,
	combout => \processador|arquitetura|memReg|registrador~19feeder_combout\);

-- Location: FF_X53_Y20_N50
\processador|arquitetura|memReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|memReg|registrador~19feeder_combout\,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~19_q\);

-- Location: LABCELL_X53_Y20_N18
\processador|arquitetura|memReg|registrador~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~136_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & (!\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~19_q\))) # 
-- (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~27_q\))) # (\processador|fetch|ROM|memROM~19_combout\))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & 
-- (!\processador|fetch|ROM|memROM~19_combout\ & (\processador|arquitetura|memReg|registrador~35_q\))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~43_q\))) # (\processador|fetch|ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100101011101000110010001100100011001010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~35_q\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~27_q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~43_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~19_q\,
	combout => \processador|arquitetura|memReg|registrador~136_combout\);

-- Location: LABCELL_X53_Y20_N36
\processador|arquitetura|memReg|registrador~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~104_combout\ = ( \processador|arquitetura|memReg|registrador~51_q\ & ( \processador|arquitetura|memReg|registrador~136_combout\ & ( (!\processador|fetch|ROM|memROM~19_combout\) # 
-- ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~59_q\)) ) ) ) # ( !\processador|arquitetura|memReg|registrador~51_q\ & ( \processador|arquitetura|memReg|registrador~136_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~19_combout\) # ((!\processador|fetch|ROM|memROM~23_combout\ & \processador|arquitetura|memReg|registrador~59_q\)) ) ) ) # ( \processador|arquitetura|memReg|registrador~51_q\ & ( 
-- !\processador|arquitetura|memReg|registrador~136_combout\ & ( (\processador|fetch|ROM|memROM~19_combout\ & ((!\processador|fetch|ROM|memROM~23_combout\) # (\processador|arquitetura|memReg|registrador~67_q\))) ) ) ) # ( 
-- !\processador|arquitetura|memReg|registrador~51_q\ & ( !\processador|arquitetura|memReg|registrador~136_combout\ & ( (\processador|fetch|ROM|memROM~23_combout\ & (\processador|arquitetura|memReg|registrador~67_q\ & 
-- \processador|fetch|ROM|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000001011101111111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~67_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~59_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~51_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~136_combout\,
	combout => \processador|arquitetura|memReg|registrador~104_combout\);

-- Location: LABCELL_X48_Y20_N54
\processador|arquitetura|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|Add0~29_sumout\ = SUM(( \processador|arquitetura|memReg|registrador~104_combout\ ) + ( !\processador|arquitetura|ULA|Equal7~0_combout\ ) + ( \processador|arquitetura|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|ULA|ALT_INV_Equal7~0_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~104_combout\,
	cin => \processador|arquitetura|ULA|Add0~26\,
	sumout => \processador|arquitetura|ULA|Add0~29_sumout\);

-- Location: LABCELL_X47_Y20_N36
\processador|arquitetura|flag|flipFlop|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~4_combout\ = ( !\processador|arquitetura|ULA|saida[7]~6_combout\ & ( \processador|arquitetura|ULA|Add0~25_sumout\ & ( (\processador|UC|operacao\(1) & !\processador|arquitetura|ULA|saida[6]~5_combout\) ) ) ) # ( 
-- !\processador|arquitetura|ULA|saida[7]~6_combout\ & ( !\processador|arquitetura|ULA|Add0~25_sumout\ & ( (!\processador|arquitetura|ULA|saida[6]~5_combout\ & ((!\processador|arquitetura|ULA|Add0~29_sumout\) # (\processador|UC|operacao\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_saida[6]~5_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~29_sumout\,
	datae => \processador|arquitetura|ULA|ALT_INV_saida[7]~6_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~4_combout\);

-- Location: LABCELL_X47_Y20_N45
\processador|arquitetura|ULA|saida[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[0]~14_combout\ = ( \processador|UC|operacao\(0) & ( \processador|UC|operacao\(1) & ( (!\processador|UC|Equal7~0_combout\ & ((\processador|fetch|ROM|memROM~9_combout\))) # (\processador|UC|Equal7~0_combout\ & 
-- (\out_dataRAM[0]~10_combout\)) ) ) ) # ( !\processador|UC|operacao\(0) & ( \processador|UC|operacao\(1) & ( \processador|arquitetura|memReg|registrador~76_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \ALT_INV_out_dataRAM[0]~10_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datad => \processador|UC|ALT_INV_Equal7~0_combout\,
	datae => \processador|UC|ALT_INV_operacao\(0),
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|arquitetura|ULA|saida[0]~14_combout\);

-- Location: LABCELL_X48_Y19_N42
\processador|UC|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~2_combout\ = ( !\processador|fetch|ROM|memROM~1_combout\ & ( (!\processador|fetch|ROM|memROM~4_combout\ & (!\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~2_combout\ & 
-- \processador|fetch|ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|UC|Equal7~2_combout\);

-- Location: LABCELL_X47_Y20_N57
\processador|arquitetura|flag|flipFlop|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~1_combout\ = ( \processador|UC|Equal7~2_combout\ & ( (!\processador|arquitetura|ULA|saida[0]~14_combout\ & ((!\processador|arquitetura|ULA|Add0~5_sumout\) # (\processador|UC|operacao\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_operacao\(1),
	datac => \processador|arquitetura|ULA|ALT_INV_saida[0]~14_combout\,
	datad => \processador|arquitetura|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \processador|UC|ALT_INV_Equal7~2_combout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~1_combout\);

-- Location: LABCELL_X47_Y20_N9
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

-- Location: LABCELL_X47_Y20_N0
\processador|arquitetura|flag|flipFlop|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|flag|flipFlop|DOUT~5_combout\ = ( \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ & ( \processador|arquitetura|ULA|saida[1]~0_combout\ ) ) # ( \processador|arquitetura|flag|flipFlop|DOUT~0_combout\ & ( 
-- !\processador|arquitetura|ULA|saida[1]~0_combout\ ) ) # ( !\processador|arquitetura|flag|flipFlop|DOUT~0_combout\ & ( !\processador|arquitetura|ULA|saida[1]~0_combout\ & ( (\processador|arquitetura|flag|flipFlop|DOUT~3_combout\ & 
-- (\processador|arquitetura|flag|flipFlop|DOUT~2_combout\ & (\processador|arquitetura|flag|flipFlop|DOUT~4_combout\ & \processador|arquitetura|flag|flipFlop|DOUT~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~3_combout\,
	datab => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~2_combout\,
	datac => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~4_combout\,
	datad => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~1_combout\,
	datae => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~0_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_saida[1]~0_combout\,
	combout => \processador|arquitetura|flag|flipFlop|DOUT~5_combout\);

-- Location: FF_X47_Y20_N2
\processador|arquitetura|flag|flipFlop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|flag|flipFlop|DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|flag|flipFlop|DOUT~q\);

-- Location: LABCELL_X48_Y19_N3
\processador|UC|sel_muxJump~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|sel_muxJump~0_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~3_combout\ & ( (\processador|fetch|ROM|memROM~2_combout\ & (!\processador|fetch|ROM|memROM~1_combout\ & 
-- !\processador|fetch|ROM|memROM~4_combout\)) ) ) ) # ( \processador|fetch|ROM|memROM~0_combout\ & ( !\processador|fetch|ROM|memROM~3_combout\ & ( (!\processador|fetch|ROM|memROM~2_combout\ & (!\processador|fetch|ROM|memROM~1_combout\ & 
-- (!\processador|fetch|ROM|memROM~4_combout\ & \processador|arquitetura|flag|flipFlop|DOUT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	datad => \processador|arquitetura|flag|flipFlop|ALT_INV_DOUT~q\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	combout => \processador|UC|sel_muxJump~0_combout\);

-- Location: FF_X53_Y19_N50
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

-- Location: LABCELL_X53_Y19_N51
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

-- Location: FF_X53_Y19_N53
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

-- Location: LABCELL_X53_Y19_N54
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

-- Location: FF_X53_Y19_N56
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

-- Location: LABCELL_X53_Y19_N57
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

-- Location: FF_X53_Y19_N59
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

-- Location: MLABCELL_X49_Y19_N21
\processador|fetch|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~7_combout\ = ( \processador|fetch|ROM|memROM~5_combout\ & ( (\processador|fetch|ROM|memROM~6_combout\ & !\processador|fetch|registerPC|DOUT\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	dataf => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	combout => \processador|fetch|ROM|memROM~7_combout\);

-- Location: FF_X53_Y19_N47
\processador|fetch|registerPC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~21_sumout\,
	asdata => \processador|fetch|ROM|memROM~7_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(5));

-- Location: LABCELL_X52_Y19_N12
\processador|fetch|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~8_combout\ = ( \processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(2) $ 
-- (((!\processador|fetch|registerPC|DOUT\(1) & \processador|fetch|registerPC|DOUT\(3)))))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(1) & 
-- !\processador|fetch|registerPC|DOUT\(3)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(3) & 
-- ((!\processador|fetch|registerPC|DOUT\(5)) # (!\processador|fetch|registerPC|DOUT\(1))))) # (\processador|fetch|registerPC|DOUT\(2) & ((!\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(5) & 
-- \processador|fetch|registerPC|DOUT\(3))) # (\processador|fetch|registerPC|DOUT\(1) & ((!\processador|fetch|registerPC|DOUT\(3)))))) ) ) ) # ( \processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(0) & ( 
-- (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) $ (!\processador|fetch|registerPC|DOUT\(3))))) # (\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(1) & !\processador|fetch|registerPC|DOUT\(3)))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(0) & ( (!\processador|fetch|registerPC|DOUT\(5) & 
-- (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(1) & \processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(2) & 
-- ((!\processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100100001000011101010000000000011111010001000110000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	combout => \processador|fetch|ROM|memROM~8_combout\);

-- Location: LABCELL_X52_Y19_N18
\processador|fetch|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~9_combout\ = ( \processador|fetch|ROM|memROM~0_combout\ & ( \processador|fetch|ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|fetch|ROM|ALT_INV_memROM~8_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	combout => \processador|fetch|ROM|memROM~9_combout\);

-- Location: FF_X50_Y19_N47
\processador|fetch|registerPC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|registerPC|DOUT[0]~feeder_combout\,
	asdata => \processador|fetch|ROM|memROM~9_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(0));

-- Location: LABCELL_X53_Y19_N33
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

-- Location: FF_X53_Y19_N35
\processador|fetch|registerPC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~5_sumout\,
	asdata => \processador|fetch|ROM|memROM~11_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(1));

-- Location: LABCELL_X53_Y19_N36
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

-- Location: FF_X53_Y19_N38
\processador|fetch|registerPC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~9_sumout\,
	asdata => \processador|fetch|ROM|memROM~15_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(2));

-- Location: LABCELL_X53_Y19_N39
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

-- Location: FF_X53_Y19_N41
\processador|fetch|registerPC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~13_sumout\,
	asdata => \processador|fetch|ROM|memROM~16_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(3));

-- Location: FF_X53_Y19_N44
\processador|fetch|registerPC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|fetch|somPC|Add0~17_sumout\,
	asdata => \processador|fetch|ROM|memROM~17_combout\,
	sload => \processador|UC|sel_muxJump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|fetch|registerPC|DOUT\(4));

-- Location: MLABCELL_X49_Y19_N30
\processador|fetch|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~3_combout\ = ( \processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(2) $ 
-- (((\processador|fetch|registerPC|DOUT\(4) & !\processador|fetch|registerPC|DOUT\(0)))))) # (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) & ((!\processador|fetch|registerPC|DOUT\(0)) # 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(1) & ( \processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(2) & 
-- (\processador|fetch|registerPC|DOUT\(0) & \processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(2) & (!\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(3)))) 
-- ) ) ) # ( \processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (!\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(4) & (\processador|fetch|registerPC|DOUT\(0) & 
-- !\processador|fetch|registerPC|DOUT\(3)))) # (\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(3) & (!\processador|fetch|registerPC|DOUT\(4) $ (!\processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(1) & ( !\processador|fetch|registerPC|DOUT\(5) & ( (\processador|fetch|registerPC|DOUT\(4) & (!\processador|fetch|registerPC|DOUT\(3) $ (((!\processador|fetch|registerPC|DOUT\(2)) # 
-- (\processador|fetch|registerPC|DOUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000101000001000001001000010000000010001001110010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	combout => \processador|fetch|ROM|memROM~3_combout\);

-- Location: LABCELL_X48_Y19_N24
\processador|UC|operacao[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao[1]~0_combout\ = ( \processador|fetch|ROM|memROM~2_combout\ & ( (\processador|fetch|ROM|memROM~0_combout\ & (!\processador|fetch|ROM|memROM~3_combout\ $ (((!\processador|fetch|ROM|memROM~1_combout\ & 
-- \processador|fetch|ROM|memROM~4_combout\))))) ) ) # ( !\processador|fetch|ROM|memROM~2_combout\ & ( (\processador|fetch|ROM|memROM~0_combout\ & ((!\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~1_combout\ & 
-- !\processador|fetch|ROM|memROM~4_combout\)) # (\processador|fetch|ROM|memROM~3_combout\ & (!\processador|fetch|ROM|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010000000100100001000000100010000100100010001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	combout => \processador|UC|operacao[1]~0_combout\);

-- Location: LABCELL_X53_Y20_N12
\processador|UC|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~1_combout\ = ( \processador|UC|operacao[2]~1_combout\ ) # ( !\processador|UC|operacao[2]~1_combout\ & ( \processador|UC|operacao[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao[1]~0_combout\,
	dataf => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	combout => \processador|UC|comb~1_combout\);

-- Location: LABCELL_X53_Y20_N57
\processador|UC|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|comb~0_combout\ = ( \processador|UC|operacao[1]~0_combout\ & ( !\processador|UC|operacao[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao[2]~1_combout\,
	dataf => \processador|UC|ALT_INV_operacao[1]~0_combout\,
	combout => \processador|UC|comb~0_combout\);

-- Location: LABCELL_X53_Y20_N6
\processador|UC|operacao[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|operacao\(1) = ( !\processador|UC|comb~0_combout\ & ( \processador|UC|operacao\(1) ) ) # ( !\processador|UC|comb~0_combout\ & ( !\processador|UC|operacao\(1) & ( !\processador|UC|comb~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_comb~1_combout\,
	datae => \processador|UC|ALT_INV_comb~0_combout\,
	dataf => \processador|UC|ALT_INV_operacao\(1),
	combout => \processador|UC|operacao\(1));

-- Location: LABCELL_X47_Y20_N30
\processador|arquitetura|ULA|saida[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|ULA|saida[2]~8_combout\ = ( \processador|arquitetura|ULA|Add0~17_sumout\ & ( (!\processador|UC|operacao\(1)) # (\processador|arquitetura|ULA|saida[2]~3_combout\) ) ) # ( !\processador|arquitetura|ULA|Add0~17_sumout\ & ( 
-- \processador|arquitetura|ULA|saida[2]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC|ALT_INV_operacao\(1),
	datad => \processador|arquitetura|ULA|ALT_INV_saida[2]~3_combout\,
	dataf => \processador|arquitetura|ULA|ALT_INV_Add0~17_sumout\,
	combout => \processador|arquitetura|ULA|saida[2]~8_combout\);

-- Location: FF_X49_Y20_N58
\processador|arquitetura|memReg|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~54_q\);

-- Location: FF_X47_Y20_N47
\processador|arquitetura|memReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~22_q\);

-- Location: FF_X47_Y20_N31
\processador|arquitetura|memReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|arquitetura|ULA|saida[2]~8_combout\,
	ena => \processador|arquitetura|memReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~30_q\);

-- Location: FF_X50_Y20_N25
\processador|arquitetura|memReg|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~38_q\);

-- Location: FF_X49_Y20_N22
\processador|arquitetura|memReg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~14_q\);

-- Location: LABCELL_X50_Y20_N24
\processador|arquitetura|memReg|registrador~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~116_combout\ = ( !\processador|fetch|ROM|memROM~23_combout\ & ( (!\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~14_q\ & 
-- (!\processador|fetch|ROM|memROM~19_combout\))))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|fetch|ROM|memROM~19_combout\))) # (\processador|arquitetura|memReg|registrador~22_q\))) ) ) # ( \processador|fetch|ROM|memROM~23_combout\ & ( 
-- (!\processador|fetch|ROM|memROM~25_combout\ & (((\processador|arquitetura|memReg|registrador~30_q\ & (!\processador|fetch|ROM|memROM~19_combout\))))) # (\processador|fetch|ROM|memROM~25_combout\ & ((((\processador|arquitetura|memReg|registrador~38_q\) # 
-- (\processador|fetch|ROM|memROM~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~25_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~22_q\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~30_q\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~38_q\,
	datag => \processador|arquitetura|memReg|ALT_INV_registrador~14_q\,
	combout => \processador|arquitetura|memReg|registrador~116_combout\);

-- Location: FF_X50_Y20_N38
\processador|arquitetura|memReg|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~46_q\);

-- Location: FF_X49_Y20_N41
\processador|arquitetura|memReg|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|arquitetura|ULA|saida[2]~8_combout\,
	sload => VCC,
	ena => \processador|arquitetura|memReg|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|arquitetura|memReg|registrador~62_q\);

-- Location: LABCELL_X50_Y20_N36
\processador|arquitetura|memReg|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|arquitetura|memReg|registrador~84_combout\ = ( \processador|arquitetura|memReg|registrador~46_q\ & ( \processador|arquitetura|memReg|registrador~62_q\ & ( (!\processador|arquitetura|memReg|registrador~116_combout\ & 
-- (((\processador|fetch|ROM|memROM~19_combout\)))) # (\processador|arquitetura|memReg|registrador~116_combout\ & ((!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~54_q\ & 
-- !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~46_q\ & ( \processador|arquitetura|memReg|registrador~62_q\ & ( (!\processador|arquitetura|memReg|registrador~116_combout\ & 
-- (((\processador|fetch|ROM|memROM~23_combout\ & \processador|fetch|ROM|memROM~19_combout\)))) # (\processador|arquitetura|memReg|registrador~116_combout\ & ((!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~54_q\ 
-- & !\processador|fetch|ROM|memROM~23_combout\)))) ) ) ) # ( \processador|arquitetura|memReg|registrador~46_q\ & ( !\processador|arquitetura|memReg|registrador~62_q\ & ( (!\processador|fetch|ROM|memROM~19_combout\ & 
-- (((\processador|arquitetura|memReg|registrador~116_combout\)))) # (\processador|fetch|ROM|memROM~19_combout\ & (!\processador|fetch|ROM|memROM~23_combout\ & ((!\processador|arquitetura|memReg|registrador~116_combout\) # 
-- (\processador|arquitetura|memReg|registrador~54_q\)))) ) ) ) # ( !\processador|arquitetura|memReg|registrador~46_q\ & ( !\processador|arquitetura|memReg|registrador~62_q\ & ( (\processador|arquitetura|memReg|registrador~116_combout\ & 
-- ((!\processador|fetch|ROM|memROM~19_combout\) # ((\processador|arquitetura|memReg|registrador~54_q\ & !\processador|fetch|ROM|memROM~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010000001100111101000000110011000111000011001111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~54_q\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~116_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~23_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~19_combout\,
	datae => \processador|arquitetura|memReg|ALT_INV_registrador~46_q\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~62_q\,
	combout => \processador|arquitetura|memReg|registrador~84_combout\);

-- Location: LABCELL_X50_Y21_N21
\display|display0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[0]~0_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (\processador|arquitetura|memReg|registrador~76_combout\ & 
-- \processador|arquitetura|memReg|registrador~88_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (\processador|arquitetura|memReg|registrador~76_combout\ & 
-- !\processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ $ (\processador|arquitetura|memReg|registrador~88_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X52_Y19_N9
\processador|fetch|ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|fetch|ROM|memROM~31_combout\ = ( \processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (!\processador|fetch|registerPC|DOUT\(5) & ((!\processador|fetch|registerPC|DOUT\(1) & 
-- (\processador|fetch|registerPC|DOUT\(2) & !\processador|fetch|registerPC|DOUT\(0))) # (\processador|fetch|registerPC|DOUT\(1) & (!\processador|fetch|registerPC|DOUT\(2) & \processador|fetch|registerPC|DOUT\(0))))) ) ) ) # ( 
-- !\processador|fetch|registerPC|DOUT\(4) & ( \processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & (\processador|fetch|registerPC|DOUT\(0) & !\processador|fetch|registerPC|DOUT\(5)))) 
-- ) ) ) # ( \processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(0) & (!\processador|fetch|registerPC|DOUT\(5) & (!\processador|fetch|registerPC|DOUT\(1) $ 
-- (\processador|fetch|registerPC|DOUT\(2))))) ) ) ) # ( !\processador|fetch|registerPC|DOUT\(4) & ( !\processador|fetch|registerPC|DOUT\(3) & ( (\processador|fetch|registerPC|DOUT\(1) & (\processador|fetch|registerPC|DOUT\(2) & 
-- \processador|fetch|registerPC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000010010000000000000001000000000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|registerPC|ALT_INV_DOUT\(1),
	datab => \processador|fetch|registerPC|ALT_INV_DOUT\(2),
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(0),
	datad => \processador|fetch|registerPC|ALT_INV_DOUT\(5),
	datae => \processador|fetch|registerPC|ALT_INV_DOUT\(4),
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(3),
	combout => \processador|fetch|ROM|memROM~31_combout\);

-- Location: LABCELL_X53_Y19_N27
\de|enderecoDisplay[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[1]~1_combout\ = ( !\processador|fetch|ROM|memROM~13_combout\ & ( (!\processador|fetch|ROM|memROM~6_combout\ & !\processador|fetch|ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~6_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~14_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~13_combout\,
	combout => \de|enderecoDisplay[1]~1_combout\);

-- Location: MLABCELL_X49_Y19_N18
\processador|UC|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal7~1_combout\ = ( !\processador|fetch|ROM|memROM~1_combout\ & ( (!\processador|fetch|ROM|memROM~2_combout\ & (!\processador|fetch|ROM|memROM~3_combout\ & (\processador|fetch|ROM|memROM~0_combout\ & 
-- \processador|fetch|ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~2_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~3_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~0_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~4_combout\,
	dataf => \processador|fetch|ROM|ALT_INV_memROM~1_combout\,
	combout => \processador|UC|Equal7~1_combout\);

-- Location: MLABCELL_X49_Y21_N33
\display|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = ( \de|enderecoDisplay[1]~1_combout\ & ( \processador|UC|Equal7~1_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\) # ((\processador|fetch|ROM|memROM~5_combout\ & \processador|fetch|ROM|memROM~31_combout\)) ) ) ) # ( 
-- !\de|enderecoDisplay[1]~1_combout\ & ( \processador|UC|Equal7~1_combout\ & ( (!\processador|fetch|ROM|memROM~11_combout\) # (\processador|fetch|ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~31_combout\,
	datae => \de|ALT_INV_enderecoDisplay[1]~1_combout\,
	dataf => \processador|UC|ALT_INV_Equal7~1_combout\,
	combout => \display|Equal0~0_combout\);

-- Location: MLABCELL_X49_Y21_N48
\de|limpaLeitura~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|limpaLeitura~1_combout\ = ( \de|Equal7~0_combout\ & ( (!\processador|fetch|ROM|memROM~12_combout\) # (\processador|fetch|registerPC|DOUT\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	datad => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	dataf => \de|ALT_INV_Equal7~0_combout\,
	combout => \de|limpaLeitura~1_combout\);

-- Location: LABCELL_X50_Y21_N3
\de|enderecoDisplay[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[0]~0_combout\ = ( \processador|fetch|ROM|memROM~12_combout\ & ( \processador|fetch|registerPC|DOUT\(9) & ( (\processador|fetch|ROM|memROM~9_combout\ & (!\de|Equal2~0_combout\ & ((!\processador|fetch|ROM|memROM~11_combout\) # 
-- (!\processador|fetch|ROM|memROM~15_combout\)))) ) ) ) # ( !\processador|fetch|ROM|memROM~12_combout\ & ( \processador|fetch|registerPC|DOUT\(9) & ( (\processador|fetch|ROM|memROM~9_combout\ & (!\de|Equal2~0_combout\ & 
-- ((!\processador|fetch|ROM|memROM~11_combout\) # (!\processador|fetch|ROM|memROM~15_combout\)))) ) ) ) # ( !\processador|fetch|ROM|memROM~12_combout\ & ( !\processador|fetch|registerPC|DOUT\(9) & ( (\processador|fetch|ROM|memROM~9_combout\ & 
-- (!\de|Equal2~0_combout\ & ((!\processador|fetch|ROM|memROM~11_combout\) # (!\processador|fetch|ROM|memROM~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000000000000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|fetch|ROM|ALT_INV_memROM~9_combout\,
	datab => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datac => \processador|fetch|ROM|ALT_INV_memROM~15_combout\,
	datad => \de|ALT_INV_Equal2~0_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~12_combout\,
	dataf => \processador|fetch|registerPC|ALT_INV_DOUT\(9),
	combout => \de|enderecoDisplay[0]~0_combout\);

-- Location: LABCELL_X50_Y21_N45
\display|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = ( \de|Equal2~0_combout\ & ( (\display|Equal0~0_combout\ & !\de|enderecoDisplay[0]~0_combout\) ) ) # ( !\de|Equal2~0_combout\ & ( (\display|Equal0~0_combout\ & (!\de|limpaLeitura~1_combout\ & 
-- !\de|enderecoDisplay[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Equal0~0_combout\,
	datac => \de|ALT_INV_limpaLeitura~1_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \de|ALT_INV_Equal2~0_combout\,
	combout => \display|Equal0~1_combout\);

-- Location: LABCELL_X50_Y21_N24
\display|display0|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(0) = ( \display|display0|saida7seg\(0) & ( (!\display|Equal0~1_combout\) # (\display|display0|rascSaida7seg[0]~0_combout\) ) ) # ( !\display|display0|saida7seg\(0) & ( (\display|display0|rascSaida7seg[0]~0_combout\ & 
-- \display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_saida7seg\(0),
	combout => \display|display0|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N9
\display|display0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[1]~1_combout\ = ( \processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|arquitetura|memReg|registrador~88_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\ & 
-- !\processador|arquitetura|memReg|registrador~80_combout\)) # (\processador|arquitetura|memReg|registrador~88_combout\ & ((\processador|arquitetura|memReg|registrador~80_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~76_combout\ & ( 
-- (\processador|arquitetura|memReg|registrador~84_combout\ & ((\processador|arquitetura|memReg|registrador~80_combout\) # (\processador|arquitetura|memReg|registrador~88_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \display|display0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X49_Y20_N33
\display|display0|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~1_combout\) # (\display|display0|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display0|saida7seg\(1) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_saida7seg\(1),
	datac => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display0|saida7seg\(1));

-- Location: LABCELL_X50_Y20_N9
\display|display0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[2]~2_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ & 
-- !\processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|arquitetura|memReg|registrador~84_combout\ & ((\processador|arquitetura|memReg|registrador~88_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( 
-- (!\processador|arquitetura|memReg|registrador~76_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\ & \processador|arquitetura|memReg|registrador~88_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X50_Y20_N0
\display|display0|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~1_combout\) # (\display|display0|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display0|saida7seg\(2) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display0|saida7seg\(2));

-- Location: LABCELL_X50_Y20_N30
\display|display0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[3]~3_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~76_combout\ & (!\processador|arquitetura|memReg|registrador~84_combout\ & 
-- \processador|arquitetura|memReg|registrador~88_combout\)) # (\processador|arquitetura|memReg|registrador~76_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( 
-- (!\processador|arquitetura|memReg|registrador~88_combout\ & (!\processador|arquitetura|memReg|registrador~76_combout\ $ (!\processador|arquitetura|memReg|registrador~84_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X50_Y20_N42
\display|display0|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~1_combout\) # (\display|display0|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display0|saida7seg\(3) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_saida7seg\(3),
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display0|saida7seg\(3));

-- Location: MLABCELL_X49_Y20_N27
\display|display0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[4]~4_combout\ = ( \processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|arquitetura|memReg|registrador~88_combout\) # ((!\processador|arquitetura|memReg|registrador~80_combout\ & 
-- !\processador|arquitetura|memReg|registrador~84_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|arquitetura|memReg|registrador~80_combout\ & (\processador|arquitetura|memReg|registrador~84_combout\ & 
-- !\processador|arquitetura|memReg|registrador~88_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \display|display0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X50_Y21_N39
\display|display0|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(4) = ( \display|display0|saida7seg\(4) & ( (!\display|Equal0~1_combout\) # (\display|display0|rascSaida7seg[4]~4_combout\) ) ) # ( !\display|display0|saida7seg\(4) & ( (\display|display0|rascSaida7seg[4]~4_combout\ & 
-- \display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_saida7seg\(4),
	combout => \display|display0|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N42
\display|display0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[5]~5_combout\ = ( \processador|arquitetura|memReg|registrador~76_combout\ & ( !\processador|arquitetura|memReg|registrador~88_combout\ $ (((\processador|arquitetura|memReg|registrador~84_combout\ & 
-- !\processador|arquitetura|memReg|registrador~80_combout\))) ) ) # ( !\processador|arquitetura|memReg|registrador~76_combout\ & ( (!\processador|arquitetura|memReg|registrador~88_combout\ & (!\processador|arquitetura|memReg|registrador~84_combout\ & 
-- \processador|arquitetura|memReg|registrador~80_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datab => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	combout => \display|display0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X49_Y20_N15
\display|display0|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~1_combout\) # (\display|display0|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display0|saida7seg\(5) & 
-- !\display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display0|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N54
\display|display0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|rascSaida7seg[6]~6_combout\ = ( \processador|arquitetura|memReg|registrador~80_combout\ & ( (\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~88_combout\ & 
-- \processador|arquitetura|memReg|registrador~76_combout\)) ) ) # ( !\processador|arquitetura|memReg|registrador~80_combout\ & ( (!\processador|arquitetura|memReg|registrador~84_combout\ & (!\processador|arquitetura|memReg|registrador~88_combout\)) # 
-- (\processador|arquitetura|memReg|registrador~84_combout\ & (\processador|arquitetura|memReg|registrador~88_combout\ & !\processador|arquitetura|memReg|registrador~76_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100000101001011010000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|arquitetura|memReg|ALT_INV_registrador~84_combout\,
	datac => \processador|arquitetura|memReg|ALT_INV_registrador~88_combout\,
	datad => \processador|arquitetura|memReg|ALT_INV_registrador~76_combout\,
	dataf => \processador|arquitetura|memReg|ALT_INV_registrador~80_combout\,
	combout => \display|display0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X50_Y21_N42
\display|display0|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display0|saida7seg\(6) = ( \display|display0|saida7seg\(6) & ( (!\display|Equal0~1_combout\) # (\display|display0|rascSaida7seg[6]~6_combout\) ) ) # ( !\display|display0|saida7seg\(6) & ( (\display|display0|rascSaida7seg[6]~6_combout\ & 
-- \display|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	datad => \display|ALT_INV_Equal0~1_combout\,
	dataf => \display|display0|ALT_INV_saida7seg\(6),
	combout => \display|display0|saida7seg\(6));

-- Location: MLABCELL_X49_Y21_N0
\display|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = ( \display|Equal0~0_combout\ & ( (\de|enderecoDisplay[0]~0_combout\ & ((!\de|limpaLeitura~1_combout\) # (\de|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_limpaLeitura~1_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \display|ALT_INV_Equal0~0_combout\,
	combout => \display|Equal0~2_combout\);

-- Location: LABCELL_X50_Y21_N27
\display|display1|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(0) = ( \display|Equal0~2_combout\ & ( \display|display0|rascSaida7seg[0]~0_combout\ ) ) # ( !\display|Equal0~2_combout\ & ( \display|display1|saida7seg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(0),
	dataf => \display|ALT_INV_Equal0~2_combout\,
	combout => \display|display1|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N6
\display|display1|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~2_combout\) # (\display|display1|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display1|saida7seg\(1) & 
-- !\display|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display1|ALT_INV_saida7seg\(1),
	datad => \display|ALT_INV_Equal0~2_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display1|saida7seg\(1));

-- Location: LABCELL_X50_Y20_N48
\display|display1|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display1|saida7seg\(2)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display1|saida7seg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Equal0~2_combout\,
	datac => \display|display1|ALT_INV_saida7seg\(2),
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display1|saida7seg\(2));

-- Location: LABCELL_X50_Y20_N54
\display|display1|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display1|saida7seg\(3)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display1|saida7seg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|ALT_INV_Equal0~2_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(3),
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display1|saida7seg\(3));

-- Location: MLABCELL_X49_Y21_N36
\display|display1|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(4) = ( \display|Equal0~2_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ ) ) # ( !\display|Equal0~2_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ & ( \display|display1|saida7seg\(4) ) ) ) # ( 
-- !\display|Equal0~2_combout\ & ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( \display|display1|saida7seg\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display1|ALT_INV_saida7seg\(4),
	datae => \display|ALT_INV_Equal0~2_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display1|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N18
\display|display1|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~2_combout\) # (\display|display1|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display1|saida7seg\(5) & 
-- !\display|Equal0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display1|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~2_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display1|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N51
\display|display1|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display1|saida7seg\(6) = ( \display|display0|rascSaida7seg[6]~6_combout\ & ( (\display|display1|saida7seg\(6)) # (\display|Equal0~2_combout\) ) ) # ( !\display|display0|rascSaida7seg[6]~6_combout\ & ( (!\display|Equal0~2_combout\ & 
-- \display|display1|saida7seg\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~2_combout\,
	datad => \display|display1|ALT_INV_saida7seg\(6),
	dataf => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	combout => \display|display1|saida7seg\(6));

-- Location: LABCELL_X52_Y21_N6
\de|enderecoDisplay[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \de|enderecoDisplay[1]~2_combout\ = ( \processador|fetch|ROM|memROM~31_combout\ & ( \de|enderecoDisplay[1]~1_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & !\processador|fetch|ROM|memROM~5_combout\) ) ) ) # ( 
-- !\processador|fetch|ROM|memROM~31_combout\ & ( \de|enderecoDisplay[1]~1_combout\ & ( \processador|fetch|ROM|memROM~11_combout\ ) ) ) # ( \processador|fetch|ROM|memROM~31_combout\ & ( !\de|enderecoDisplay[1]~1_combout\ & ( 
-- (\processador|fetch|ROM|memROM~11_combout\ & !\processador|fetch|ROM|memROM~5_combout\) ) ) ) # ( !\processador|fetch|ROM|memROM~31_combout\ & ( !\de|enderecoDisplay[1]~1_combout\ & ( (\processador|fetch|ROM|memROM~11_combout\ & 
-- !\processador|fetch|ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|fetch|ROM|ALT_INV_memROM~11_combout\,
	datad => \processador|fetch|ROM|ALT_INV_memROM~5_combout\,
	datae => \processador|fetch|ROM|ALT_INV_memROM~31_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~1_combout\,
	combout => \de|enderecoDisplay[1]~2_combout\);

-- Location: LABCELL_X50_Y21_N48
\display|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = ( \de|enderecoDisplay[1]~2_combout\ & ( (\processador|UC|Equal7~1_combout\ & (!\de|enderecoDisplay[0]~0_combout\ & ((!\de|limpaLeitura~1_combout\) # (\de|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000101000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal7~1_combout\,
	datab => \de|ALT_INV_limpaLeitura~1_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	combout => \display|Equal0~3_combout\);

-- Location: LABCELL_X50_Y21_N6
\display|display2|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(0) = ( \display|display2|saida7seg\(0) & ( (!\display|Equal0~3_combout\) # (\display|display0|rascSaida7seg[0]~0_combout\) ) ) # ( !\display|display2|saida7seg\(0) & ( (\display|display0|rascSaida7seg[0]~0_combout\ & 
-- \display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datac => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display2|ALT_INV_saida7seg\(0),
	combout => \display|display2|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N48
\display|display2|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~3_combout\) # (\display|display2|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display2|saida7seg\(1) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display2|ALT_INV_saida7seg\(1),
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display2|saida7seg\(1));

-- Location: LABCELL_X50_Y20_N51
\display|display2|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~3_combout\) # (\display|display2|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display2|saida7seg\(2) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display2|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display2|saida7seg\(2));

-- Location: LABCELL_X50_Y20_N57
\display|display2|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(3) = ( \display|Equal0~3_combout\ & ( \display|display0|rascSaida7seg[3]~3_combout\ ) ) # ( !\display|Equal0~3_combout\ & ( \display|display2|saida7seg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(3),
	dataf => \display|ALT_INV_Equal0~3_combout\,
	combout => \display|display2|saida7seg\(3));

-- Location: MLABCELL_X49_Y20_N3
\display|display2|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(4) = ( \display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|display2|saida7seg\(4)) # (\display|Equal0~3_combout\) ) ) # ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( (!\display|Equal0~3_combout\ & 
-- \display|display2|saida7seg\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~3_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(4),
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display2|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N21
\display|display2|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~3_combout\) # (\display|display2|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display2|saida7seg\(5) & 
-- !\display|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display2|ALT_INV_saida7seg\(5),
	datac => \display|ALT_INV_Equal0~3_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display2|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N57
\display|display2|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display2|saida7seg\(6) = ( \display|Equal0~3_combout\ & ( \display|display0|rascSaida7seg[6]~6_combout\ ) ) # ( !\display|Equal0~3_combout\ & ( \display|display2|saida7seg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	datad => \display|display2|ALT_INV_saida7seg\(6),
	dataf => \display|ALT_INV_Equal0~3_combout\,
	combout => \display|display2|saida7seg\(6));

-- Location: LABCELL_X50_Y21_N36
\display|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = ( \de|enderecoDisplay[1]~2_combout\ & ( (\processador|UC|Equal7~1_combout\ & (\de|enderecoDisplay[0]~0_combout\ & ((!\de|limpaLeitura~1_combout\) # (\de|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_Equal7~1_combout\,
	datab => \de|ALT_INV_limpaLeitura~1_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \de|ALT_INV_enderecoDisplay[1]~2_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: LABCELL_X50_Y21_N15
\display|display3|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(0) = ( \display|display3|saida7seg\(0) & ( (!\display|Equal0~4_combout\) # (\display|display0|rascSaida7seg[0]~0_combout\) ) ) # ( !\display|display3|saida7seg\(0) & ( (\display|display0|rascSaida7seg[0]~0_combout\ & 
-- \display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display3|ALT_INV_saida7seg\(0),
	combout => \display|display3|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N24
\display|display3|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~4_combout\) # (\display|display3|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display3|saida7seg\(1) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(1),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display3|saida7seg\(1));

-- Location: LABCELL_X50_Y20_N6
\display|display3|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~4_combout\) # (\display|display3|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display3|saida7seg\(2) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display3|saida7seg\(2));

-- Location: LABCELL_X50_Y20_N33
\display|display3|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(3) = ( \display|display3|saida7seg\(3) & ( (!\display|Equal0~4_combout\) # (\display|display0|rascSaida7seg[3]~3_combout\) ) ) # ( !\display|display3|saida7seg\(3) & ( (\display|display0|rascSaida7seg[3]~3_combout\ & 
-- \display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display3|ALT_INV_saida7seg\(3),
	combout => \display|display3|saida7seg\(3));

-- Location: MLABCELL_X49_Y21_N15
\display|display3|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(4) = ( \display|Equal0~4_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ ) ) # ( !\display|Equal0~4_combout\ & ( \display|display0|rascSaida7seg[4]~4_combout\ & ( \display|display3|saida7seg\(4) ) ) ) # ( 
-- !\display|Equal0~4_combout\ & ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( \display|display3|saida7seg\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(4),
	datae => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display3|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N0
\display|display3|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~4_combout\) # (\display|display3|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display3|saida7seg\(5) & 
-- !\display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display3|ALT_INV_saida7seg\(5),
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display3|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N9
\display|display3|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display3|saida7seg\(6) = ( \display|display3|saida7seg\(6) & ( (!\display|Equal0~4_combout\) # (\display|display0|rascSaida7seg[6]~6_combout\) ) ) # ( !\display|display3|saida7seg\(6) & ( (\display|display0|rascSaida7seg[6]~6_combout\ & 
-- \display|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	datad => \display|ALT_INV_Equal0~4_combout\,
	dataf => \display|display3|ALT_INV_saida7seg\(6),
	combout => \display|display3|saida7seg\(6));

-- Location: MLABCELL_X49_Y21_N6
\display|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~5_combout\ = ( \display|Equal0~0_combout\ & ( (\de|limpaLeitura~1_combout\ & (!\de|Equal2~0_combout\ & !\de|enderecoDisplay[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_limpaLeitura~1_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \display|ALT_INV_Equal0~0_combout\,
	combout => \display|Equal0~5_combout\);

-- Location: LABCELL_X50_Y21_N18
\display|display4|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(0) = ( \display|Equal0~5_combout\ & ( \display|display0|rascSaida7seg[0]~0_combout\ ) ) # ( !\display|Equal0~5_combout\ & ( \display|display4|saida7seg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datac => \display|display4|ALT_INV_saida7seg\(0),
	dataf => \display|ALT_INV_Equal0~5_combout\,
	combout => \display|display4|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N30
\display|display4|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~5_combout\) # (\display|display4|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display4|saida7seg\(1) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display4|ALT_INV_saida7seg\(1),
	datac => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display4|saida7seg\(1));

-- Location: LABCELL_X50_Y20_N45
\display|display4|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(2) = ( \display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|Equal0~5_combout\) # (\display|display4|saida7seg\(2)) ) ) # ( !\display|display0|rascSaida7seg[2]~2_combout\ & ( (\display|display4|saida7seg\(2) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display4|ALT_INV_saida7seg\(2),
	datad => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	combout => \display|display4|saida7seg\(2));

-- Location: LABCELL_X50_Y20_N3
\display|display4|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~5_combout\) # (\display|display4|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display4|saida7seg\(3) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display4|ALT_INV_saida7seg\(3),
	datad => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display4|saida7seg\(3));

-- Location: MLABCELL_X49_Y21_N45
\display|display4|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(4) = ( \display|display4|saida7seg\(4) & ( \display|display0|rascSaida7seg[4]~4_combout\ ) ) # ( !\display|display4|saida7seg\(4) & ( \display|display0|rascSaida7seg[4]~4_combout\ & ( \display|Equal0~5_combout\ ) ) ) # ( 
-- \display|display4|saida7seg\(4) & ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( !\display|Equal0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~5_combout\,
	datae => \display|display4|ALT_INV_saida7seg\(4),
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display4|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N12
\display|display4|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~5_combout\) # (\display|display4|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display4|saida7seg\(5) & 
-- !\display|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display4|ALT_INV_saida7seg\(5),
	datac => \display|ALT_INV_Equal0~5_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display4|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N30
\display|display4|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display4|saida7seg\(6) = ( \display|Equal0~5_combout\ & ( \display|display0|rascSaida7seg[6]~6_combout\ ) ) # ( !\display|Equal0~5_combout\ & ( \display|display4|saida7seg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	datac => \display|display4|ALT_INV_saida7seg\(6),
	dataf => \display|ALT_INV_Equal0~5_combout\,
	combout => \display|display4|saida7seg\(6));

-- Location: MLABCELL_X49_Y21_N9
\display|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|Equal0~6_combout\ = ( \display|Equal0~0_combout\ & ( (\de|limpaLeitura~1_combout\ & (!\de|Equal2~0_combout\ & \de|enderecoDisplay[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \de|ALT_INV_limpaLeitura~1_combout\,
	datac => \de|ALT_INV_Equal2~0_combout\,
	datad => \de|ALT_INV_enderecoDisplay[0]~0_combout\,
	dataf => \display|ALT_INV_Equal0~0_combout\,
	combout => \display|Equal0~6_combout\);

-- Location: LABCELL_X50_Y21_N12
\display|display5|saida7seg[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(0) = ( \display|display5|saida7seg\(0) & ( (!\display|Equal0~6_combout\) # (\display|display0|rascSaida7seg[0]~0_combout\) ) ) # ( !\display|display5|saida7seg\(0) & ( (\display|display0|rascSaida7seg[0]~0_combout\ & 
-- \display|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[0]~0_combout\,
	datad => \display|ALT_INV_Equal0~6_combout\,
	dataf => \display|display5|ALT_INV_saida7seg\(0),
	combout => \display|display5|saida7seg\(0));

-- Location: MLABCELL_X49_Y20_N51
\display|display5|saida7seg[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(1) = ( \display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|Equal0~6_combout\) # (\display|display5|saida7seg\(1)) ) ) # ( !\display|display0|rascSaida7seg[1]~1_combout\ & ( (\display|display5|saida7seg\(1) & 
-- !\display|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display5|ALT_INV_saida7seg\(1),
	datac => \display|ALT_INV_Equal0~6_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[1]~1_combout\,
	combout => \display|display5|saida7seg\(1));

-- Location: MLABCELL_X49_Y20_N45
\display|display5|saida7seg[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(2) = ( \display|Equal0~6_combout\ & ( \display|display0|rascSaida7seg[2]~2_combout\ ) ) # ( !\display|Equal0~6_combout\ & ( \display|display5|saida7seg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(2),
	dataf => \display|ALT_INV_Equal0~6_combout\,
	combout => \display|display5|saida7seg\(2));

-- Location: MLABCELL_X49_Y20_N54
\display|display5|saida7seg[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(3) = ( \display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|Equal0~6_combout\) # (\display|display5|saida7seg\(3)) ) ) # ( !\display|display0|rascSaida7seg[3]~3_combout\ & ( (\display|display5|saida7seg\(3) & 
-- !\display|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|display5|ALT_INV_saida7seg\(3),
	datac => \display|ALT_INV_Equal0~6_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[3]~3_combout\,
	combout => \display|display5|saida7seg\(3));

-- Location: MLABCELL_X49_Y21_N3
\display|display5|saida7seg[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(4) = ( \display|display0|rascSaida7seg[4]~4_combout\ & ( (\display|display5|saida7seg\(4)) # (\display|Equal0~6_combout\) ) ) # ( !\display|display0|rascSaida7seg[4]~4_combout\ & ( (!\display|Equal0~6_combout\ & 
-- \display|display5|saida7seg\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ALT_INV_Equal0~6_combout\,
	datad => \display|display5|ALT_INV_saida7seg\(4),
	dataf => \display|display0|ALT_INV_rascSaida7seg[4]~4_combout\,
	combout => \display|display5|saida7seg\(4));

-- Location: MLABCELL_X49_Y20_N57
\display|display5|saida7seg[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(5) = ( \display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|Equal0~6_combout\) # (\display|display5|saida7seg\(5)) ) ) # ( !\display|display0|rascSaida7seg[5]~5_combout\ & ( (\display|display5|saida7seg\(5) & 
-- !\display|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display5|ALT_INV_saida7seg\(5),
	datac => \display|ALT_INV_Equal0~6_combout\,
	dataf => \display|display0|ALT_INV_rascSaida7seg[5]~5_combout\,
	combout => \display|display5|saida7seg\(5));

-- Location: LABCELL_X50_Y21_N33
\display|display5|saida7seg[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \display|display5|saida7seg\(6) = ( \display|display5|saida7seg\(6) & ( (!\display|Equal0~6_combout\) # (\display|display0|rascSaida7seg[6]~6_combout\) ) ) # ( !\display|display5|saida7seg\(6) & ( (\display|display0|rascSaida7seg[6]~6_combout\ & 
-- \display|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|display0|ALT_INV_rascSaida7seg[6]~6_combout\,
	datac => \display|ALT_INV_Equal0~6_combout\,
	dataf => \display|display5|ALT_INV_saida7seg\(6),
	combout => \display|display5|saida7seg\(6));

-- Location: LABCELL_X48_Y20_N15
\baseTempo|leituraUmSegundo[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \baseTempo|leituraUmSegundo[0]~2_combout\ = ( \de|limpaLeitura~0_combout\ & ( (\baseTempo|leituraUmSegundo[0]~1_combout\ & (\baseTempo|leituraUmSegundo[0]~0_combout\ & \baseTempo|registraUmSegundo|DOUT~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \baseTempo|ALT_INV_leituraUmSegundo[0]~1_combout\,
	datac => \baseTempo|ALT_INV_leituraUmSegundo[0]~0_combout\,
	datad => \baseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	dataf => \de|ALT_INV_limpaLeitura~0_combout\,
	combout => \baseTempo|leituraUmSegundo[0]~2_combout\);
END structure;


