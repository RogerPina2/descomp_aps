library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flag is 
	port (
		in_flag 		: in std_logic;
		hab_flag 	: in std_logic;
		CLK 	      : in std_logic;
		out_flag    : out std_logic
	);
end entity;

architecture comportamento of flag is


begin

	flipFlop : entity work.flipFlop
		generic map (
			DIN : in std_logic,
			DOUT : out std_logic,
			ENABLE : in std_logic,
			CLK,RST : in std_logic
		)
		port map (
			DIN => in_flag,
			DOUT => out_flag,
			ENABLE => hab_flag,
			CLK => CLK,
			RST => '0'
		);
	
	
end architecture;