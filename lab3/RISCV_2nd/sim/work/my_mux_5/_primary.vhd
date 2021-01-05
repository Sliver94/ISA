library verilog;
use verilog.vl_types.all;
entity my_mux_5 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        z               : out    vl_logic_vector(31 downto 0)
    );
end my_mux_5;
