library IEEE;
use IEEE.std_logic_1164.all;

entity MEM_WB_reg is
port(
		clk    	 					: in  std_logic;
		rst        					: in  std_logic;
		en			 					: in  std_logic;

		RegWrite_in : IN STD_LOGIC;
		MemtoReg_in : IN STD_LOGIC;
		ALU_output_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		memory_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);

		RegWrite_out : OUT STD_LOGIC;
		MemtoReg_out : OUT STD_LOGIC;
		ALU_output_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		memory_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
end MEM_WB_reg;


architecture Behavioral of MEM_WB_reg is  
begin  
process(clk)
begin 
	if(rising_edge(clk)) then
		if (rst = '1') then
			RegWrite_out <= '0';
			MemtoReg_out <= '0';
			ALU_output_out <= (others => '0');
			memory_data_out <= (others => '0');
			write_register_out <= (others => '0');
			
		elsif (en = '1') then
			RegWrite_out <= RegWrite_in;
			MemtoReg_out <= MemtoReg_in;
			ALU_output_out <= ALU_output_in;
			memory_data_out <= memory_data_in;
			write_register_out <= write_register_in;
			
		end if;	
    end if;       
end process;  
end Behavioral; 