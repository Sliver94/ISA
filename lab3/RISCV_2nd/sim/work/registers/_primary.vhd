library verilog;
use verilog.vl_types.all;
entity registers is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_write      : in     vl_logic_vector(31 downto 0);
        write_address   : in     vl_logic_vector(4 downto 0);
        read_address1   : in     vl_logic_vector(4 downto 0);
        read_address2   : in     vl_logic_vector(4 downto 0);
        write_enable    : in     vl_logic;
        data_read1      : out    vl_logic_vector(31 downto 0);
        data_read2      : out    vl_logic_vector(31 downto 0)
    );
end registers;
