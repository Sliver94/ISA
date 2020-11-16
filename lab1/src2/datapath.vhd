LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY datapath IS 
	PORT
	(
		VIN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		
		RST_n :  IN  STD_LOGIC;
		En_iir : IN STD_LOGIC;
		En_out : IN STD_LOGIC;

		an1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b0 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		bn1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		bn2 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);

		VOUT : OUT STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END datapath;

ARCHITECTURE bdf_type OF datapath IS 

COMPONENT iir
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 an1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 bn1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 bn2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg_file
	PORT(enable : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT my_ff
	PORT(input : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 output : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	IIR_in   :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	IIR_out  :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



iir_inst : iir
PORT MAP(reset => RST_n,
		 clk => CLK,
		 enable => En_iir,
		 an1 => an1,
		 b0 => b0,
		 bn1 => bn1,
		 bn2 => bn2,
		 input => IIR_in,
		 output => IIR_out);


reg_file1_inst : reg_file
PORT MAP(enable => VIN,
		 reset => RST_n,
		 clk => CLK,
		 input => DIN,
		 output => IIR_in);


reg_file2_inst: reg_file
PORT MAP(enable => En_out,
		 reset => RST_n,
		 clk => CLK,
		 input => IIR_out,
		 output => DOUT);

my_ff_inst : my_ff
PORT MAP(input => En_out,
		 reset => RST_n,
		 clk => CLK,
		 output => VOUT);
		 
END bdf_type;