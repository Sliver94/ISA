library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_file is   
    port
    (
    output        : out std_logic_vector(7 downto 0);
    input         : in  std_logic_vector(7 downto 0);
    enable   		: in std_logic;
	 reset			: in std_logic;
    clk           : in std_logic
    );
end reg_file;

architecture beh_reg_file of reg_file is

signal registers : std_logic_vector(7 downto 0);

begin

    regFile: process(clk, reset, enable)
    begin
	 if rising_edge(clk) then 
			if(reset = '0') then
				registers <= "00000000";
			elsif(enable = '1') then
                registers <= input;
		   end if;		  
	 end if;
    end process;
	 
    output <= registers;

end beh_reg_file;
