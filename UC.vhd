library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UC is
	generic (
		opcd_width : natural := 4;
		regs_width : natural := 3;
		data_width : natural := 8;
		addr_width : natural := 10;
		inst_width : natural := 17
	);
	port (
		opcode 			: in std_logic_vector(3 downto 0);
		
		muxJump 			: out std_logic;
		je					: out std_logic;
		
		sel_MuxInstRAM	: out std_logic;
		hab_memReg		: out std_logic;
		op_ULA			: out std_logic_vector(2 downto 0);
		hab_flag			: out std_logic;
		
		habLeiMEM		: out std_logic;
		habEscMEM		: out std_logic
	);
end entity;

architecture comportamento of UC is

		signal s_muxJump 			: std_logic;
		signal s_je					: std_logic;
		signal s_sel_MuxInstRAM	: std_logic;
		signal s_hab_memReg		: std_logic;
		signal s_op_ULA			: std_logic_vector(2 downto 0);
		signal s_hab_flag			: std_logic;
		signal s_habLeiMEM		: std_logic;
		signal s_habEscMEM		: std_logic;
		
		constant JMP : std_logic_vector(3 downto 0) := "0110"; 

begin
	-- habLeiMEM
	-- habEscMEM
	
--	process(opcode)
--	begin
--		case opcode is
--			when "0110" => 
--				s_muxJump 			<= '1', 
--				s_je 				<= '0',
--				s_sel_MuxInstRAM <= '0',
--				s_hab_memReg		<= '0',
--				s_op_ULA			<= "000",
--				s_hab_flag			<= '0',
--				s_habLeiMEM		<= '0',
--				s_habEscMEM		<= '0';
--		end case;
--	end process;
--	
--	muxJump 			<= s_muxJump; 
--	je 				<= s_je;
--	sel_MuxInstRAM <= s_sel_MuxInstRAM;
--	hab_memReg		<= s_hab_memReg;
--	op_ULA			<= s_op_ULA;
--	hab_flag			<= s_hab_flag;
--	habLeiMEM		<= s_habLeiMEM;
--	habEscMEM		<= s_habEscMEM;

s_muxJump <= '1' when opcode = JMP else '0';
s_je <= '1' when opcode = "0111" else '0';


end architecture;