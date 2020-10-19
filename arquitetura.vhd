library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Arquitetura registrdor memória

entity arquitetura is 
	generic (
		opcode_width : natural := 4;
		regs_width : natural := 3;
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
		clk 				: in std_logic;
		in_Mux_Ram 		: in std_logic_vector(data_width - 1 downto 0);
		instrucao		: in std_logic_vector(inst_width - 1 downto 0);
		
		sel_MuxInstRAM	: in std_logic;
		hab_memReg		: in std_logic;
		op_ULA			: in std_logic_vector(2 downto 0);
		hab_flag			: in std_logic;
		
		out_memReg 		: out std_logic_vector(data_width - 1 downto 0);
		out_flag			: out std_logic
	);
end entity;

architecture comportamento of arquitetura is 
	signal regs					: std_logic_vector(regs_width - 1 downto 0);
	signal data 				: std_logic_vector(data_width - 1 downto 0);
	
	signal out_MuxInstRAM 	: std_logic_vector(data_width - 1 downto 0);
	signal out_ULA 			: std_logic_vector(data_width - 1 downto 0);
	signal out_ULA_flag		: std_logic;
	
	signal s_out_memReg		: std_logic_vector(data_width - 1 downto 0);
	signal hab_muxJump		: std_logic;
	
begin
	
	regs <= instrucao(addr_width + regs_width - 1 downto addr_width);
	data <= instrucao(data_width - 1 downto 0);

	muxInstRAM : entity work.muxGenerico2x1
		generic map (
			larguraDados 	=> data_width
		)
		port map (
			entradaA_MUX 	=> in_Mux_Ram,
			entradaB_MUX 	=> data,
			seletor_MUX  	=> sel_MuxInstRAM,
			saida_MUX    	=> out_MuxInstRAM
		);

	
	memReg : entity work.bancoRegistradoresArqRegMem
		port map (
			clk        			=> clk,
			endereco       	=> regs,
			dadoEscrita    	=> out_ULA,
			habilitaEscrita	=> hab_memReg,
			saida          	=>	s_out_memReg
		);
	
	ULA : entity work.ULA
		generic map (
			larguraDados => data_width
		)
		port map (
			entradaA		=> s_out_memReg,
			entradaB		=> out_MuxInstRAM,
			seletor		=> op_ULA,
			saida			=> out_ULA,
			flagZero		=> out_ULA_flag
		);
	
	flag : entity work.flag
		port map (
			in_flag 		=> out_ULA_flag,
			hab_flag 	=> hab_flag,
			CLK			=> clk,
			out_flag 	=> hab_muxJump
		);
		
	out_memReg <= s_out_memReg;
	out_flag <= hab_muxJump;
	
end architecture;