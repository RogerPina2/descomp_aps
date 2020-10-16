library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
	generic (
		opcd_width : natural := 4;
		regs_width : natural := 3;
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
		clk 				: in std_logic;
		
		in_MuxRAM 		: in std_logic_vector(addr_width - 1 downto 0);
		
		out_memReg 		: out std_logic_vector(data_width - 1 downto 0);
		out_instrucao 	: out std_logic_vector(addr_width - 1 downto 0);
		
		out_habLeiMEM 	: out std_logic;
		out_habEscMEM 	: out std_logic	
	);
end entity;

architecture comportamento of processador is
	
	signal instrucao	: std_logic_vector(addr_width - 1 downto 0);
		
	signal opcode		: std_logic_vector(opcd_width - 1 downto 0);
	
	signal UC_op			: std_logic_vector(2 downto 0);
	signal UC_muxJump		: std_logic;
	signal UC_jumpEqual	: std_logic;
	signal UC_muxRAM		: std_logic;
	signal UC_habReg		: std_logic;
	signal UC_habFlag		: std_logic;
	signal UC_habLeiMEM	: std_logic;
	signal UC_habEscMEM	: std_logic;
	
	signal pinoTeste		: std_logic_vector(9 downto 0);
	
	signal out_Reg			: std_logic_vector(data_width - 1 downto 0);
	signal out_Flag		: std_logic;
	
begin
	
	opcode <= instrucao((inst_width - 1) downto (inst_width - opcd_width));
	
	UC : entity work.UC
		generic map (
			opcd_width => opcd_width,
			regs_width => regs_width,
			data_width => data_width,
			addr_width => addr_width,
			inst_width => inst_width
		)
		port map (
			opcode 					=> opcode,
			operacao 				=> UC_op,
			muxJump					=> UC_muxJump,
			jumpEqual				=> UC_jumpEqual,
			muxImediatoRAM			=> UC_muxRAM,
			habilitaResgistrador	=> UC_habReg,
			habilitaFlag			=> UC_habFlag,
			habilitaLeitutaMEM	=> UC_habLeiMEM,
			habilitaEscritaMEM	=> UC_habEscMEM
		);
	
	fetch : entity work.fetch
		generic map (
			data_width => data_width,
         addr_width => addr_width
		)		
		port map (
			clk 					=> clk,
			flag 					=> out_Flag,
			jumpEqual			=> UC_jumpEqual,
			selMuxJump 			=> UC_muxJump,
			
			out_instrucao 		=> instrucao,
			pinoTeste			=>	pinoTeste
		);
	
	arquitetura : entity work.arquitetura
		generic map (
			opcd_width => opcd_width,
			regs_width => regs_width,
			data_width => data_width,
			addr_width => addr_width,
			inst_width => inst_width
		)
		port map (
			clk 				=> clk,
			in_Mux_Ram 		=> UC_muxRAM,
			instrucao		=> instrucao,
			sel_MuxInstRAM	=> UC_muxRAM,
			hab_memReg		=> UC_habReg,
			op_ULA			=> UC_op,
			hab_flag			=> UC_habFlag,
			
			out_memReg 		=> out_Reg,
			out_flag			=> out_Flag
		);
			
	out_memReg <= out_Reg;
	out_instrucao <= s_out_instrucao;
	out_habLeiMEM <= UC_habLeiMEM;
	out_habEscMEM <= UC_habEscMEM;
end architecture;