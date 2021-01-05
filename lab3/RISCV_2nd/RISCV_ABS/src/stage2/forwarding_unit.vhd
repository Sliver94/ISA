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

	IF ((RegWrite_stage5 = '1') and  (write_address_stage5 = read_address1) and ((write_address_stage4 /= read_address1) or (RegWrite_stage4 = '0'))) THEN
		forwardA <= "10";
	ELSIF ((RegWrite_stage4 = '1') and (write_address_stage4 = read_address1)) THEN
		forwardA <= "01";
	ELSE
		forwardA <= "00";
	END IF;	

	IF ((RegWrite_stage5 = '1') and  (write_address_stage5 = read_address2) and ((write_address_stage4 /= read_address2) or (RegWrite_stage4 = '0'))) THEN
		forwardB <= "10";
	ELSIF ((RegWrite_stage4 = '1') and (write_address_stage4 = read_address2)) THEN
		forwardB <= "01";
	ELSE
		forwardB <= "00";
	END IF;	

   END PROCESS;
END rtl;