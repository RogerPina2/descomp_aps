library ieee;
use ieee.std_logic_1164.all;

entity processador is
	port (
		CLOCK_50 : in std_logic;
		SW : in std_logic_vector(9 down to 0);
		LEDR : out std_logic_vector(9 downto 0)
	);
end entity;

architecture comportamento of processador is

begin
	LEDR(9 downto 0) <= SW(9 downto 0);
	
end architecture;