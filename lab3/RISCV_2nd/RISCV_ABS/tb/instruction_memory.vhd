LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;

ENTITY instruction_memory IS
   PORT
   (
      clk: 									IN   std_logic;
		rst:									IN	  std_logic;
      instruction_address:   			IN   std_logic_vector (31 DOWNTO 0);
      instruction:     					OUT  std_logic_vector (31 DOWNTO 0)
   );
END instruction_memory;

ARCHITECTURE rtl OF instruction_memory IS
   TYPE mem IS ARRAY(0 TO 27) OF std_logic_vector(31 DOWNTO 0);
   SIGNAL memory_array: mem;

	SIGNAL instruction_address_tmp : std_logic_vector(31 DOWNTO 0);
	
	constant x8 : std_logic_vector := "01000";
	constant x9 : std_logic_vector := "01001";
	constant x14 : std_logic_vector := "01110";
	constant x15 : std_logic_vector := "01111";
	
BEGIN
	instruction_address_tmp <= std_logic_vector(unsigned(instruction_address) - 4194304); 
   PROCESS (clk)
   BEGIN
      IF (clk'event AND clk = '1') THEN
			IF (rst = '1') THEN

				memory_array(0) <= x"00700813";
				memory_array(1) <= x"0fc10217";
				memory_array(2) <= x"ffc20213";
				memory_array(3) <= x"0fc10297";
				memory_array(4) <= x"01028293";
				memory_array(5) <= x"400006b7";
				memory_array(6) <= x"fff68693";
				memory_array(7) <= x"02080863";
				memory_array(8) <= x"00022403";
				memory_array(9) <= x"41f45493";
				memory_array(10) <= x"00944533";
				memory_array(11) <= x"0014f493";
				memory_array(12) <= x"00950533";
				memory_array(13) <= x"00420213";
				memory_array(14) <= x"fff80813";
				memory_array(15) <= x"00d525b3";
				memory_array(16) <= x"fc058ee3";
				memory_array(17) <= x"000506b3";
				memory_array(18) <= x"fd5ff0ef";
				memory_array(19) <= x"00d2a023";
				memory_array(20) <= "000000000000" & x8 & "001" & x14 & "0010011";
				memory_array(21) <= "000000000000" & x9 & "001" & x15 & "0010011";
				memory_array(22) <= x"00428293";
				memory_array(23) <= x"00e2a023";
				memory_array(24) <= x"00428293";
				memory_array(25) <= x"00f2a023";
				memory_array(26) <= x"000000ef";
				memory_array(27) <= x"00000013";
			
			END IF;
         
      END IF;
   END PROCESS;
	instruction <= memory_array(to_integer((unsigned(instruction_address_tmp))/4));

END rtl;




