library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaRegistradores is
	generic (
		opcd_width : natural := 4;
		regs_width : natural := 3;
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
		clk 				: in std_logic;
		in_memReg 		: in std_logic_vector(data_width - 1 downto 0);
		in_regCode		: in std_logic_vector(regs_width - 1 downto 0);
		
		hab_memRegEsc 	: in std_logic;
		
		out_memReg 		: out std_logic_vector(data_width - 1 downto 0)
	);
end entity;

architecture comportamento of memoriaRegistradores is 
	
	signal hab_R0 : std_logic;
	signal hab_R1 : std_logic;
	signal hab_R2 : std_logic;
	signal hab_R3 : std_logic;
	signal hab_R4 : std_logic;
	signal hab_R5 : std_logic;
	signal hab_R6 : std_logic;
	signal hab_R7 : std_logic;
	
begin
	
	hab_R0 <= '1' when in_regCode = "000";
	hab_R1 <= '1' when in_regCode = "001";
	hab_R2 <= '1' when in_regCode = "010";
	hab_R3 <= '1' when in_regCode = "011";
	hab_R4 <= '1' when in_regCode = "100";
	hab_R5 <= '1' when in_regCode = "101";
	hab_R6 <= '1' when in_regCode = "110";
	hab_R7 <= '1' when in_regCode = "111";

	R0 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R0,
			CLK    => clk,
			RST    => '0'
		);
	
	R1 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R1,
			CLK    => clk,
			RST    => '0'
		);
		
	R2 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R2,
			CLK    => clk,
			RST    => '0'
		);
		
	R3 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R3,
			CLK    => clk,
			RST    => '0'
		);
		
	R4 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R4,
			CLK    => clk,
			RST    => '0'
		);
		
	R5 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R5,
			CLK    => clk,
			RST    => '0'
		);
		
	R6 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R6,
			CLK    => clk,
			RST    => '0'
		);
		
	R7 : entity work.registradorGenerico
		generic map (
			larguraDados => data_width
		)
		port map (
			DIN    => in_memReg,
			DOUT   => out_memReg,
			ENABLE => hab_R7,
			CLK    => clk,
			RST    => '0'
		);
	
end architecture;