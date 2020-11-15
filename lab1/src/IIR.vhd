library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
--use IEEE.numeric_std.all;

entity IIR is   
    port
    (
    output        	: out std_logic_vector(7 downto 0);
    input         	: in  std_logic_vector(7 downto 0);
	 a1					: in  std_logic_vector(7 downto 0);
	 b0					: in  std_logic_vector(7 downto 0);
	 b1					: in  std_logic_vector(7 downto 0);
	 reset				: in std_logic;
	 enable				: in std_logic;
    clk           	: in std_logic
    );
end IIR;

architecture beh_iir of IIR is

signal w   				: std_logic_vector(8 downto 0);
signal sw 				: std_logic_vector(8 downto 0);
signal fb   			: std_logic_vector(8 downto 0);
signal y_no_ff   		: std_logic_vector(8 downto 0);
signal ff   			: std_logic_vector(8 downto 0);

signal fb_temp   		: std_logic_vector(16 downto 0);
signal y_no_ff_temp  : std_logic_vector(16 downto 0);
signal ff_temp   		: std_logic_vector(16 downto 0);

signal output_temp	: std_logic_vector(8 downto 0);


begin

    IIR: process(clk,reset,enable)
    begin

	 if rising_edge(clk) then
			if reset = '0' then
				sw <= "000000000";
			elsif enable = '1' then
				sw <= w;
			end if;
	 end if;
    end process;

	 
	 
	 
	 w <= input + fb;
	 fb_temp <= -(sw * a1);
	 y_no_ff_temp <= w * b0; 
	 ff_temp <= sw * b1;

	 fb <= fb_temp(15 downto 7);
	 y_no_ff <= y_no_ff_temp(15 downto 7);
	 ff <= ff_temp(15 downto 7);

	 output_temp <= y_no_ff + ff;	
	 output <= output_temp(7 downto 0); 

end beh_iir;
