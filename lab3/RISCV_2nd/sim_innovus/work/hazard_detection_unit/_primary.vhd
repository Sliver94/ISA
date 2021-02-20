library verilog;
use verilog.vl_types.all;
entity hazard_detection_unit is
    port(
        MemRead_stage3  : in     vl_logic;
        MemWrite_stage2 : in     vl_logic;
        register_source1_stage2: in     vl_logic_vector(4 downto 0);
        register_source2_stage2: in     vl_logic_vector(4 downto 0);
        register_dest_stage3: in     vl_logic_vector(4 downto 0);
        register_dest_stage4: in     vl_logic_vector(4 downto 0);
        stall_inserting : out    vl_logic
    );
end hazard_detection_unit;
