library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fetch is
    generic (
        data_width : NATURAL := 8;
        addr_width: NATURAL := 3;
        incremento : NATURAL := 1
    );
    port (
        -- Input ports
        clk      : in std_logic;
        sel_MuxPC : in std_logic;
        endereco_desvio : in std_logic_vector(addr_width - 1 downto 0);

        -- Output ports
        instrucao : out std_logic_vector(data_width - 1 downto 0)
    );
end entity;

architecture comportamento of fetch is
	signal out_MuxPC : std_logic_vector(addr_width - 1 downto 0);
	signal out_RegPC : std_logic_vector(addr_width - 1 downto 0);
	signal out_SomPC : std_logic_vector(addr_width - 1 downto 0);
	
begin
	somPC : entity work.somaConstante
		generic map (
			larguraDados => addr_width,
			constante    => incremento
		)
		
		port map (
			entrada => out_RegPC,
			saida   => out_SomPC
		);
		
	muxPC : entity work.muxGenerico2x1
		generic map (
			larguraDados => addr_width
		)
		port map (
			entradaA_MUX => out_SomPC,
			entradaB_MUX => endereco_desvio,
			seletor_MUX  => sel_MuxPC,
			saida_MUX    => out_MuxPC
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

	ROM : ENTITY work.memoria
		generic map (
			dataWidth => data_width,
			addrWidth => addr_width
		)
		port map (
			Endereco => out_RegPC,
			Dado     => instrucao
		);
	
end architecture;