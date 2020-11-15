library verilog;
use verilog.vl_types.all;
entity myiir is
    port(
        VIN             : in     vl_logic;
        CLK             : in     vl_logic;
        RST_n           : in     vl_logic;
        a1              : in     vl_logic_vector(7 downto 0);
        b0              : in     vl_logic_vector(7 downto 0);
        b1              : in     vl_logic_vector(7 downto 0);
        DIN             : in     vl_logic_vector(7 downto 0);
        VOUT            : out    vl_logic;
        DOUT            : out    vl_logic_vector(7 downto 0)
    );
end myiir;
