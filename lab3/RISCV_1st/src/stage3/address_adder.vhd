library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity address_adder is  
    Port (
    PC, offset    : in  STD_LOGIC_VECTOR(31 downto 0);  
    address_adder_Out   		: out  STD_LOGIC_VECTOR(31 downto 0)
    );
end address_adder; 
architecture Behavioral of address_adder is

signal address_adder_Result : std_logic_vector (31 downto 0);

begin
	process(PC,offset)
	begin
--		address_adder_Result <= std_logic_vector(unsigned(PC)+(unsigned(offset) sll 1));
		address_adder_Result <= std_logic_vector(unsigned(PC)+unsigned(offset));
	end process;		
	
	address_adder_Out <= address_adder_Result; -- address_adder out

end Behavioral;

