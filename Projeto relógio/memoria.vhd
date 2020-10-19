library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
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

architecture assincrona of memoria is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
        
        -- Carrega variáveis
        tmp(0) := b"1001 000 0000 0000 0000";
        tmp(1) := b"1001 001 0000 0000 0000";
        tmp(2) := b"1001 010 0000 0000 0000";
        tmp(3) := b"1001 011 0000 0000 0000";
        tmp(4) := b"1001 100 0000 0000 0000";
        tmp(5) := b"1001 101 0000 0000 0000";
        tmp(6) := b"1001 110 0000 0000 0001";

        -- While
            -- END DISPLAY
        tmp(7) := b"0001 000 END DISPLAY0";
        tmp(8) := b"0001 001 END DISPLAY1";
        tmp(9) := b"0001 010 END DISPLAY2";
        tmp(10) := b"0001 011 END DISPLAY3";
        tmp(11) := b"0001 100 END DISPLAY4";
        tmp(12) := b"0001 101 END DISPLAY5";

            -- END US
        tmp(13) := b"0110 000 00 0000 1110";
        
        -- US
        tmp(14) := b"0100 000 00 0000 1001";
        tmp(15) := b"0101 000 00 0001 0010"
        tmp(16) := b"0111 000 00 0000 0001"
        tmp(17) := b"0110 000 00 0000 0111"

        -- DS
        tmp(18) := b"1001 000 00 0000 0000"
        tmp(19) := b"0100 001 00 0000 0101"
        tmp(20) := b"0101 000 00 0001 0111"
        tmp(21) := b"0111 001 00 0000 0001"
        tmp(22) := b"0110 000 00 0000 0111"

        -- UM
        tmp(23) := b"1001 001 00 0000 0000"
        tmp(24) := b"0100 010 00 0000 0101"
        tmp(25) := b"0101 000 00 0001 1100"
        tmp(26) := b"0111 010 00 0000 0001"
        tmp(27) := b"0110 000 00 0000 0111"

        -- DM
        tmp(28) := b"1001 010 00 0000 0000"
        tmp(29) := b"0100 011 00 0000 0101"
        tmp(30) := b"0101 000 00 0010 0001"
        tmp(31) := b"0111 011 00 0000 0001"
        tmp(32) := b"0110 000 00 0000 0111"

        -- UH
        tmp(33) := b"1001 011 00 0000 0000"
        tmp(34) := b"0100 101 00 0000 0010"
        tmp(35) := b"0101 000 00 0010 1101"
        tmp(36) := b"0100 100 00 0000 0101"
        tmp(37) := b"0101 000 00 0010 1101"
        tmp(38) := b"0111 100 00 0000 0001"
        tmp(39) := b"0110 000 00 0000 0111"

        -- UH2
        tmp(40) := b"1001 011 00 0000 0000"
        tmp(41) := b"0100 100 00 0000 0101"
        tmp(42) := b"0101 000 00 0010 1101"
        tmp(43) := b"0111 100 00 0000 0001"
        tmp(44) := b"0110 000 00 0000 0111"

        -- DH
        tmp(45) := b"1001 100 00 0000 0000"
        tmp(46) := b"0100 101 00 0000 0010"
        tmp(47) := b"0101 000 00 0011 0010"
        tmp(48) := b"0111 101 00 0000 0001"
        tmp(49) := b"0110 000 00 0000 0111"

        -- RESTART
        tmp(50) := b"1001 101 00 0000 0000"
        tmp(51) := b"0110 000 00 0000 0111"


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;