library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity my_ff is   
    port
    (
    output        : out std_logic;
    input         : in  std_logic;
	 reset			: in std_logic;
    clk           : in std_logic
    );
end my_ff;

architecture behavioral of my_ff is

signal data : std_logic;

begin

    my_ff: process(clk, reset)
    begin
	 if rising_edge(clk) then 
			if(reset = '0') then
				data <= '0';
			else
				data <= input;
		   end if;		  
	 end if;
    end process;

    output <= data;

end behavioral;