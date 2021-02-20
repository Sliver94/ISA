library verilog;
use verilog.vl_types.all;
entity ALU_DW01_add_1 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        CI              : in     vl_logic;
        SUM             : out    vl_logic_vector(31 downto 0);
        CO              : out    vl_logic;
        p_1             : in     vl_logic;
        n196            : in     vl_logic;
        n192            : in     vl_logic;
        n204            : in     vl_logic;
        n184            : in     vl_logic;
        n208            : in     vl_logic;
        n216            : in     vl_logic;
        n188            : in     vl_logic;
        n180            : in     vl_logic
    );
end ALU_DW01_add_1;
