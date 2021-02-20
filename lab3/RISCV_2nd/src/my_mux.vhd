library IEEE;
use IEEE.std_logic_1164.all;

entity my_mux is
port(
  a      : in  std_logic_vector(31 downto 0);
  b      : in  std_logic_vector(31 downto 0);
  sel    : in  std_logic;
  z      : out std_logic_vector(31 downto 0));
end my_mux;
architecture rtl of my_mux is

begin
p_mux : process(a,b,sel)
begin
  case sel is
    when '0' => z <= a ;
    when others => z <= b ;
  end case;
end process p_mux;
end rtl;