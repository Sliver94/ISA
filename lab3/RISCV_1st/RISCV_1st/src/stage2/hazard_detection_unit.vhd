library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY hazard_detection_unit IS
   PORT
   (
      MemRead_stage3:    			IN  std_logic;
		register_source1_stage2:	IN  std_logic_vector(4 DOWNTO 0);
		register_source2_stage2: 	IN  std_logic_vector(4 DOWNTO 0);
		register_dest_stage3:		IN  std_logic_vector(4 DOWNTO 0);

		stall_inserting:				OUT  std_logic
   );
END hazard_detection_unit;

ARCHITECTURE rtl OF hazard_detection_unit IS

BEGIN
   PROCESS (MemRead_stage3, register_source1_stage2, register_source2_stage2, register_dest_stage3)
   BEGIN
	stall_inserting <= '0';

	IF MemRead_stage3 = '1' THEN -- Previous operation was a load
		IF ((register_dest_stage3 = register_source1_stage2) or (register_dest_stage3 = register_source2_stage2)) THEN 
		-- if destination register of load operation is equal to source or destination register of the following operation, insert a stall
			stall_inserting <= '1';
		END IF;	
	END IF;

   END PROCESS;
END rtl;