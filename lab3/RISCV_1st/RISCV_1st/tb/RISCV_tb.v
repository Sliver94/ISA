//`timescale 1ns

module RISCV_tb();

   wire CLK_i;
	wire EN_i;
	wire RST_i;

   wire [31:0] Instruction_memory_input_i;
   wire [31:0] Instruction_memory_output_i;

   wire [31:0] Data_memory_write_data_i;
   wire [31:0] Data_memory_address_i;
	wire MemWrite_i;
	wire MemRead_i;
	wire [31:0] Data_memory_output_i;
   
   clk_gen CG(
	.CLK(CLK_i),
	.EN(EN_i),
	.RST(RST_i)
	);

	instruction_memory IM(
	.clk(CLK_i),
	.rst(RST_i),
	.instruction_address(Instruction_memory_input_i),
	.instruction(Instruction_memory_output_i)
	);
	
   data_memory DM(
	.clk(CLK_i),
	.rst(RST_i),
	.write_data(Data_memory_write_data_i),
	.data_address(Data_memory_address_i),
	.write_enable(MemWrite_i),
	.read_enable(MemRead_i),
	.data(Data_memory_output_i)
	);   
	
   RISCV UUT(
	.en(EN_i),
	.rst(RST_i),
	.clk(CLK_i),
	.Data_memory_output(Data_memory_output_i),
	.Instruction_memory_output(Instruction_memory_output_i),
	.MemRead(MemRead_i),
	.MemWrite(MemWrite_i),
	.Data_memory_address(Data_memory_address_i),
	.Data_memory_write_data(Data_memory_write_data_i),
	.Instruction_memory_input(Instruction_memory_input_i)
	);

endmodule

		   
