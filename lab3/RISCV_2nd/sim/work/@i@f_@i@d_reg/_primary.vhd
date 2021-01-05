library verilog;
use verilog.vl_types.all;
entity IF_ID_reg is
    port(
        instruction_address_in: in     vl_logic_vector(31 downto 0);
        instruction_in  : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        next_instruction_address_in: in     vl_logic_vector(31 downto 0);
        instruction_address_out: out    vl_logic_vector(31 downto 0);
        instruction_out : out    vl_logic_vector(31 downto 0);
        next_instruction_address_out: out    vl_logic_vector(31 downto 0)
    );
end IF_ID_reg;
