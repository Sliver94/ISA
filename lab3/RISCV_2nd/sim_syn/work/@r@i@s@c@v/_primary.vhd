library verilog;
use verilog.vl_types.all;
entity RISCV is
    port(
        en              : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        Data_memory_output: in     vl_logic_vector(31 downto 0);
        Instruction_memory_output: in     vl_logic_vector(31 downto 0);
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Data_memory_address: out    vl_logic_vector(31 downto 0);
        Data_memory_write_data: out    vl_logic_vector(31 downto 0);
        Instruction_memory_input: out    vl_logic_vector(31 downto 0)
    );
end RISCV;
