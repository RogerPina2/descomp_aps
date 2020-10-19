library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interfaceDisplay is
	port (
		data_display : in std_logic_vector(3 downto 0);
		habilita : in std_logic;
		endereco : in std_logic_vector(2 downto 0);

		H0, H1, H2, H3, H4, H5 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture comportamento of interfaceDisplay is

    signal habilita0, habilita1, habilita2, habilita3, habilita4, habilita5 : std_logic;
	
begin
	display0 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita0,
        saida7seg => H0
	);

    display1 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita1,
        saida7seg => H1
	);

    display2 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita2,
        saida7seg => H2
	);

    display3 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita3,
        saida7seg => H3
	);

    display4 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita4,
        saida7seg => H4
	);

    display5 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        habilita => habilita5,
        saida7seg => H5
	);

    habilita0 <= '1' when (habilita = '1' and endereco = "000") else '0';
    habilita1 <= '1' when (habilita = '1' and endereco = "001") else '0';
    habilita2 <= '1' when (habilita = '1' and endereco = "010") else '0';
    habilita3 <= '1' when (habilita = '1' and endereco = "011") else '0';
    habilita4 <= '1' when (habilita = '1' and endereco = "100") else '0';
    habilita5 <= '1' when (habilita = '1' and endereco = "101") else '0';
	

end architecture;