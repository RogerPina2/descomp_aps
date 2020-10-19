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

	constant LBL_WHILE		: std_logic_vector(addrWidth - 1 downto 0) := "0000000110";
	constant LBL_BT			: std_logic_vector(addrWidth - 1 downto 0) := "0000001100";
	constant LBL_US			: std_logic_vector(addrWidth - 1 downto 0) := "0000010000";
	constant LBL_DS			: std_logic_vector(addrWidth - 1 downto 0) := "0000010101";
	constant LBL_UM			: std_logic_vector(addrWidth - 1 downto 0) := "0000011010";
	constant LBL_DM			: std_logic_vector(addrWidth - 1 downto 0) := "0000011111";
	constant LBL_UH			: std_logic_vector(addrWidth - 1 downto 0) := "0000100100";
	constant LBL_UH2			: std_logic_vector(addrWidth - 1 downto 0) := "0000101011";
	constant LBL_DH			: std_logic_vector(addrWidth - 1 downto 0) := "0000110000";
	constant LBL_RESTART		: std_logic_vector(addrWidth - 1 downto 0) := "0000110101";
	
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
		tmp(6)  := STORE & R0 & DISPLAY0;
		tmp(7)  := STORE & R1 & DISPLAY1;
		tmp(8)  := STORE & R2 & DISPLAY2;
		tmp(9)  := STORE & R3 & DISPLAY3;
		tmp(10) := STORE & R4 & DISPLAY4; 
		tmp(11) := STORE & R5 & DISPLAY5;
		
		-- label: LBL_BT
		tmp(12) := LOAD & R6	& BT_L;
		tmp(13) := CMP  & R6 & "0000000001"; 
		tmp(14) := JE	 & XX & LBL_US;
		tmp(15) := JMP  & XX & LBL_BT;
			
		-- label: LBL_US
		tmp(16) := STORE & XX & BT_C; 
		
		tmp(17) := CMP	&	R0	&	"0000001001";
		tmp(18) := JE	&	XX	&	LBL_DS;
		tmp(19) := ADD	&	R0	&	"0000000001";
		tmp(20) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_DS
		tmp(21) := MOVI	&	R0	&	"0000000000";
		
		tmp(22) := CMP	&	R1	&	"0000000101";
		tmp(23) := JE	&	XX	&	LBL_UM;
		tmp(24) := ADD	&	R1	&	"0000000001";
		tmp(25) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_UM
		tmp(26) := MOVI	&	R1	&	"0000000000";

		tmp(27) := CMP	&	R2	&	"0000001001";
		tmp(28) := JE	&	XX	&	LBL_DM;
		tmp(29) := ADD	&	R2	&	"0000000001";
		tmp(30) := JMP	&	XX	&	LBL_WHILE;
		
		-- label: LBL_DM
		tmp(31) := MOVI	&	R2	&	"0000000000";
		
		tmp(32) := CMP	&	R3	&	"0000000101";
		tmp(33) := JE	&	XX	&	LBL_UH;
		tmp(34) := ADD	&	R3	&	"0000000001";
		tmp(35) := JMP	&	XX	&	LBL_WHILE;
	
		-- label: LBL_UH
		tmp(36) := MOVI &	R3	&	"0000000000";
		
		tmp(37) := CMP	&	R5	&	"0000000010";
		tmp(38) := JE	&	XX	&	LBL_UH2;

		tmp(39) := CMP	&	R4	&	"0000001001";
		tmp(40) := JE	&	XX	&	LBL_DH;
		tmp(41) := ADD	&	R4	&	"0000000001";
		tmp(42) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_UH2
		tmp(43) := MOVI	&	R3	&	"0000000000";
		
		tmp(44) := CMP	&	R4	&	"0000000011";
		tmp(45) := JE	&	XX	&	LBL_DH;
		tmp(46) := ADD	&	R4	&	"0000000001";
		tmp(47) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_DH
		tmp(48) := MOVI	&	R4	&	"0000000000";
		
		tmp(49) := CMP	&	R5	&	"0000000010";
		tmp(50) := JE	&	XX	&	LBL_RESTART;
		tmp(51) := ADD	&	R5	&	"0000000001";
		tmp(52) := JMP	&	XX	&	LBL_WHILE;

		-- label: LBL_RESTART
		tmp(53)	:= MOVI	&	R5	&	"0000000000";
		tmp(54)	:= JMP	&	XX	&	LBL_WHILE;

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;