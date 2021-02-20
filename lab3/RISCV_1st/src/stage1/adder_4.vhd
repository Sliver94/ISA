library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_4 is
port(
  input      : in  std_logic_vector(31 downto 0);
  output     : out std_logic_vector(31 downto 0));
end adder_4;
architecture rtl of adder_4 is

begin
p_add4 : process(input)
begin
	output <= std_logic_vector(unsigned(input) + 4);
end process p_add4;
end rtl;