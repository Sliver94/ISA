library verilog;
use verilog.vl_types.all;
entity ALU_DW_cmp_0 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        TC              : in     vl_logic;
        GE_LT           : in     vl_logic;
        GE_GT_EQ        : in     vl_logic;
        GE_LT_GT_LE     : out    vl_logic;
        EQ_NE           : out    vl_logic;
        B_input_2       : in     vl_logic;
        n44             : in     vl_logic;
        B_input_4       : in     vl_logic;
        A_input_31      : in     vl_logic;
        p1              : in     vl_logic
    );
end ALU_DW_cmp_0;
