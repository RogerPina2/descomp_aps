library ieee;
use ieee.std_logic_1164.all;

entity cpu is
	generic (
		data_width : NATURAL := 8;
      addr_width: NATURAL := 12;
	);
	
	port (
		clk : in std_logic;
		
		
		-- SW : in std_logic_vector(9 downto 0);
		-- KEY : out std_logic_vector(3 downto 0);
		-- HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
	);
end entity;

architecture comportamento of cpu is

begin
	LEDR(9 downto 0) <= SW(9 downto 0);
	
end architecture;