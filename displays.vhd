library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity displays is
	port (
		H0, H1, H2, H3, H4, H5 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture comportamento of displays is

	signal data_display : std_logic_vector(3 downto 0);
	
begin
	display0 : entity work.conversorHex7Seg
		port map (
        dadoHex 	=> data_display,
        apaga   	=> '0',
        negativo 	=> '0',
        overFlow 	=> '0',
        saida7seg => H0
		);
	

end architecture;