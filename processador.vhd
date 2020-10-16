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
		
		in_arqMuxRAM 	: in std_logic_vector(addr_width - 1 downto 0);
		
		out_instrucao 	: out std_logic_vector(addr_width - 1 downto 0);
		out_memReg 		: out std_logic_vector(data_width - 1 downto 0);
		
		out_habLeiMEM 	: out std_logic;
		out_habEscMEM 	: out std_logic	
	);
end entity;

architecture comportamento of processador is
	
	
	signal opcode		: std_logic_vector(opcd_width - 1 downto 0);
	signal instROM 	: std_logic_vector(addr_width - 1 downto 0);
	
	signal out_UC_muxJump			: std_logic;
	signal out_UC_je					: std_logic;
	signal out_UC_sel_MuxInstRAM	: std_logic;
	signal out_UC_hab_memReg		: std_logic;
	signal out_UC_op_ULA				: std_logic_vector(2 downto 0);
	signal out_UC_hab_flag			: std_logic;
	
	signal out_flag 					: std_logic;
	signal s_out_instrucao			: std_logic_vector(addr_width - 1 downto 0);
	
begin
	
	opcode <= s_out_instrucao((inst_width - 1) downto (inst_width - opcd_width));
	instROM <= s_out_instrucao(addr_width - 1 downto 0);
	
	fetch : entity work.fetch
		generic map (
			data_width => data_width,
         addr_width => addr_width
		)		
		port map (
			clk 					=> clk,
			je						=> out_UC_je,
			sel_MuxJump 		=> out_UC_muxJump,
			flag 					=> out_flag,
			endereco_desvio 	=> instROM,
			instrucao 			=> s_out_instrucao
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
			in_Mux_Ram 		=> in_arqMuxRAM,
			instrucao		=> s_out_instrucao,
			sel_MuxInstRAM	=> out_UC_sel_MuxInstRAM,
			hab_memReg		=> out_UC_hab_memReg,
			op_ULA			=> out_UC_op_ULA,
			hab_flag			=> out_UC_hab_flag,
			out_memReg 		=> out_memReg,
			out_flag			=> out_flag
		);
			
	UC : entity work.UC
		generic map (
			opcd_width => opcd_width,
			regs_width => regs_width,
			data_width => data_width,
			addr_width => addr_width,
			inst_width => inst_width
		)
		port map (
			opcode 			=> opcode,
			muxJump 			=> out_UC_muxJump,
			je					=> out_UC_je,
			sel_MuxInstRAM	=> out_UC_sel_MuxInstRAM,
			hab_memReg		=> out_UC_hab_memReg,
			op_ULA			=> out_UC_op_ULA,
			hab_flag			=> out_UC_hab_flag,
			habLeiMEM		=> out_habLeiMEM,
			habEscMEM		=> out_habEscMEM
		);
		

	out_instrucao <= s_out_instrucao;
end architecture;