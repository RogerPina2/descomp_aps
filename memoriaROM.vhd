library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
		opcode_width: natural := 4;
		dataWidth	: natural := 8;
		addrWidth	: natural := 10;
		inst_width	: natural := 17 
    );
   port (
          -- O fato da interface ser do tipo std_logic auxilía na simulação.
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (inst_width-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(inst_width-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  
	constant LOAD  : std_logic_vector(opcode_width - 1 downto 0) := "0000";
	constant STORE : std_logic_vector(opcode_width - 1 downto 0) := "0001";
	constant INC   : std_logic_vector(opcode_width - 1 downto 0) := "0010";
	constant DEC   : std_logic_vector(opcode_width - 1 downto 0) := "0011";
	constant CMP   : std_logic_vector(opcode_width - 1 downto 0) := "0100";
	constant JE    : std_logic_vector(opcode_width - 1 downto 0) := "0101";
	constant JMP   : std_logic_vector(opcode_width - 1 downto 0) := "0110";
	constant ADD   : std_logic_vector(opcode_width - 1 downto 0) := "0111";
	constant SUB   : std_logic_vector(opcode_width - 1 downto 0) := "1000";
	constant MOVI  : std_logic_vector(opcode_width - 1 downto 0) := "1001";
	constant ORL   : std_logic_vector(opcode_width - 1 downto 0) := "1010";
	constant ANDL  : std_logic_vector(opcode_width - 1 downto 0) := "1011";
	constant XORL  : std_logic_vector(opcode_width - 1 downto 0) := "1100";
	constant NOTL  : std_logic_vector(opcode_width - 1 downto 0) := "1101";
	constant XXXX  : std_logic_vector(opcode_width - 1 downto 0) := "0000";
	
	constant R0		: std_logic_vector(2 downto 0) := "000";
	constant R1		: std_logic_vector(2 downto 0) := "001";
	constant R2		: std_logic_vector(2 downto 0) := "010";
	constant R3		: std_logic_vector(2 downto 0) := "011";
	constant R4		: std_logic_vector(2 downto 0) := "100";
	constant R5		: std_logic_vector(2 downto 0) := "101";
	constant R6		: std_logic_vector(2 downto 0) := "110";
	constant R7		: std_logic_vector(2 downto 0) := "111";
	constant XX		: std_logic_vector(2 downto 0) := "000";

	constant DISPLAY0	: std_logic_vector(addrWidth - 1 downto 0) := "0000000000";
	constant DISPLAY1	: std_logic_vector(addrWidth - 1 downto 0) := "0000000001";
	constant DISPLAY2	: std_logic_vector(addrWidth - 1 downto 0) := "0000000010";
	constant DISPLAY3	: std_logic_vector(addrWidth - 1 downto 0) := "0000000011";
	constant DISPLAY4	: std_logic_vector(addrWidth - 1 downto 0) := "0000000100";
	constant DISPLAY5	: std_logic_vector(addrWidth - 1 downto 0) := "0000000101";
	constant BT_L		: std_logic_vector(addrWidth - 1 downto 0) := "0000010011";
	constant BT_C		: std_logic_vector(addrWidth - 1 downto 0) := "0000010100";
	constant SW0		: std_logic_vector(addrWidth - 1 downto 0) := "0000000110";
	constant BT0		: std_logic_vector(addrWidth - 1 downto 0) := "0000001111";

	constant LBL_WHILE		: std_logic_vector(addrWidth - 1 downto 0) := "0000000110";
	constant LBL_BT			: std_logic_vector(addrWidth - 1 downto 0) := "0000011010";
	constant LBL_US			: std_logic_vector(addrWidth - 1 downto 0) := "0000101000";
	constant LBL_DS			: std_logic_vector(addrWidth - 1 downto 0) := "0000101101";
	constant LBL_UM			: std_logic_vector(addrWidth - 1 downto 0) := "0000110010";
	constant LBL_DM			: std_logic_vector(addrWidth - 1 downto 0) := "0000110111";
	constant LBL_UH			: std_logic_vector(addrWidth - 1 downto 0) := "0000111100";
	constant LBL_UH2			: std_logic_vector(addrWidth - 1 downto 0) := "0001000011";
	constant LBL_DH			: std_logic_vector(addrWidth - 1 downto 0) := "0001001000";
	constant LBL_RESTART		: std_logic_vector(addrWidth - 1 downto 0) := "0001001101";
	constant SET_TIME			: std_logic_vector(addrWidth - 1 downto 0) := "0001001111";
	
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
	 
		-- Carrega o valor 0 para os registradores
		tmp(0) := MOVI  & R0 & "0000000000";
		tmp(1) := MOVI  & R1 & "0000000000";
		tmp(2) := MOVI  & R2 & "0000000000";
		tmp(3) := MOVI  & R3 & "0000000000";
		tmp(4) := MOVI  & R4 & "0000000000";
		tmp(5) := MOVI  & R5 & "0000000000";
		
		-- label: while
		tmp(6)  := LOAD & R7 & SW0;
		tmp(7)  := CMP  & R7 & "0000000001";
		tmp(8)  := JE	 & XX & SET_TIME;
		tmp(9)  := JMP  & XX & "0000010100";
		
		tmp(20) := STORE & R0 & DISPLAY0;
		tmp(21) := STORE & R1 & DISPLAY1;
		tmp(22) := STORE & R2 & DISPLAY2;
		tmp(23) := STORE & R3 & DISPLAY3;
		tmp(24) := STORE & R4 & DISPLAY4; 
		tmp(25) := STORE & R5 & DISPLAY5;
		
		-- label: LBL_BT
		tmp(26) := LOAD & R6	& BT_L;
		tmp(27) := CMP  & R6 & "0000000001"; 
		tmp(28) := JE	 & XX & LBL_US;
		tmp(29) := JMP  & XX & LBL_BT;
			
		-- label: LBL_US
		tmp(40) := STORE & XX & BT_C; 
		
		tmp(41) := CMP	&	R0	&	"0000001001";
		tmp(42) := JE	&	XX	&	LBL_DS;
		tmp(43) := ADD	&	R0	&	"0000000001";
		tmp(44) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_DS
		tmp(45) := MOVI &	R0	&	"0000000000";
		
		tmp(46) := CMP	&	R1	&	"0000000101";
		tmp(47) := JE	&	XX	&	LBL_UM;
		tmp(48) := ADD	&	R1	&	"0000000001";
		tmp(49) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_UM
		tmp(50) := MOVI &	R1	&	"0000000000";

		tmp(51) := CMP	&	R2	&	"0000001001";
		tmp(52) := JE	&	XX	&	LBL_DM;
		tmp(53) := ADD	&	R2	&	"0000000001";
		tmp(54) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_DM
		tmp(55) := MOVI &	R2	& "0000000000";
		
		tmp(56) := CMP	&	R3	&	"0000000101";
		tmp(57) := JE	&	XX	&	LBL_UH;
		tmp(58) := ADD	&	R3	&	"0000000001";
		tmp(59) := JMP	&	XX	&	LBL_WHILE;
	
		-- label: LBL_UH
		tmp(60) := MOVI &	R3	&	"0000000000";
		
		tmp(61) := CMP	&	R5	&	"0000000010";
		tmp(62) := JE	&	XX	&	LBL_UH2;

		tmp(63) := CMP	&	R4	&	"0000001001";
		tmp(64) := JE	&	XX	&	LBL_DH;
		tmp(65) := ADD	&	R4	&	"0000000001";
		tmp(66) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_UH2
		tmp(67) := MOVI	&	R3	& "0000000000";
		
		tmp(68) := CMP	&	R4	&	"0000000011";
		tmp(69) := JE	&	XX	&	LBL_DH;
		tmp(70) := ADD	&	R4	&	"0000000001";
		tmp(71) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_DH
		tmp(72) := MOVI	&	R4	&	"0000000000";
		
		tmp(73) := CMP	&	R5	&	"0000000010";
		tmp(74) := JE	&	XX	&	LBL_RESTART;
		tmp(75) := ADD	&	R5	&	"0000000001";
		tmp(76) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_RESTART
		tmp(77) := MOVI	&	R5	&	"0000000000";
		tmp(78) := JMP	&	XX	&	LBL_WHILE;
		
		
		--label: SET_TIME
		--tmp(79) := MOVI & R7 & "0000000000"
		tmp(79) := JMP  & XX & LBL_WHILE;
		tmp(80) := LOAD & R6 & BT0;
		tmp(81) := CMP  & R6 & "0000000000";
		tmp(82) := JE	 & XX & "0001010100";
		tmp(83) := JMP  & XX & LBL_WHILE;
		--tmp(84) := ADD  & XX & ;
		
		
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;