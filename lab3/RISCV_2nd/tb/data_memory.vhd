LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;

ENTITY data_memory IS
   PORT
   (
      clk: 				IN   std_logic;
		rst:				IN	  std_logic;
      write_data:  	IN   std_logic_vector (31 DOWNTO 0);
      data_address:  IN   std_logic_vector (31 DOWNTO 0);
		write_enable : IN   std_logic;
		read_enable :	IN	  std_logic;
      data:     		OUT  std_logic_vector (31 DOWNTO 0)
   );
END data_memory;

ARCHITECTURE rtl OF data_memory IS
   TYPE mem IS ARRAY(0 TO 127) OF std_logic_vector(31 DOWNTO 0);
   SIGNAL memory_array: mem;
	SIGNAL data_address_tmp : std_logic_vector(31 DOWNTO 0);
--	SIGNAL read_data_tmp : std_logic_vector(31 DOWNTO 0);

BEGIN
	data_address_tmp <= std_logic_vector(unsigned(data_address)-268500992);	
   PROCESS (clk)
   BEGIN
      IF (falling_edge(clk) or rising_edge(clk)) THEN
			IF (rst = '1') THEN

				memory_array(0) <= x"0000000a";
				memory_array(1) <= x"ffffffd1";
				memory_array(2) <= x"00000016";
				memory_array(3) <= x"fffffffd";
				memory_array(4) <= x"0000000f";
				memory_array(5) <= x"0000001b";
				memory_array(6) <= x"fffffffc";
				
				FOR I IN 7 TO 127 LOOP
					memory_array(I) <= (others => '0');					
				END LOOP;
				
         ELSIF (write_enable = '1') THEN
            memory_array(to_integer((unsigned(data_address_tmp))/4)) <= write_data;
         END IF;
			IF (read_enable = '1') THEN 
				data <= memory_array(to_integer((unsigned(data_address_tmp))/4));
			END IF;
      END IF;
   END PROCESS;
	

END rtl;


