library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Conexão entre o processador e periféricos

entity projeto1 is
	generic (
		opcode_width : natural := 4;
		
		regs_width : natural := 3;
		
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
--		-- Input ports
		CLOCK_50 : in std_logic;
		SW       : in std_logic_vector(8 downto 0);
		KEY      : in std_logic_vector(3 downto 0);
		-- Output ports
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0);

		pinoTeste		: out std_logic_vector(9 downto 0);
		t_outMem			: out std_logic_vector(data_width - 1 downto 0);
		t_BT				: out std_logic_vector(data_width - 1 downto 0)
	);
end entity;

architecture comportamento of projeto1 is

	signal out_dataRAM: std_logic_vector(data_width - 1 downto 0);
	
	signal in_dataRAM	: std_logic_vector(data_width - 1 downto 0);
	signal addr			: std_logic_vector(addr_width - 1 downto 0);
	
	signal habLeiMEM 	: std_logic;
	signal habEscMEM 	: std_logic;

	signal habDisplay : std_logic;
	signal habBotao   : std_logic;
	signal habChave	: std_logic;
	
	signal endDisp		: std_logic_vector(2 downto 0);
	signal endChave	: std_logic_vector(3 downto 0);
	signal endBut		: std_logic_vector(1 downto 0);
	
	signal habBT 		: std_logic;
	signal limpaBT 		: std_logic;
	
	signal saidaChave, saidaBotao, saidaBT : std_logic_vector(data_width - 1 downto 0);
	
	signal inDisplay : std_logic_vector(3 downto 0);
begin

	t_BT <= saidaBT;

	inDisplay <= in_dataRAM(3 downto 0);
	out_dataRAM <= saidaChave when (habChave = '1') else
						saidaBotao when (habBotao = '1') else
						saidaBT    when (habBT = '1') else
						"00000000";
	
	processador : entity work.processador
		generic map (
			opcode_width => opcode_width,
			regs_width => regs_width,
			data_width => data_width,
			addr_width => addr_width,
			inst_width => inst_width
		)
		port map(
			clk 					=> CLOCK_50,
			in_MuxRAM 			=> out_dataRAM,
			out_memReg 			=> in_dataRAM,
			out_addrImediato 	=> addr,
			pinoTeste			=>	pinoTeste,
			t_outMem				=> t_outMem,
			out_habLeiMEM 		=> habLeiMEM,
			out_habEscMEM 		=> habEscMEM
		);
		
		
	de : entity work.decodificador
	port map  (
			enderecos       => addr(7 downto 0),
			habLeitura      => habLeiMEM,
			habEscrita      => habEscMEM,

			habilitaDisplay => habDisplay,
			enderecoDisplay => endDisp,

			habilitaChave   => habChave,
			enderecoChave   => endChave,

			habilitaBotao   => habBotao,
			enderecoBotao   => endBut,

			habilitaTempo   => habBT,
			limpaLeitura    => limpaBT
		 );
	
	display : entity work.interfaceDisplay
	port map  (
			data_display => inDisplay,
			habilita => habDisplay,
			endereco => endDisp,

			H0 => HEX0, 
			H1 => HEX1, 
			H2 => HEX2,
			H3 => HEX3,
			H4 => HEX4,
			H5 => HEX5
		);
	
	chaves : entity work.interfaceChave
	port map  (
			entradaChaves => SW(8 downto 0),
			habilita => habChave,
			endereco => endChave,

			saidaChaves => saidaChave
	);
	
	
	botoes : entity work.interfaceBotao
	port map  (
			entrada => KEY(3 downto 0),
			habilita => habBotao,
			endereco => endBut,

			saida => saidaBotao
	);
	
	
	baseTempo : entity work.divisorGenerico_e_Interface
	port map (
		clk      => CLOCK_50,
		seletor => SW(8),
      habilitaLeitura => habBT,
      limpaLeitura => limpaBT,
      leituraUmSegundo => saidaBT
   );


end architecture;