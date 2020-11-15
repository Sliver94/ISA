LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY myiir IS 
	PORT
	(
		VIN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RST_n :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b0 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		VOUT :  OUT  STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END myiir;

ARCHITECTURE bdf_type OF myiir IS 

COMPONENT iir
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 a1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
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

COMPONENT reg_file
	PORT(enable : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	IIR_in  :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	VIN_del :  STD_LOGIC;
SIGNAL	IIR_out :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



iir_inst : iir
PORT MAP(reset => RST_n,
		 clk => CLK,
		 enable => VIN_del,
		 a1 => a1,
		 b0 => b0,
		 b1 => b1,
		 input => IIR_in,
		 output => IIR_out);


my_ff2_inst : my_ff
PORT MAP(input => VIN_del,
		 reset => RST_n,
		 clk => CLK,
		 output => VOUT);


reg_file1_inst : reg_file
PORT MAP(enable => VIN,
		 reset => RST_n,
		 clk => CLK,
		 input => DIN,
		 output => IIR_in);


reg_file2_inst: reg_file
PORT MAP(enable => VIN_del,
		 reset => RST_n,
		 clk => CLK,
		 input => IIR_out,
		 output => DOUT);


my_ff1_inst : my_ff
PORT MAP(input => VIN,
		 reset => RST_n,
		 clk => CLK,
		 output => VIN_del);


END bdf_type;
