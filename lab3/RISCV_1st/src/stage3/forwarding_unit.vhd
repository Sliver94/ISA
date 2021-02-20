library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY forwarding_unit IS
   PORT
   (
      read_address1:    		IN  std_logic_vector(4 DOWNTO 0);
		read_address2:				IN  std_logic_vector(4 DOWNTO 0);
		write_address_stage4:	IN  std_logic_vector(4 DOWNTO 0);
		write_address_stage5:	IN  std_logic_vector(4 DOWNTO 0);
		RegWrite_stage4:			IN  std_logic;
		RegWrite_stage5:			IN  std_logic;
		
		forwardA:					OUT  std_logic_vector(1 DOWNTO 0);
		forwardB:					OUT  std_logic_vector(1 DOWNTO 0)
   );
END forwarding_unit;

ARCHITECTURE rtl OF forwarding_unit IS

BEGIN
   PROCESS (read_address1, read_address2, write_address_stage4, write_address_stage5, RegWrite_stage4, RegWrite_stage5)
   BEGIN

		if ((RegWrite_stage4 = '1') -- EX hazard
			and (write_address_stage4 /= "00000") 
			and (write_address_stage4 = read_address1)) then
				forwardA <= "01"; 
				
		elsif ((RegWrite_stage5 = '1') -- MEM hazard
			and (write_address_stage5 /= "00000") 
			and not((RegWrite_stage4 = '1') and (write_address_stage4 /= "00000") and (write_address_stage4 = read_address1)) 
			and (write_address_stage5 = read_address1)) then
				forwardA <= "10"; 
		else 
			forwardA <= "00";
		end if;

		if ((RegWrite_stage4 = '1') -- EX hazard
			and (write_address_stage4 /= "00000") 
			and (write_address_stage4 = read_address2)) then
				forwardB <= "01"; 
				
		elsif ((RegWrite_stage5 = '1') -- MEM hazard
			and (write_address_stage5 /="00000") 
			and not((RegWrite_stage4 = '1') and (write_address_stage4 /= "00000") and (write_address_stage4 = read_address2)) 
			and (write_address_stage5 = read_address2)) then
			forwardB <= "10"; 
		else 
			forwardB <= "00";
		end if;	

   END PROCESS;
END rtl;