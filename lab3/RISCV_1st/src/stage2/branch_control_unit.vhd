library IEEE;
use IEEE.std_logic_1164.all;

entity branch_control_unit is
	port(
		clk, branch_instruction, rst: in std_logic;
			
		enable_IF_ID : out std_logic;
		nop_insertion : out std_logic		
	);
end branch_control_unit;

architecture behaviour of branch_control_unit is
	type state is (idle, first_cycle, second_cycle, third_cycle, fourth_cycle);
	signal curr_state, next_state : state := idle;
	
begin
	process (clk)
		begin
		if (falling_edge(clk)) then
			curr_state <= next_state;
		end if;
	end process;

	process(curr_state, branch_instruction, rst)
	begin
		case curr_state is
				when idle =>
					if (rst = '1') then
						next_state <= idle;
					elsif (branch_instruction = '1') then
						next_state <= first_cycle;
					else
						next_state <= idle;
					end if;

				when first_cycle =>
					if (rst = '1') then
						next_state <= idle;
					else
						next_state <= second_cycle;
					end if;
					
				when second_cycle =>
					if (rst = '1') then
						next_state <= idle;
					else
						next_state <= third_cycle;
					end if;
					
				when third_cycle =>
					if (rst = '1') then
						next_state <= idle;
					else
						next_state <= fourth_cycle;
					end if;

				when fourth_cycle =>
					if (rst = '1') then
						next_state <= idle;
					elsif (branch_instruction = '1') then
						next_state <= first_cycle;
					else
						next_state <= idle;
					end if;
	
			end case;
	end process;
	
	process(curr_state)
	begin
		case curr_state is
			when idle =>				
				enable_IF_ID <= '1';
				nop_insertion <= '0';

			when first_cycle =>				
				enable_IF_ID <= '0';
				nop_insertion <= '0';
				
			when second_cycle =>				
				enable_IF_ID <= '0';
				nop_insertion <= '1';
				
			when third_cycle =>				
				enable_IF_ID <= '0';
				nop_insertion <= '1';

			when fourth_cycle =>				
				enable_IF_ID <= '1';
				nop_insertion <= '1';

		end case;
	end process;
	
end behaviour;

