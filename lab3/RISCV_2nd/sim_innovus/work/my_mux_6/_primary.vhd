library verilog;
use verilog.vl_types.all;
entity my_mux_6 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        z               : out    vl_logic_vector(31 downto 0);
        FE_OFN1_jal_control_stage3: in     vl_logic
    );
end my_mux_6;
