library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is
    generic (
          addrDispWidth: natural := 3;
			 addrSWWidth: natural := 4;
			 addrKEYWidth: natural := 2;
          addrWidth: natural     := 8
    );
	port (
		enderecos    		: in std_logic_vector (addrWidth-1 DOWNTO 0);
		habLeitura      	: in std_logic;
		habEscrita      	: in std_logic;

		habilitaDisplay 	: out std_logic;
		enderecoDisplay 	: out std_logic_vector (addrDispWidth-1 DOWNTO 0);

		habilitaChave     : out std_logic;
		enderecoChave     : out std_logic_vector (addrSWWidth-1 DOWNTO 0);

		habilitaBotao     : out std_logic;
		enderecoBotao     : out std_logic_vector (addrKEYWidth-1 DOWNTO 0);

		habilitaTempo   	: out std_logic;
		limpaLeitura    	: out std_logic
	);
end entity;

architecture comportamento of decodificador is

begin

    habilitaDisplay  <= '1' when (habEscrita = '1' and enderecos = x"00") else
                        '1' when (habEscrita = '1' and enderecos = x"01") else
                        '1' when (habEscrita = '1' and enderecos = x"02") else
                        '1' when (habEscrita = '1' and enderecos = x"03") else
                        '1' when (habEscrita = '1' and enderecos = x"04") else
                        '1' when (habEscrita = '1' and enderecos = x"05") else
                        '0';

    enderecoDisplay  <= "000" when enderecos = x"00" else
                        "001" when enderecos = x"01" else
                        "010" when enderecos = x"02" else
                        "011" when enderecos = x"03" else
                        "100" when enderecos = x"04" else
                        "101" when enderecos = x"05" else
                        "111";



    habilitaChave       <= '1' when (habLeitura = '1' and enderecos = x"06") else
                        '1' when (habLeitura = '1' and enderecos = x"07") else
                        '1' when (habLeitura = '1' and enderecos = x"08") else
                        '1' when (habLeitura = '1' and enderecos = x"09") else
                        '1' when (habLeitura = '1' and enderecos = x"0A") else
                        '1' when (habLeitura = '1' and enderecos = x"0B") else
                        '1' when (habLeitura = '1' and enderecos = x"0C") else
                        '1' when (habLeitura = '1' and enderecos = x"0D") else
                        '1' when (habLeitura = '1' and enderecos = x"0E") else
                        '0';

    enderecoChave       <= "0000" when enderecos = x"06" else
                        "0001" when enderecos = x"07" else
                        "0010" when enderecos = x"08" else
                        "0011" when enderecos = x"09" else
                        "0100" when enderecos = x"0A" else
                        "0101" when enderecos = x"0B" else
                        "0110" when enderecos = x"0C" else
                        "0111" when enderecos = x"0D" else
                        "1000" when enderecos = x"0E" else
                        "1111";


    habilitaBotao      <= '1' when (habLeitura = '1' and enderecos = x"0F") else
                        '1' when (habLeitura = '1' and enderecos = x"10") else
                        '1' when (habLeitura = '1' and enderecos = x"11") else
                        '1' when (habLeitura = '1' and enderecos = x"12") else
                        '0';

    enderecoBotao      <= "00" when enderecos = x"0F" else

                        "01" when enderecos = x"10" else
                        "10" when enderecos = x"11" else
                        "11" when enderecos = x"12";

    habilitaTempo <= '1' when (habLeitura = '1' and enderecos = x"13") else '0';
    limpaLeitura  <= '1' when (habEscrita = '1' and enderecos = x"14") else '0';

end architecture;