library verilog;
use verilog.vl_types.all;
entity control is
    port(
        instruction     : in     vl_logic_vector(31 downto 0);
        RegWrite        : out    vl_logic;
        MemtoReg        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        ALUOp           : out    vl_logic_vector(2 downto 0);
        ALUSrcA         : out    vl_logic;
        ALUSrcB         : out    vl_logic;
        jal_control     : out    vl_logic;
        branch_instruction: out    vl_logic;
        absolute_value  : out    vl_logic
    );
end control;
