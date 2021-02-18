library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        input0          : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        output0         : out    vl_logic_vector(31 downto 0)
    );
end PC;
