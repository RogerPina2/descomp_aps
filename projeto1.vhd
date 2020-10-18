library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
--		SW       : in std_logic_vector(7 downto 0);
--		KEY      : in std_logic_vector(3 downto 0);
--		-- Output ports
--		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)

		pinoTeste			: out std_logic_vector(9 downto 0);
		t_outMem				: out std_logic_vector(data_width - 1 downto 0);
		
		habRAM 		: out std_logic;
		habDisplay 	: out std_logic;
		habSW 		: out std_logic;
		habKEY 		: out std_logic;
		habLED 		: out std_logic;
		habBT 		: out std_logic;

		us : out std_logic_vector(data_width - 1 downto 0);
		ds : out std_logic_vector(data_width - 1 downto 0);
		um : out std_logic_vector(data_width - 1 downto 0);
		dm : out std_logic_vector(data_width - 1 downto 0);
		uh : out std_logic_vector(data_width - 1 downto 0);
		dh : out std_logic_vector(data_width - 1 downto 0)
	);
end entity;

architecture comportamento of projeto1 is

	signal out_dataRAM: std_logic_vector(data_width - 1 downto 0);
	
	signal in_dataRAM	: std_logic_vector(data_width - 1 downto 0);
	signal addr			: std_logic_vector(addr_width - 1 downto 0);
	
	signal habLeiMEM 	: std_logic;
	signal habEscMEM 	: std_logic;
	
--	signal habRAM 		: std_logic;
--	signal habDisplay : std_logic;
--	signal habSW 		: std_logic;
--	signal habKEY 		: std_logic;
--	signal habLED 		: std_logic;
--	signal habBT 		: std_logic;
	
	signal s_habRAM : std_logic;
	
begin
	
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
		
	RAM : entity work.memoriaRAM
		generic map (
			dataWidth => data_width,
         addrWidth => addr_width
		)
		port map (
			addr     => addr,
			re			=> habLeiMEM,
			we   		=> habEscMEM,
			habilita => s_habRAM,
			clk      => CLOCK_50,
			dado_in  => in_dataRAM,
			dado_out => out_dataRAM,
			out_us	=> us,
			out_ds	=> ds,
			out_um	=> um,
			out_dm	=> dm,
			out_uh	=> uh,
			out_dh	=> dh
		);
		
	codificador : entity work.codificadorEnderecos
		generic map (
			opcode_width 	=> opcode_width,
			regs_width 		=> regs_width,
			data_width 		=> data_width,
			addr_width 		=> addr_width,
			inst_width 		=> inst_width
		)
		port map (
			addr 					=> addr,
			habilitaRAM			=> s_habRAM,
			habilitaDisplay 	=> habDisplay,
			habilitaSW			=> habSW,
			habilitaKEY			=> habKEY,
			habilitaLED			=> habLED,
			habilitaBT			=> habBT
		);
	
	habRAM <= s_habRAM;

end architecture;