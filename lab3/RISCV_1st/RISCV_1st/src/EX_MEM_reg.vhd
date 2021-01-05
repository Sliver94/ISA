library IEEE;
use IEEE.std_logic_1164.all;

entity EX_MEM_reg is
port(
		clk    	 					: in  std_logic;
		rst        					: in  std_logic;
		en			 					: in  std_logic;
		RegWrite_in : IN STD_LOGIC;
		MemtoReg_in : IN STD_LOGIC;
		MemRead_in : IN STD_LOGIC;
		MemWrite_in : IN STD_LOGIC;
		Branch_in : IN STD_LOGIC;
		write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ZeroFlag_in : IN STD_LOGIC;
		ALU_output_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		branch_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data2_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);

		RegWrite_out : OUT STD_LOGIC;
		MemtoReg_out : OUT STD_LOGIC;
		MemRead_out : OUT STD_LOGIC;
		MemWrite_out : OUT STD_LOGIC;
		Branch_out : OUT STD_LOGIC;
		write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);		 
		ZeroFlag_out : OUT STD_LOGIC;
		ALU_output_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		branch_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_data2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end EX_MEM_reg;


architecture Behavioral of EX_MEM_reg is  
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
			write_register_out <= (others => '0');
			ZeroFlag_out <= '0';
			ALU_output_out <= (others => '0');
			branch_address_out <= (others => '0');
			read_data2_out <= (others => '0');

			
		elsif (en = '1') then
			RegWrite_out <= RegWrite_in;
			MemtoReg_out <= MemtoReg_in;
			MemRead_out <= MemRead_in;
			MemWrite_out <= MemWrite_in;
			Branch_out <= Branch_in;
			write_register_out <= write_register_in;
			ZeroFlag_out <= ZeroFlag_in;
			ALU_output_out <= ALU_output_in;
			branch_address_out <= branch_address_in;
			read_data2_out <= read_data2_in;
			
		end if;	
    end if;       
end process;  
end Behavioral; 