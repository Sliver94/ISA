library verilog;
use verilog.vl_types.all;
entity forwarding_unit is
    port(
        read_address1   : in     vl_logic_vector(4 downto 0);
        read_address2   : in     vl_logic_vector(4 downto 0);
        write_address_stage4: in     vl_logic_vector(4 downto 0);
        write_address_stage5: in     vl_logic_vector(4 downto 0);
        RegWrite_stage4 : in     vl_logic;
        RegWrite_stage5 : in     vl_logic;
        forwardA        : out    vl_logic_vector(1 downto 0);
        forwardB        : out    vl_logic_vector(1 downto 0)
    );
end forwarding_unit;
