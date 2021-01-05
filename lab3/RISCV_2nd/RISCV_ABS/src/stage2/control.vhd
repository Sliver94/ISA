library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY control IS
   PORT
   (
      instruction:        IN   std_logic_vector(31 DOWNTO 0);

		RegWrite:		     OUT  std_logic;
		MemtoReg:			  OUT  std_logic;
		MemRead:				  OUT  std_logic;
		MemWrite:		 	  OUT  std_logic;
		Branch:			 	  OUT  std_logic;
		ALUOp:		        OUT  std_logic_vector(2 downto 0);
		ALUSrcA:			     OUT  std_logic;
		ALUSrcB:			     OUT  std_logic;
		jal_control:		  OUT  std_logic;
		branch_instruction: OUT  std_logic;
		absolute_value:	  OUT  std_logic
   );
END control;

--	ALUOP = 
--	00 if lw or sw
--	01 if beq
-- 10 if R-type

ARCHITECTURE rtl OF control IS

BEGIN
   PROCESS (instruction)
   BEGIN
		IF instruction(6 downto 0) = "0110011" THEN -- OP --> Instruction is R-type
		-- operation can be: add, xor or slt
			IF instruction(14 downto 12) = "000" THEN -- add
				RegWrite					<= '1';
				MemtoReg					<= '0';			 
				MemRead					<= '0';
				MemWrite					<= '0';
				Branch					<= '0';
				ALUOp		   			<= "000";
				ALUSrcA					<= '0';
				ALUSrcB					<= '0';
				jal_control 			<= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';

			ELSIF instruction(14 downto 12) = "100" THEN -- xor
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "100";
				ALUSrcA		<= '0';
				ALUSrcB		<= '0';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			
			ELSIF instruction(14 downto 12) = "010" THEN -- slt
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "101";
				ALUSrcA		<= '0';
				ALUSrcB		<= '0';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			
			ELSE -- Error
				RegWrite		<= '0';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "000";
				ALUSrcA		<= '0';
				ALUSrcB		<= '0';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			END IF;
		
      ELSIF instruction(6 downto 0) = "0010011" THEN -- OP-IMM -> Instruction is I-type
		-- operation can be: addi, srai or andi
			IF instruction(14 downto 12) = "000" THEN -- addi
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "000";
				ALUSrcA		<= '0';
				ALUSrcB		<= '1';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			
			ELSIF instruction(14 downto 12) = "101" THEN -- srai
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "001";
				ALUSrcA		<= '0';
				ALUSrcB		<= '1';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			
			ELSIF instruction(14 downto 12) = "111" THEN -- andi
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "011";
				ALUSrcA		<= '0';
				ALUSrcB		<= '1';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			
			ELSIF instruction(14 downto 12) = "001" THEN -- abs
				RegWrite		<= '1';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "000";
				ALUSrcA		<= '0';
				ALUSrcB		<= '0';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '1';

			ELSE -- Error
				RegWrite		<= '0';
				MemtoReg		<= '0';			 
				MemRead		<= '0';
				MemWrite		<= '0';
				Branch		<= '0';
				ALUOp		   <= "000";
				ALUSrcA		<= '0';
				ALUSrcB		<= '0';
				jal_control <= '0';
				branch_instruction 	<= '0';
				absolute_value			<= '0';
			END IF;
		
		ELSIF instruction(6 downto 0) = "0000011" THEN  -- LOAD (lw) -> Instruction is I-type
			RegWrite		<= '1';
			MemtoReg		<= '1';			 
			MemRead		<= '1';
			MemWrite		<= '0';
			Branch		<= '0';
			ALUOp		   <= "000";
			ALUSrcA		<= '0';
			ALUSrcB		<= '1';
			jal_control <= '0';
			branch_instruction 	<= '0';
			absolute_value			<= '0';
			
		ELSIF instruction(6 downto 0) = "0110111" THEN -- LUI (lui) ->  instruction is U-type
			RegWrite		<= '1';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '0';
			Branch		<= '0';
			ALUOp		   <= "010";
			ALUSrcA		<= '0';
			ALUSrcB		<= '1';
			jal_control <= '0';
			branch_instruction 	<= '0';
			absolute_value			<= '0';
		
		ELSIF instruction(6 downto 0) = "0010111" THEN -- AUIPC (auipc) -> instruction is U-type
			RegWrite		<= '1';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '0';
			Branch		<= '0';
			ALUOp		   <= "000";
			ALUSrcA		<= '1';
			ALUSrcB		<= '1';
			jal_control <= '0';
			branch_instruction 	<= '0';
			absolute_value			<= '0';
				
		ELSIF instruction(6 downto 0) = "1100011" THEN -- BRANCH (beq) -> Instruction is SB
			RegWrite		<= '0';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '0';
			Branch		<= '1';
			ALUOp		   <= "110";
			ALUSrcA		<= '0';
			ALUSrcB		<= '0';
			jal_control <= '0';
			branch_instruction 	<= '1';
			absolute_value			<= '0';
			
		ELSIF instruction(6 downto 0) = "1101111" THEN -- JAL (jal) -> Instruction is UJ
			RegWrite		<= '1';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '0';
			Branch		<= '1';
			ALUOp		   <= "111";
			ALUSrcA		<= '1';
			ALUSrcB		<= '1';
			jal_control <= '1';
			branch_instruction 	<= '1';
			absolute_value			<= '0';

		ELSIF instruction(6 downto 0) = "0100011" THEN -- STORE (sw) -> Instruction is S
			RegWrite		<= '0';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '1';
			Branch		<= '0';
			ALUOp		   <= "000";
			ALUSrcA		<= '0';
			ALUSrcB		<= '1';
			jal_control <= '0';
			branch_instruction 	<= '0';
			absolute_value			<= '0';
			
		ELSE -- Error
			RegWrite		<= '0';
			MemtoReg		<= '0';			 
			MemRead		<= '0';
			MemWrite		<= '0';
			Branch		<= '0';
			ALUOp		   <= "000";
			ALUSrcA		<= '0';
			ALUSrcB		<= '0';
			jal_control <= '0';
			branch_instruction 	<= '0';
			absolute_value			<= '0';
      END IF;
   END PROCESS;
END rtl;