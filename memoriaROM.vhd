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
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
	 
		tmp(0) := "1001" & "000" & "0000000000";
		tmp(1) := "1001" & "001" & "0000000000";
		tmp(2) := "1001" & "010" & "0000000000";
		tmp(3) := "1001" & "011" & "0000000000";
		tmp(4) := "1001" & "100" & "0000000000";
		tmp(5) := "1001" & "101" & "0000000000";
		tmp(6) := "0000" & "110" & "0000000110";
		tmp(7) := "0100" & "110" & "0000000001";
		tmp(8) := "0101" & "000" & "0000111010";
		tmp(9) := "0001" & "000" & "0000000000";
		tmp(10) := "0001" & "001" & "0000000001";
		tmp(11) := "0001" & "010" & "0000000010";
		tmp(12) := "0001" & "011" & "0000000011";
		tmp(13) := "0001" & "100" & "0000000100";
		tmp(14) := "0001" & "101" & "0000000101";
		tmp(15) := "0000" & "111" & "0000010011";
		tmp(16) := "0100" & "111" & "0000000001";
		tmp(17) := "0101" & "000" & "0000010011";
		tmp(18) := "0110" & "000" & "0000001111";
		tmp(19) := "0001" & "000" & "0000010100";
		tmp(20) := "0100" & "000" & "0000001001";
		tmp(21) := "0101" & "000" & "0000011000";
		tmp(22) := "0111" & "000" & "0000000001";
		tmp(23) := "0110" & "000" & "0000000110";
		tmp(24) := "1001" & "000" & "0000000000";
		tmp(25) := "0100" & "001" & "0000000101";
		tmp(26) := "0101" & "000" & "0000011101";
		tmp(27) := "0111" & "001" & "0000000001";
		tmp(28) := "0110" & "000" & "0000000110";
		tmp(29) := "1001" & "001" & "0000000000";
		tmp(30) := "0100" & "010" & "0000001001";
		tmp(31) := "0101" & "000" & "0000100010";
		tmp(32) := "0111" & "010" & "0000000001";
		tmp(33) := "0110" & "000" & "0000000110";
		tmp(34) := "1001" & "010" & "0000000000";
		tmp(35) := "0100" & "011" & "0000000101";
		tmp(36) := "0101" & "000" & "0000100111";
		tmp(37) := "0111" & "011" & "0000000001";
		tmp(38) := "0110" & "000" & "0000000110";
		tmp(39) := "1001" & "011" & "0000000000";
		tmp(40) := "0100" & "101" & "0000000010";
		tmp(41) := "0101" & "000" & "0000101110";
		tmp(42) := "0100" & "100" & "0000001001";
		tmp(43) := "0101" & "000" & "0000110011";
		tmp(44) := "0111" & "100" & "0000000001";
		tmp(45) := "0110" & "000" & "0000000110";
		tmp(46) := "1001" & "011" & "0000000000";
		tmp(47) := "0100" & "100" & "0000000011";
		tmp(48) := "0101" & "000" & "0000110011";
		tmp(49) := "0111" & "100" & "0000000001";
		tmp(50) := "0110" & "000" & "0000000110";
		tmp(51) := "1001" & "100" & "0000000000";
		tmp(52) := "0100" & "101" & "0000000010";
		tmp(53) := "0101" & "000" & "0000111000";
		tmp(54) := "0111" & "101" & "0000000001";
		tmp(55) := "0110" & "000" & "0000000110";
		tmp(56) := "1001" & "101" & "0000000000";
		tmp(57) := "0110" & "000" & "0000000110";
		tmp(58) := "0110" & "000" & "0000000110";
		
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;