library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UC is
    generic (
        opcode_width : NATURAL := 4;
		operacao_width : NATURAL := 3;
    );
    port (
        -- Input ports
			opcode : in std_logic_vector(addr_width - 1 downto 0);

        -- Output ports
			operacao : out std_logic_vector(operacao_width - 1 downto 0);
			muxJump, jumpEqual, muxImediatoRAM, habilitaResgistrador, habilitaFlag, habilitaLeitutaMEM, habilitaEscritaMEM: out STD_LOGIC;
    );
end entity;

architecture comportamento of UC is

	constant LOAD  : std_logic_vector(addr_width - 1 downto 0) := "0000"
	constant STORE : std_logic_vector(addr_width - 1 downto 0) := "0001"
	constant INC   : std_logic_vector(addr_width - 1 downto 0) := "0010"
	constant DEC   : std_logic_vector(addr_width - 1 downto 0) := "0011"
	constant CMP   : std_logic_vector(addr_width - 1 downto 0) := "0100"
	constant JE    : std_logic_vector(addr_width - 1 downto 0) := "0101"
	constant JMP   : std_logic_vector(addr_width - 1 downto 0) := "0110"
	constant ADD   : std_logic_vector(addr_width - 1 downto 0) := "0111"
	constant SUB   : std_logic_vector(addr_width - 1 downto 0) := "1000"
	constant MOVI  : std_logic_vector(addr_width - 1 downto 0) := "1001"
	constant OR_   : std_logic_vector(addr_width - 1 downto 0) := "1010"
	constant AND_  : std_logic_vector(addr_width - 1 downto 0) := "1011"
	constant XOR_  : std_logic_vector(addr_width - 1 downto 0) := "1100"
	constant NOT_  : std_logic_vector(addr_width - 1 downto 0) := "1101"

	constant NOP   : std_logic_vector(addr_width - 1 downto 0) := "1111"

	constant ULA_ADD   : std_logic_vector(operacao_width - 1 downto 0) := "000"
	constant ULA_SUB   : std_logic_vector(operacao_width - 1 downto 0) := "001"
	constant ULA_SZA   : std_logic_vector(operacao_width - 1 downto 0) := "010"
	constant ULA_SZB   : std_logic_vector(operacao_width - 1 downto 0) := "011"
	constant ULA_XOR   : std_logic_vector(operacao_width - 1 downto 0) := "100"
	constant ULA_NOT   : std_logic_vector(operacao_width - 1 downto 0) := "101"
	constant ULA_AND   : std_logic_vector(operacao_width - 1 downto 0) := "110"
	constant ULA_OR    : std_logic_vector(operacao_width - 1 downto 0) := "111"
	
	
begin
	
	muxJump    <= '1' when opcode = JMP else '0';
	jumpEqual  <= '1' when opcode = JE  else '0';

	muxImediatoRAM  <= '0' when opcode = LOAD  else '1';

	habilitaResgistrador  <= '0' when opcode = STORE  
						else '0' opcode = CMP
						else '0' opcode = JE
						else '0' opcode = JMP
						else '1';

	operacao <= ULA_ADD when opcode = ADD else
				ULA_ADD when opcode = INC else

				ULA_SUB when opcode = SUB else
				ULA_SUB when opcode = DEC else
				ULA_SUB when opcode = CMP else

				ULA_SZA when opcode = NOP else

				ULA_SZB when opcode = MOVI else
				ULA_SZB when opcode = LOAD else

				ULA_XOR when opcode = XOR_ else
				ULA_NOT when opcode = NOT_ else
				ULA_AND when opcode = AND_ else
				ULA_OR  when opcode = OR_;

	habilitaFlag  <= '1' when opcode = CMP  else '0';

	habilitaLeitutaMEM  <= '1' when opcode = LOAD  else '0';

	habilitaEscritaMEM  <= '1' when opcode = STORE  else '0';
	
end architecture;