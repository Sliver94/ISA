library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        ALU_Out         : out    vl_logic_vector(31 downto 0);
        ZeroOut         : out    vl_logic
    );
end ALU;
