LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY myiir IS 
	PORT
	(
		VIN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RST_n :  IN  STD_LOGIC;
		an1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b0 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		bn1 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		bn2 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DIN :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		VOUT :  OUT  STD_LOGIC;
		DOUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END myiir;

ARCHITECTURE bdf_type OF myiir IS 

COMPONENT datapath
	PORT(
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
END COMPONENT;

COMPONENT control_unit
	PORT(		
		rst, V_in, clk 		: in std_logic;
		rst_in, en_IIR, en_out	: out std_logic
		);
END COMPONENT;

SIGNAL	En_iir_wire   :  STD_LOGIC;
SIGNAL	En_out_wire   :  STD_LOGIC;
SIGNAL	RST_wire		  :  STD_LOGIC;

BEGIN 

datapath_inst : datapath
PORT MAP(
		 VIN => VIN,
		 CLK => CLK,
		 an1 => an1,
		 b0 => b0,
		 bn1 => bn1,
		 bn2 => bn2,
		 DIN => DIN,

		 En_iir => En_iir_wire,
		 En_out => En_out_wire,
		 RST_n => RST_wire,

		 DOUT => DOUT,
		 VOUT => VOUT);

control_unit_inst : control_unit
PORT MAP(rst => RST_n,
		 V_in => VIN,
		 clk => CLK,
		 
		 en_IIR => En_iir_wire,
		 en_out => En_out_wire,
		 rst_in => RST_wire);		 
		 
END bdf_type;