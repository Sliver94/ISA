library IEEE;
use IEEE.std_logic_1164.all;

entity my_mux32 is
port(
  a      : in  std_logic_vector(31 downto 0);
  b      : in  std_logic_vector(31 downto 0);
  c      : in  std_logic_vector(31 downto 0);
  sel    : in  std_logic_vector(1 downto 0);
  z      : out std_logic_vector(31 downto 0));
end my_mux32;
architecture rtl of my_mux32 is

begin
p_mux : process(a,b,c,sel)
begin
  case sel is
    when "00" => z <= a;
    when "01" => z <= b;
    when others => z <= c;
  end case;
end process p_mux;
end rtl;