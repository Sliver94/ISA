library IEEE;
use IEEE.std_logic_1164.all;


ENTITY imm_gen IS
   PORT
   (
      instruction:       IN   std_logic_vector (31 DOWNTO 0);
		immediate:		    OUT  std_logic_vector (31 DOWNTO 0)
   );
END imm_gen;

ARCHITECTURE rtl OF imm_gen IS

BEGIN
   PROCESS (instruction)
   BEGIN
      IF instruction(6 downto 0) = "0010011" or instruction(6 downto 0) = "0000011" THEN -- OP-IMM or LOAD -> Instruction is I-type
			IF instruction(14 downto 12) = "101" THEN
				immediate(31 downto 4) <= (others => instruction(24));
				immediate(3 downto 0) <= instruction(23 downto 20);
			ELSE
				immediate(10 downto 0) <= instruction(30 downto 20);
				immediate(31 downto 11) <= (others => instruction(31));
			END IF;

		ELSIF instruction(6 downto 0) = "0110111" or instruction(6 downto 0) = "0010111" THEN -- LUI or AUIPC -> instruction is U-type
			immediate(31 downto 12) <= instruction(31 downto 12);
			immediate(11 downto 0) <= (others => '0');
				
		ELSIF instruction(6 downto 0) = "1100011" THEN --BRANCH -> Instruction is SB
			immediate(31 downto 12) <= (others => instruction(31));
			immediate(11) <= instruction(7);
			immediate(10 downto 5) <= instruction(30 downto 25);
			immediate(4 downto 1) <= instruction(11 downto 8);
			immediate(0) <= '0';
			
		ELSIF instruction(6 downto 0) = "1101111" THEN --JAL -> Instruction is UJ
			immediate(31 downto 20) <= (others => instruction(31));
			immediate(19 downto 12) <= instruction(19 downto 12);
			immediate(11) <= instruction(20);
			immediate(10 downto 1) <= instruction(30 downto 21);
			immediate(0) <= '0';

		ELSIF instruction(6 downto 0) = "0100011" THEN --STORE -> Instruction is S
			immediate(31 downto 11) <= (others => instruction(31));
			immediate(10 downto 5) <= instruction(30 downto 25);
			immediate(4 downto 0) <= instruction(11 downto 7);
			
		ELSE
			immediate <= (others => '0');
			
      END IF;
   END PROCESS;
END rtl;