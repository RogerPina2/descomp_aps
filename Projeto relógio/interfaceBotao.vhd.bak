library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interfaceBotao is
	port (
        entrada : in std_logic_vector(3 downto 0);
        habilita : in std_logic;
        endereco : in std_logic_vector(1 downto 0);

		saida : out std_logic_vector(7 downto 0)
	);
end entity;

architecture comportamento of interfaceBotao is
	
begin

    saida        <= "0000000" & entrada(0) when (habilita = '1' and endereco = "00") else
                    "0000000" & entrada(1) when (habilita = '1' and endereco = "01") else
                    "0000000" & entrada(2) when (habilita = '1' and endereco = "10") else
                    "0000000" & entrada(3) when (habilita = '1' and endereco = "11") else
                    "00000000";
	

end architecture;