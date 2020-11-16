library IEEE;
use IEEE.std_logic_1164.all;

entity control_unit is
	port(
		rst, V_in, clk 		: in std_logic;
		rst_in, en_IIR, en_out	: out std_logic
	);
end control_unit;

architecture behaviour of control_unit is
	type state is (Reset, Idle, FirstSample, Idle2, SecondSample, Idle3, nthSample);
	signal current_state, next_state : state := Reset;
	
begin
	process (clk)
		begin
		if ( clk'event and clk='1') then
			current_state <= next_state;
		end if;
	end process;

	process(rst, V_in, current_state)
	begin
		case current_state is
				when Reset =>
					if ( rst = '0') then
						next_state <= Reset;
					else
						next_state <= Idle;
					end if;

				when Idle =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= FirstSample;
					else
						next_state <= Idle;
					end if;

				when FirstSample =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= SecondSample;
					else
						next_state <= Idle2;
					end if;

				when Idle2 =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= SecondSample;
					else
						next_state <= Idle2;
					end if;

				when SecondSample =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= nthSample;
					else
						next_state <= Idle3;
					end if;

				when Idle3 =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= nthSample;
					else
						next_state <= Idle3;
					end if;

				when nthSample =>
					if ( rst = '0') then
						next_state <= Reset;
					elsif ( V_in = '1') then
						next_state <= nthSample;
					else
						next_state <= Idle3;
					end if;

				
		end case;
	end process;
	
	process(current_state)
	begin
		case current_state is
			when Reset =>
				rst_in <= '0';
				en_IIR <= '0';
				en_out <= '0';


			when Idle =>
				rst_in <= '1';
				en_IIR <= '0';
				en_out <= '0';


			when FirstSample =>
				rst_in <= '1';
				en_IIR <= '1';
				en_out <= '0';

			when Idle2 =>
				rst_in <= '1';
				en_IIR <= '0';
				en_out <= '0';

			when SecondSample =>
				rst_in <= '1';
				en_IIR <= '1';
				en_out <= '0';

			when Idle3 =>
				rst_in <= '1';
				en_IIR <= '0';
				en_out <= '0';

			when nthSample =>
				rst_in <= '1';
				en_IIR <= '1';
				en_out <= '1';

		end case;
	end process;
	
end behaviour;
			
