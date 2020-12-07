library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity my_register is   
    port
    (
    output1         : out std_logic_vector(31 downto 0);
    output2         : out std_logic_vector(31 downto 0);
    input1          : in  std_logic_vector(31 downto 0);
	input2          : in  std_logic_vector(31 downto 0);
    clk             : in std_logic
    );
end my_register;

architecture beh_my_register of my_register is

signal register1 : std_logic_vector(31 downto 0);
signal register2 : std_logic_vector(31 downto 0);

begin

    reg_proc: process(clk)
    begin
	 if rising_edge(clk) then 
			register1 <= input1;
			register2 <= input2;
	 end if;
    end process;
	 
    output1 <= register1;
	output2 <= register2;

end beh_my_register;
