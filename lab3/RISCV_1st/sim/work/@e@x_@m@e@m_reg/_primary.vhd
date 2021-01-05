library verilog;
use verilog.vl_types.all;
entity EX_MEM_reg is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        RegWrite_in     : in     vl_logic;
        MemtoReg_in     : in     vl_logic;
        MemRead_in      : in     vl_logic;
        MemWrite_in     : in     vl_logic;
        Branch_in       : in     vl_logic;
        write_register_in: in     vl_logic_vector(4 downto 0);
        ZeroFlag_in     : in     vl_logic;
        ALU_output_in   : in     vl_logic_vector(31 downto 0);
        branch_address_in: in     vl_logic_vector(31 downto 0);
        read_data2_in   : in     vl_logic_vector(31 downto 0);
        RegWrite_out    : out    vl_logic;
        MemtoReg_out    : out    vl_logic;
        MemRead_out     : out    vl_logic;
        MemWrite_out    : out    vl_logic;
        Branch_out      : out    vl_logic;
        write_register_out: out    vl_logic_vector(4 downto 0);
        ZeroFlag_out    : out    vl_logic;
        ALU_output_out  : out    vl_logic_vector(31 downto 0);
        branch_address_out: out    vl_logic_vector(31 downto 0);
        read_data2_out  : out    vl_logic_vector(31 downto 0)
    );
end EX_MEM_reg;
