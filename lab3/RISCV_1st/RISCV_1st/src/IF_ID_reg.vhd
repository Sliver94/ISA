library IEEE;
use IEEE.std_logic_1164.all;

entity IF_ID_reg is
port(
  instruction_address_in   		: in  std_logic_vector(31 downto 0);
  instruction_in      				: in  std_logic_vector(31 downto 0);
  clk    	 							: in  std_logic;
  rst        							: in  std_logic;
  en			 							: in  std_logic;
  next_instruction_address_in		: in  std_logic_vector(31 downto 0);
  
  instruction_address_out  		: out  std_logic_vector(31 downto 0);
  instruction_out      				: out  std_logic_vector(31 downto 0);
  next_instruction_address_out	: out  std_logic_vector(31 downto 0)
  );
end IF_ID_reg;


architecture Behavioral of IF_ID_reg is  
begin  
process(clk)
begin 
	if(rising_edge(clk)) then
		if (rst = '1') then
			instruction_address_out <= (others => '0');
			instruction_out <= (others => '0');
			next_instruction_address_out <= (others => '0');
		elsif (en = '1') then
			instruction_out <= instruction_in;
			instruction_address_out <= instruction_address_in;
			next_instruction_address_out <= next_instruction_address_in;
		end if;	
    end if;       
end process;  
end Behavioral; 