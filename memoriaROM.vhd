library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          -- O fato da interface ser do tipo std_logic auxilía na simulação.
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
        
        -- Carrega variáveis
        tmp(0) := "10010000000000000";
        tmp(1) := "10010010000000000";
        tmp(2) := "10010100000000000";
        tmp(3) := "10010110000000000";
        tmp(4) := "10011000000000000";
        tmp(5) := "10011010000000000";
        tmp(6) := "10011100000000001";

        -- While
            -- END DISPLAY
        tmp(7) := "00010000000000000"; --END DISPLAY0
        tmp(8) := "00010010000000000"; --END DISPLAY1
        tmp(9) := "00010100000000000"; --END DISPLAY2
        tmp(10) := "00010110000000000"; --END DISPLAY3
        tmp(11) := "00011000000000000"; --END DISPLAY4
        tmp(12) := "00011010000000000"; --END DISPLAY5

        tmp(13) := "01100000000001110"; --US
        
        -- US
		tmp(14) := "00000000000000000"; --END MEM
	    tmp(15) := "00011110000000000"; --END MEM 	
        tmp(16) := "01000000000001001";
        tmp(17) := "01010000000010100"; -- DS
        tmp(18) := "01110000000000001";
        tmp(19) := "01100000000000111";

        -- DS
        tmp(20) := "10010000000000000";
        tmp(21) := "00000010000000000"; --END MEM
        tmp(22) := "00011110000000000"; --END MEM
        tmp(23) := "01000010000000101";
        tmp(24) := "01010000000010111";
        tmp(25) := "01110010000000001";
        tmp(26) := "01100000000000111";
        
        
        -- UM
        tmp(27) := "10010010000000000";
        tmp(28) := "00000100000000000"; --END MEM
        tmp(29) := "00011110000000000"; --END MEM
        tmp(30) := "01000100000000101";
        tmp(31) := "01010000000011100";
        tmp(32) := "01110100000000001";
        tmp(33) := "01100000000000111";

        -- DM
        tmp(34) := "10010100000000000";
        tmp(35) := "00000110000000000"; --END MEM
        tmp(36) := "00011110000000000"; --END MEM
        tmp(37) := "01000110000000101";
        tmp(38) := "01010000000100001";
        tmp(39) := "01110110000000001";
        tmp(40) := "01100000000000111";

        -- UH
        tmp(41) := "10010110000000000";
        tmp(42) := "00001010000000000"; -- END MEM
        tmp(43) := "00011110000000000"; -- END MEM
        tmp(44) := "01001010000000010";
        tmp(45) := "01010000000101101";
        tmp(46) := "00001000000000000"; -- END MEM
        tmp(47) := "00011110000000000"; -- END MEM
        tmp(48) := "01001000000000101";
        tmp(49) := "01010000000101101";
        tmp(50) := "01111000000000001";
        tmp(51) := "01100000000000111";

        -- UH2
        tmp(52) := "10010110000000000";
        tmp(53) := "00001000000000000"; -- END MEM
        tmp(54) := "00011110000000000"; -- END MEM
        tmp(55) := "01001000000000101";
        tmp(56) := "01010000000101101";
        tmp(57) := "01111000000000001";
        tmp(58) := "01100000000000111";

        -- DH
        tmp(59) := "10011000000000000";
        tmp(60) := "00001010000000000"; -- END MEM
        tmp(61) := "00011110000000000"; -- END MEM
        tmp(62) := "01001010000000010";
        tmp(63) := "01010000000110010";
        tmp(64) := "01111010000000001";
        tmp(65) := "01100000000000111";

        -- RESTART
        tmp(66) := "10011010000000000";
        tmp(67) := "01100000000000111";


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;