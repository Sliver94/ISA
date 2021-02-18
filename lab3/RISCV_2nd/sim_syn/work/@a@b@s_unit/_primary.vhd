library verilog;
use verilog.vl_types.all;
entity ABS_unit is
    port(
        ABS_unit_in     : in     vl_logic_vector(31 downto 0);
        ABS_unit_out    : out    vl_logic_vector(31 downto 0)
    );
end ABS_unit;
