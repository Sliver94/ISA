library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is  
    Port (
    A, B     : in  STD_LOGIC_VECTOR(31 downto 0);  
    ALU_Sel  : in  STD_LOGIC_VECTOR(2 downto 0);  
    ALU_Out   : out  STD_LOGIC_VECTOR(31 downto 0);
	 ZeroOut  :	out std_logic
    );
end ALU; 
architecture Behavioral of ALU is

signal ALU_Result : std_logic_vector (31 downto 0);
signal zero_tmp : std_logic;
signal jal_check : std_logic;

begin
	process(A,B,ALU_Sel)
	begin
		case(ALU_Sel) is
			when "000" => -- Addition
				ALU_Result <= std_logic_vector(unsigned(A) + unsigned(B));
				jal_check <= '0';
				
			when "001" => -- Logical shift right

				--ALU_Result <= std_logic_vector(unsigned(A) srl to_integer(unsigned(B(4 DOWNTO 0))));
				ALU_Result <= std_logic_vector(shift_right(signed(A), to_integer(unsigned(B(4 DOWNTO 0)))));
				jal_check <= '0';

			when "010" =>	-- LUI instruction
				ALU_Result <= B;
				jal_check <= '0';

			when "011" => -- Logical AND 
				ALU_Result <= A and B;
				jal_check <= '0';

			when "100" => -- Logical XOR 
				ALU_Result <= A xor B;
				jal_check <= '0';
	
			when "101" => -- "Smaller" comparison
				if(signed(A)<signed(B)) then
					ALU_Result <= "00000000000000000000000000000001" ;
					jal_check <= '0';
				else
					ALU_Result <= "00000000000000000000000000000000" ;
					jal_check <= '0';
				end if; 
			
			when "110" => -- "Equal" comparison   
				if(A=B) then
					ALU_Result <= "00000000000000000000000000000000" ;
					jal_check <= '0';
				else
					ALU_Result <= "00000000000000000000000000000001" ;
					jal_check <= '0';
				end if;
				
			when "111" => -- JAL instruction
				ALU_Result <= std_logic_vector(unsigned(A) + unsigned(B));
				jal_check <= '1';
				
			when others => ALU_Result <= A; 
		end case;
	end process;
	
	process(ALU_Result, jal_check)
	begin
		if (ALU_Result = "00000000000000000000000000000000" or jal_check = '1') then
			zero_tmp <= '1';
		else
			zero_tmp <= '0';
		end if;
	end process;
	
	
	ALU_Out <= ALU_Result; -- ALU out
	ZeroOut <= zero_tmp; -- zero flag
end Behavioral;

