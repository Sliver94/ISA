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
        n60             : in     vl_logic;
        B_input_2       : in     vl_logic;
        n341            : in     vl_logic;
        n346            : in     vl_logic;
        A_input_9       : in     vl_logic;
        n340            : in     vl_logic;
        A_input_11      : in     vl_logic;
        n163            : in     vl_logic;
        A_input_13      : in     vl_logic;
        n203            : in     vl_logic;
        n186            : in     vl_logic
    );
end ALU_DW_cmp_0;
