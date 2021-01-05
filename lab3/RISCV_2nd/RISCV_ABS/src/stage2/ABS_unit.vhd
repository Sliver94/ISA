library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ABS_unit is  
    Port (
    ABS_unit_in	 : in  STD_LOGIC_VECTOR(31 downto 0);
    ABS_unit_out   : out  STD_LOGIC_VECTOR(31 downto 0)
    );
end ABS_unit; 

architecture Behavioral of ABS_unit is

begin
	process(ABS_unit_in)
	begin
		if signed(ABS_unit_in) >= 0 then 
			ABS_unit_out <= ABS_unit_in;
		else
			ABS_unit_Out <= std_logic_vector(-signed(ABS_unit_in));
		end if;
	end process;	
end Behavioral;

