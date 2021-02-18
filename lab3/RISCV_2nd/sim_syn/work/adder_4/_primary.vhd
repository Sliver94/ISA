library verilog;
use verilog.vl_types.all;
entity adder_4 is
    port(
        input0          : in     vl_logic_vector(31 downto 0);
        output0         : out    vl_logic_vector(31 downto 0)
    );
end adder_4;
