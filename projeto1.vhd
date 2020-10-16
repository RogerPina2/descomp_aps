library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity projeto1 is
	generic (
		data_width : NATURAL := 18;
      addr_width: NATURAL := 10
	);
	port (
		-- Input ports
		CLOCK_50 : in std_logic;
		SW       : in std_logic_vector(7 downto 0);
		KEY      : in std_logic_vector(3 downto 0);
		-- Output ports
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)
	);
end entity;

architecture comportamento of projeto1 is
	
begin

end architecture;