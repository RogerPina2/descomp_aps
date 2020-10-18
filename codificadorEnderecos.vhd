library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity codificadorEnderecos is
	generic (
		opcode_width : natural := 4;
		regs_width : natural := 3;
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
		addr : in std_logic_vector(addr_width - 1 downto 0);
	
		habilitaRAM 		: out std_logic;
		habilitaDisplay 	: out std_logic;
		habilitaSW			: out std_logic;
		habilitaKEY			: out std_logic;
		habilitaLED			: out std_logic;
		habilitaBT			: out std_logic
	);
end entity;

architecture comportamento of codificadorEnderecos is
	
begin
	habilitaRAM  						<= (addr(9) and addr(8));										
--	habilitaBT	 						<= (addr(9) and not(addr(8)));								
--	habilitaDisplay, habilitaLED 	<= not(addr(9)) and addr(8);				
--	habilitaSW, habilitaKEY			<= not(addr(9)) and not(addr(8));							
				
	
						
end architecture;