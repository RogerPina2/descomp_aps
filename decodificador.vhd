library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is
    generic (
          addrRAMWidth: natural  := 9;
          addrDispWidth: natural := 3;
          addrWidth: natural     := 10
    );
	port (
		enderecosMEM    : in std_logic_vector (addrWidth-1 DOWNTO 0);
		habLeitura      : in std_logic;
        habEscrita      : in std_logic;


		enderecoRAM     : out std_logic_vector (addrRAMWidth-1 DOWNTO 0);
        habilitaRAM     : out std_logic;

		habilitaLEDR    : out std_logic;
        enderecoLEDR    : out std_logic;

        habilitaDisplay : out std_logic;
        enderecoDisplay : out std_logic_vector (addrDispWidth-1 DOWNTO 0);

        habilitaKEY     : out std_logic;
        enderecoKEY     : out std_logic;

        habilitaTempo   : out std_logic;
        limpaLeitura    : out std_logic
		 );
end entity;

architecture comportamento of decodificador is

begin

    enderecoRAM <= enderecosMEM(addrRAMWidth-1 DOWNTO 0);
    habilitaRAM <= '1' when enderecosMEM(addrWidth-1) = '0' else '0';

    enderecoLEDR <= '0' when enderecosMEM = "1000000000" else '1';
    habilitaLEDR <= '1' when enderecosMEM = "1000000000"
            	else '1' when enderecosMEM = "1000000001"
                else '0';

    enderecoDisplay <= "000" when enderecosMEM = "1000000010"
            	else "001" when enderecosMEM = "1000000011"
                else "010" when enderecosMEM = "1000000100"
                else "011" when enderecosMEM = "1000000101"
                else "100" when enderecosMEM = "1000000110"
                else "101" when enderecosMEM = "1000000111"
                else "111";
    habilitaDisplay <= '1' when enderecosMEM = "1000000010"
            	else '1' when enderecosMEM = "1000000011"
                else '1' when enderecosMEM = "1000000100"
                else '1' when enderecosMEM = "1000000101"
                else '1' when enderecosMEM = "1000000110"
                else '1' when enderecosMEM = "1000000111"
                else '0';

    enderecoKEY <= '0' when enderecosMEM = "1000001000" else '1';
    habilitaKEY <= '1' when enderecosMEM = "1000001000"
            	else '1' when enderecosMEM = "1000001001"
                else '0';

    habilitaTempo <= '1' when enderecosMEM = "1000001010" else '0';
    limpaLeitura <= '1' when enderecosMEM = "1000001010" else '0';

end architecture;