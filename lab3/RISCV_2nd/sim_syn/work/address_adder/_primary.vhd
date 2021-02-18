library verilog;
use verilog.vl_types.all;
entity address_adder is
    port(
        PC              : in     vl_logic_vector(31 downto 0);
        offset          : in     vl_logic_vector(31 downto 0);
        address_adder_Out: out    vl_logic_vector(31 downto 0)
    );
end address_adder;
