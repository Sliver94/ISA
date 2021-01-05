library verilog;
use verilog.vl_types.all;
entity MEM_WB_reg is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        RegWrite_in     : in     vl_logic;
        MemtoReg_in     : in     vl_logic;
        ALU_output_in   : in     vl_logic_vector(31 downto 0);
        memory_data_in  : in     vl_logic_vector(31 downto 0);
        write_register_in: in     vl_logic_vector(4 downto 0);
        RegWrite_out    : out    vl_logic;
        MemtoReg_out    : out    vl_logic;
        ALU_output_out  : out    vl_logic_vector(31 downto 0);
        memory_data_out : out    vl_logic_vector(31 downto 0);
        write_register_out: out    vl_logic_vector(4 downto 0)
    );
end MEM_WB_reg;
