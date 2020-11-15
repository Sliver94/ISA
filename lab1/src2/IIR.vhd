library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
--use IEEE.numeric_std.all;

--coefficients: 
--b0:	b0 = 0.414062500000000  			--> 0.4140625	-->	00110101 	--> 53
--bn1:	b1 - a1 * b0 = 0.481994628906250 	--> 0.484375 	-->	00111110 	--> 62
--bn2:	-(a1 * b1) = 0.067932128906250 		--> 0.0703125 	-->	00001001	--> 9
--an1:	a1 * a1 = 0.026916503906250 		--> 0.0234375	-->	00000011 	--> 3

entity IIR is   
    port
    (
    output        	: out std_logic_vector(7 downto 0);
    input         	: in  std_logic_vector(7 downto 0);
	 an1					: in  std_logic_vector(7 downto 0);
	 b0					: in  std_logic_vector(7 downto 0);
	 bn1					: in  std_logic_vector(7 downto 0);
	 bn2					: in  std_logic_vector(7 downto 0);
	 reset				: in std_logic;
	 enable				: in std_logic;
    clk           	: in std_logic
    );
end IIR;

architecture behavioral of IIR is


signal w0   			: std_logic_vector(8 downto 0);
signal w1   			: std_logic_vector(8 downto 0);

signal y_no_ff0  		: std_logic_vector(8 downto 0);
signal y_no_ff1  		: std_logic_vector(8 downto 0);

signal fb0   			: std_logic_vector(8 downto 0);
signal fb1   			: std_logic_vector(8 downto 0);

signal ff10   			: std_logic_vector(8 downto 0);
signal ff11   			: std_logic_vector(8 downto 0);
signal ff20   			: std_logic_vector(8 downto 0);
signal ff21   			: std_logic_vector(8 downto 0);
signal ff22   			: std_logic_vector(8 downto 0);
signal ff30   			: std_logic_vector(8 downto 0);
signal ff31   			: std_logic_vector(8 downto 0);

signal fb_temp   		: std_logic_vector(16 downto 0);
signal y_no_ff_temp  : std_logic_vector(16 downto 0);
signal ff_temp1  		: std_logic_vector(16 downto 0);
signal ff_temp2  		: std_logic_vector(16 downto 0);

signal output_temp	: std_logic_vector(8 downto 0);


begin
    
	 IIR: process(clk,reset,enable)
    begin

	 if rising_edge(clk) then
			if reset = '0' then
				w1 <= "000000000";
				y_no_ff1 <= "000000000";
				fb1 <= "000000000";
				ff11 <= "000000000";
				ff21 <= "000000000";
				ff22 <= "000000000";
				ff31 <= "000000000";
			elsif enable = '1' then
				w1 <= w0;
				y_no_ff1 <= y_no_ff0;
				fb1 <= fb0;
				ff11 <= ff10;
				ff21 <= ff20;
				ff22 <= ff21;
				ff31 <= ff30;
			end if;
	 end if;
    end process;

	 w0 <= input + fb1;
	 
	 fb_temp <= an1 * w1;
	 y_no_ff_temp <= w1 * b0; 
	 ff_temp1 <= w1 * bn1;
	 ff_temp2 <= w1 * bn2;

	 fb0 <= fb_temp(15 downto 7);
	 y_no_ff0 <= y_no_ff_temp(15 downto 7);
	 ff10 <= ff_temp1(15 downto 7);
	 ff20 <= ff_temp2(15 downto 7);
	
	 ff30 <= ff11 + ff22;
	 
	 output_temp <= y_no_ff1 + ff31;	
	 output <= output_temp(7 downto 0); 

end behavioral;
