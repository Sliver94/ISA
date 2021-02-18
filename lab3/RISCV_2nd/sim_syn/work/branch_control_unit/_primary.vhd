library verilog;
use verilog.vl_types.all;
entity branch_control_unit is
    port(
        clk             : in     vl_logic;
        branch_instruction: in     vl_logic;
        rst             : in     vl_logic;
        enable_IF_ID    : out    vl_logic;
        nop_insertion   : out    vl_logic
    );
end branch_control_unit;
