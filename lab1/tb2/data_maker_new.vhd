library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_maker is  
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
    VOUT    : out std_logic;
    DOUT    : out std_logic_vector(7 downto 0);
    an1     : out std_logic_vector(7 downto 0);
    b0      : out std_logic_vector(7 downto 0);
    bn1     : out std_logic_vector(7 downto 0);
    bn2     : out std_logic_vector(7 downto 0);
    END_SIM : out std_logic);
end data_maker;

architecture beh of data_maker is

  constant tco : time := 1 ns;

  signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to 10);  

begin  -- beh

  an1 <= conv_std_logic_vector(3,8); --Conversione di -21 --> 21_10=00010101 --> comp a 2 --> -21_10=11101011=235_10
  b0  <= conv_std_logic_vector(53,8);
  bn1 <= conv_std_logic_vector(62,8);
  bn2 <= conv_std_logic_vector(9,8);

  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "./samples.txt";
    variable line_in : line;
    variable x : integer;
    variable stop : integer;

  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      DOUT <= (others => '0') after tco;      
      VOUT <= '0' after tco;
      sEndSim <= '0' after tco;
      stop := 0;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if not endfile(fp_in) then
			readline(fp_in, line_in);
        	read(line_in, x);
        	DOUT <= conv_std_logic_vector(x, 8) after tco;
        	VOUT <= '1' after tco;
        	sEndSim <= '0' after tco;
	  end if;
    else
      VOUT <= '0' after tco;        
      sEndSim <= '1' after tco;
    end if;
  end process;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to 10) <= END_SIM_i(0 to 9) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(10);  

end beh;