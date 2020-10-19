LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
	port(
		clk      			: in std_logic;
		habilitaLeitura 	: in std_logic;
		limpaLeitura 		: in std_logic;
		seletor     		: in std_logic;
		leituraUmSegundo 	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture interface of divisorGenerico_e_Interface is

	signal sinalUmSegundo 	: std_logic;
	signal saidaclk_reg1seg : std_logic;
	signal saidaX1, saidaX1000, saidaMux : std_logic;

begin

baseTempoX1: entity work.divisorGenerico
         generic map (
				divisor => 25000000
			)  -- divide por 10.
         port map (
            clk => clk, 
            saida_clk => saidaX1
         );
			
baseTempoX1000: entity work.divisorGenerico
         generic map (
				divisor => 25000
			)  -- divide por 10.
         port map (
            clk => clk, 
            saida_clk => saidaX1000
         );
			
muxBaseTempo: entity work.muxGenericoBit2x1
	port map (
    entradaA_MUX => saidaX1,
	 entradaB_MUX => saidaX1000,
    seletor_MUX => seletor,
    saida_MUX => saidaMux
  );

registraUmSegundo: entity work.flipflopGenerico
   port map (
      DIN => '1', 
      DOUT => sinalUmSegundo,
      ENABLE => '1', 
      CLK => saidaMux,
      RST => limpaLeitura
      );

-- Faz o tristate de saida:
leituraUmSegundo <= ("0000000" & sinalUmSegundo) when (habilitaLeitura = '1') else "00000000";

end architecture interface;