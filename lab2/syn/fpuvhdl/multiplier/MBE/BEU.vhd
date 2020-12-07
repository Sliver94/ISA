library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 
--use IEEE.STD_LOGIC_UNSIGNED;

entity BEU is   
    port
    (
    b_in		     	: in std_logic_vector(2 downto 0);
	 a_in				: in std_logic_vector(23 downto 0);
	 
	 S					: out std_logic;
	 a_out			: out std_logic_vector(24 downto 0) 
    );

end BEU;


architecture arch of BEU is

begin
	
	with b_in select a_out <=
		(others => '0') when "000" | "111",
		'0'&a_in when "001" | "010",
		a_in&'0' when "011",
		
		not ('0' & a_in) when "110" | "101",
		not (a_in & '0') when "100",
--		std_logic_vector(signed(not ('0' & a_in)) + "0000000000000000000000001") when "110" | "101",
--		std_logic_vector(signed(not (a_in & '0')) + "0000000000000000000000001") when "100",
		(others => 'X') when others;		
		
	with b_in select S <= 
    '0' when "000" | "111" | "001" | "010" | "011",
    '1' when "110" | "101" | "100",
    'X' when others;
	 
end arch;
