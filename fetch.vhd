library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fetch is
	generic (
		incremento : NATURAL := 1;

		data_width : NATURAL := 8;
		addr_width: NATURAL := 10;
		inst_width: NATURAL := 17
	);
	port (
		clk      		: in std_logic;
		sel_muxJump		: in std_logic;

		out_instrucao 	: out std_logic_vector(inst_width - 1 downto 0);

		pinoTeste 		: out std_logic_vector(9 downto 0)
	);
end entity;

architecture comportamento of fetch is
	signal addr_desvio 	: std_logic_vector(addr_width - 1 downto 0);
	
	signal out_RegPC 		: std_logic_vector(addr_width - 1 downto 0);
	signal out_SomPC 		: std_logic_vector(addr_width - 1 downto 0);
	signal out_MuxPC 		: std_logic_vector(addr_width - 1 downto 0);
	signal out_ROM 		: std_logic_vector(inst_width - 1 downto 0);
	
begin
		
	muxPC : entity work.muxGenerico2x1
		generic map (
			larguraDados => addr_width
		)
		port map (
			entradaA_MUX => out_SomPC,
			entradaB_MUX => addr_desvio,
			seletor_MUX  => sel_muxJump,
			saida_MUX    => out_MuxPC
		);
		  
	somPC : entity work.somaConstante
		generic map (
			larguraDados => addr_width,
			constante    => incremento
		)
		
		port map (
			entrada => out_RegPC,
			saida   => out_SomPC
		);
		

	registerPC : entity work.registradorGenerico
		generic map (
			larguraDados => addr_width
		)
		port map (
			DIN    => out_MuxPC,
			DOUT   => out_RegPC,
			ENABLE => '1',
			CLK    => clk,
			RST    => '0'
		);

	ROM : ENTITY work.memoriaROM
		generic map (
			dataWidth => data_width,
			addrWidth => addr_width
		)
		port map (
			Endereco => out_RegPC,
			Dado     => out_ROM
		);
		
		pinoTeste <= out_RegPC;
		
		out_instrucao <= out_ROM;
		addr_desvio <= out_ROM(9 downto 0);
		
	
end architecture;