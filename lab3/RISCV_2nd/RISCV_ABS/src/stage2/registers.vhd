library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY registers IS
   PORT
   (
      clk: 					IN   std_logic;
		rst:					IN	  std_logic;
      data_write:       IN   std_logic_vector (31 DOWNTO 0);
      write_address:    IN   std_logic_vector (4 DOWNTO 0);
      read_address1:    IN   std_logic_vector (4 DOWNTO 0);
      read_address2:    IN   std_logic_vector (4 DOWNTO 0);
      write_enable:     IN   std_logic;
      data_read1:     	OUT  std_logic_vector (31 DOWNTO 0);
		data_read2:     	OUT  std_logic_vector (31 DOWNTO 0)
   );
END registers;

ARCHITECTURE rtl OF registers IS

   TYPE mem IS ARRAY(0 TO 31) OF std_logic_vector(31 DOWNTO 0);
   SIGNAL registers_array : mem;
	
BEGIN
   PROCESS (clk)
   BEGIN
      IF falling_edge(clk) THEN
         data_read1 <= registers_array(to_integer(unsigned(read_address1)));
         data_read2 <= registers_array(to_integer(unsigned(read_address2)));
         IF (rst = '1') THEN				
				for I in 0 to 31 loop
					if I = 2 then
						registers_array(I) <= x"7fffeffc";
					elsif I = 3 then
						registers_array(I) <= x"10008000";
					else
						registers_array(I) <= (others => '0');
					end if;					
				end loop;            
         ELSIF (write_enable = '1') THEN
            registers_array(to_integer(unsigned(write_address))) <= data_write;
				IF read_address1 = write_address THEN
					data_read1 <= data_write;
				ELSIF read_address2 = write_address THEN
					data_read2 <= data_write;
				END IF;				
         END IF;
      END IF;
   END PROCESS;
END rtl;