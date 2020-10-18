library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interfaceChave is
	port (
        entradaChaves : in std_logic_vector(8 downto 0);
        habilita : in std_logic;
        endereco : in std_logic_vector(3 downto 0);

		saidaChaves : out std_logic_vector(7 downto 0)
	);
end entity;

architecture comportamento of interfaceChave is
	
begin

    saidaChaves  <= "0000000" & entradaChaves(0) when (habilita = '1' and endereco = "0000") else
                    "0000000" & entradaChaves(1) when (habilita = '1' and endereco = "0001") else
                    "0000000" & entradaChaves(2) when (habilita = '1' and endereco = "0010") else
                    "0000000" & entradaChaves(3) when (habilita = '1' and endereco = "0011") else
                    "0000000" & entradaChaves(4) when (habilita = '1' and endereco = "0100") else
                    "0000000" & entradaChaves(5) when (habilita = '1' and endereco = "0101") else
                    "0000000" & entradaChaves(6) when (habilita = '1' and endereco = "0110") else
                    "0000000" & entradaChaves(7) when (habilita = '1' and endereco = "0111") else
                    "0000000" & entradaChaves(8) when (habilita = '1' and endereco = "1000") else
                    "00000000";
	

end architecture;