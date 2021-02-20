library IEEE;
use IEEE.std_logic_1164.all;

entity PC is
port(
  input      : in  std_logic_vector(31 downto 0);
  clk    	 : in  std_logic;
  rst        : in  std_logic;
  en			 : in  std_logic;
  output     : out  std_logic_vector(31 downto 0)
  );
end PC;


architecture Behavioral of PC is  
begin  
process(clk)
begin 
	if(rising_edge(clk)) then
		if (rst = '1') then
			output <= x"00400000"; --Sets initial PC value
		elsif (en = '1') then
			output <= input;
		end if;	
    end if;       
end process;  
end Behavioral; 