library IEEE;
use IEEE.std_logic_1164.all;

entity ID_EX_reg is
port(
		clk    	 					: in  std_logic;
		rst        					: in  std_logic;
		en			 					: in  std_logic;
		RegWrite_in : IN STD_LOGIC;
		MemtoReg_in : IN STD_LOGIC;
		MemRead_in : IN STD_LOGIC;
		MemWrite_in : IN STD_LOGIC;
		Branch_in : IN STD_LOGIC;
		ALUSrcA_in : IN STD_LOGIC;
		ALUSrcB_in : IN STD_LOGIC;
		ALUOp_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		immediate_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data1_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data2_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		read_address1_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		read_address2_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		stall_inserting : IN STD_LOGIC;
		next_instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		jal_control_in : IN STD_LOGIC;
		absolute_value_in : IN STD_LOGIC;
				
		RegWrite_out : OUT STD_LOGIC;
		MemtoReg_out : OUT STD_LOGIC;
		MemRead_out : OUT STD_LOGIC;
		MemWrite_out : OUT STD_LOGIC;
		Branch_out : OUT STD_LOGIC;
		ALUSrcA_out : OUT STD_LOGIC;
		ALUSrcB_out : OUT STD_LOGIC;
		ALUOp_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		immediate_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data1_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);		 
		read_address1_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		read_address2_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		next_instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		jal_control_out : OUT STD_LOGIC;
		absolute_value_out : OUT STD_LOGIC
  );
end ID_EX_reg;


architecture Behavioral of ID_EX_reg is  
begin  
process(clk)
begin 
	if(rising_edge(clk)) then
		if (rst = '1') then
			RegWrite_out <= '0';
			MemtoReg_out <= '0';
			MemRead_out <= '0';
			MemWrite_out <= '0';
			Branch_out <= '0';
			ALUSrcA_out <= '0';
			ALUSrcB_out <= '0';
			ALUOp_out <= (others => '0');
			immediate_out <= (others => '0');
			read_data1_out <= (others => '0');
			read_data2_out <= (others => '0');
			instruction_address_out <= (others => '0');
			write_register_out <= (others => '0');
			read_address1_out <= (others => '0');
			read_address2_out <= (others => '0');
			next_instruction_address_out <= (others => '0');
			jal_control_out <= '0';
			absolute_value_out <= '0';
			
		elsif (en = '1') then
			if (stall_inserting = '1') then
				RegWrite_out <= '0';
				MemtoReg_out <= '0';
				MemRead_out <= '0';
				MemWrite_out <= '0';
				Branch_out <= '0';
				ALUSrcA_out <= '0';
				ALUSrcB_out <= '0';
				ALUOp_out <= (others => '0');
				immediate_out <= (others => '0');
				read_data1_out <= (others => '0');
				read_data2_out <= (others => '0');
				instruction_address_out <= (others => '0');
				write_register_out <= (others => '0');
				read_address1_out <= (others => '0');
				read_address2_out <= (others => '0');
				next_instruction_address_out <= (others => '0');
				jal_control_out <= '0';
				absolute_value_out <= '0';
			
			else
				RegWrite_out <= RegWrite_in;
				MemtoReg_out <= MemtoReg_in;
				MemRead_out <= MemRead_in;
				MemWrite_out <= MemWrite_in;
				Branch_out <= Branch_in;
				ALUSrcA_out <= ALUSrcA_in;
				ALUSrcB_out <= ALUSrcB_in;
				ALUOp_out <= ALUOp_in;
				immediate_out <= immediate_in;
				read_data1_out <= read_data1_in;
				read_data2_out <= read_data2_in;
				instruction_address_out <= instruction_address_in;
				write_register_out <= write_register_in;
				read_address1_out <= read_address1_in;
				read_address2_out <= read_address2_in;
				next_instruction_address_out <= next_instruction_address_in;
				jal_control_out <= jal_control_in;
				absolute_value_out <= absolute_value_in;
			end if;
		end if;	
    end if;       
end process;  
end Behavioral; 