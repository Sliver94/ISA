LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RISCV IS 
	PORT
	(
		en :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Data_memory_output :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Instruction_memory_output :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MemRead :  OUT  STD_LOGIC;
		MemWrite :  OUT  STD_LOGIC;
		Data_memory_address :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Data_memory_write_data :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Instruction_memory_input :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END RISCV;

ARCHITECTURE bdf_type OF RISCV IS 

COMPONENT adder_4
	PORT(input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT address_adder
	PORT(offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 PC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 address_adder_Out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT my_mux
	PORT(sel : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 ALU_Sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 ZeroOut : OUT STD_LOGIC;
		 ALU_Out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT my_mux32
	PORT(a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT branch_control_unit
	PORT(clk : IN STD_LOGIC;
		 branch_instruction : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 enable_IF_ID : OUT STD_LOGIC;
		 nop_insertion : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ex_mem_reg
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 RegWrite_in : IN STD_LOGIC;
		 MemtoReg_in : IN STD_LOGIC;
		 MemRead_in : IN STD_LOGIC;
		 MemWrite_in : IN STD_LOGIC;
		 Branch_in : IN STD_LOGIC;
		 ZeroFlag_in : IN STD_LOGIC;
		 ALU_output_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 branch_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_data2_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 RegWrite_out : OUT STD_LOGIC;
		 MemtoReg_out : OUT STD_LOGIC;
		 MemRead_out : OUT STD_LOGIC;
		 MemWrite_out : OUT STD_LOGIC;
		 Branch_out : OUT STD_LOGIC;
		 ZeroFlag_out : OUT STD_LOGIC;
		 ALU_output_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 branch_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_data2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT forwarding_unit
	PORT(RegWrite_stage4 : IN STD_LOGIC;
		 RegWrite_stage5 : IN STD_LOGIC;
		 read_address1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_address2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 write_address_stage4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 write_address_stage5 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 forwardA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 forwardB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT hazard_detection_unit
	PORT(MemRead_stage3 : IN STD_LOGIC;
		 register_dest_stage3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 register_source1_stage2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 register_source2_stage2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 stall_inserting : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT id_ex_reg
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 RegWrite_in : IN STD_LOGIC;
		 MemtoReg_in : IN STD_LOGIC;
		 MemRead_in : IN STD_LOGIC;
		 MemWrite_in : IN STD_LOGIC;
		 Branch_in : IN STD_LOGIC;
		 ALUSrcA_in : IN STD_LOGIC;
		 ALUSrcB_in : IN STD_LOGIC;
		 stall_inserting : IN STD_LOGIC;
		 jal_control_in : IN STD_LOGIC;
		 ALUOp_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 immediate_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 next_instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_address1_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_address2_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_data1_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_data2_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 RegWrite_out : OUT STD_LOGIC;
		 MemtoReg_out : OUT STD_LOGIC;
		 MemRead_out : OUT STD_LOGIC;
		 MemWrite_out : OUT STD_LOGIC;
		 Branch_out : OUT STD_LOGIC;
		 ALUSrcA_out : OUT STD_LOGIC;
		 ALUSrcB_out : OUT STD_LOGIC;
		 jal_control_out : OUT STD_LOGIC;
		 ALUOp_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 immediate_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 next_instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_address1_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_address2_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_data1_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_data2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT if_id_reg
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 next_instruction_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 next_instruction_address_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT imm_gen
	PORT(instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 immediate : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT control
	PORT(instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 RegWrite : OUT STD_LOGIC;
		 MemtoReg : OUT STD_LOGIC;
		 MemRead : OUT STD_LOGIC;
		 MemWrite : OUT STD_LOGIC;
		 Branch : OUT STD_LOGIC;
		 ALUSrcA : OUT STD_LOGIC;
		 ALUSrcB : OUT STD_LOGIC;
		 jal_control : OUT STD_LOGIC;
		 branch_instruction : OUT STD_LOGIC;
		 ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mem_wb_reg
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 RegWrite_in : IN STD_LOGIC;
		 MemtoReg_in : IN STD_LOGIC;
		 ALU_output_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 memory_data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 RegWrite_out : OUT STD_LOGIC;
		 MemtoReg_out : OUT STD_LOGIC;
		 ALU_output_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 memory_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 write_register_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pc
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registers
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 write_enable : IN STD_LOGIC;
		 data_write : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_address1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 read_address2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 write_address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data_read1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_read2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	A_input :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	A_no_forwarding :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	address_adder_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ALU_or_jal_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ALU_output_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ALU_output_stage4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ALU_output_stage5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ALUOp_stage2 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	ALUOp_stage3 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	ALUSrcA_stage2 :  STD_LOGIC;
SIGNAL	ALUSrcA_stage3 :  STD_LOGIC;
SIGNAL	ALUSrcB_stage2 :  STD_LOGIC;
SIGNAL	ALUSrcB_stage3 :  STD_LOGIC;
SIGNAL	B_input :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	B_no_forwarding :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	bcu_IF_ID_en :  STD_LOGIC;
SIGNAL	bcu_NOP_insertion :  STD_LOGIC;
SIGNAL	bcu_PC_en :  STD_LOGIC;
SIGNAL	branch_address_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	branch_address_stage4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	branch_instruction_stage2 :  STD_LOGIC;
SIGNAL	Branch_stage2 :  STD_LOGIC;
SIGNAL	Branch_stage3 :  STD_LOGIC;
SIGNAL	branch_stage4 :  STD_LOGIC;
SIGNAL	forwardA :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	forwardB :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	ID_EX_stall_inserting :  STD_LOGIC;
SIGNAL	IF_ID_en :  STD_LOGIC;
SIGNAL	immediate_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	immediate_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	instruction_address_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	instruction_address_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	instruction_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	jal_control_stage2 :  STD_LOGIC;
SIGNAL	jal_control_stage3 :  STD_LOGIC;
SIGNAL	memory_data_out_stage5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	MemRead_stage2 :  STD_LOGIC;
SIGNAL	MemRead_stage3 :  STD_LOGIC;
SIGNAL	MemtoReg_stage2 :  STD_LOGIC;
SIGNAL	MemtoReg_stage3 :  STD_LOGIC;
SIGNAL	MemtoReg_stage4 :  STD_LOGIC;
SIGNAL	MemtoReg_stage5 :  STD_LOGIC;
SIGNAL	MemWrite_stage2 :  STD_LOGIC;
SIGNAL	MemWrite_stage3 :  STD_LOGIC;
SIGNAL	next_instruction :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	next_instruction_address_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	next_instruction_address_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	not_stall :  STD_LOGIC;
SIGNAL	PC_en :  STD_LOGIC;
SIGNAL	PC_input :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	PC_output :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	PCSrc :  STD_LOGIC;
SIGNAL	read_address1_stage3 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	read_address2_stage3 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	read_data1_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	read_data1_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	read_data2_stage2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	read_data2_stage3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	RegWrite_stage2 :  STD_LOGIC;
SIGNAL	RegWrite_stage3 :  STD_LOGIC;
SIGNAL	RegWrite_stage4 :  STD_LOGIC;
SIGNAL	RegWrite_stage5 :  STD_LOGIC;
SIGNAL	stall_en :  STD_LOGIC;
SIGNAL	stall_inserting :  STD_LOGIC;
SIGNAL	write_data_stage5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	write_register_stage3 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	write_register_stage4 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	write_register_stage5 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	ZeroFlag_stage3 :  STD_LOGIC;
SIGNAL	ZeroFlag_stage4 :  STD_LOGIC;


BEGIN 



b2v_adder_4_inst : adder_4
PORT MAP(input => PC_output,
		 output => next_instruction);


b2v_address_adder_inst : address_adder
PORT MAP(offset => immediate_stage3,
		 PC => instruction_address_stage3,
		 address_adder_Out => address_adder_stage3);


b2v_address_adder_output_mux_inst : my_mux
PORT MAP(sel => jal_control_stage3,
		 a => address_adder_stage3,
		 b => ALU_output_stage3,
		 z => branch_address_stage3);


b2v_ALU_inst : alu
PORT MAP(A => A_input,
		 ALU_Sel => ALUOp_stage3,
		 B => B_input,
		 ZeroOut => ZeroFlag_stage3,
		 ALU_Out => ALU_output_stage3);


b2v_ALU_output_mux_inst : my_mux
PORT MAP(sel => jal_control_stage3,
		 a => ALU_output_stage3,
		 b => next_instruction_address_stage3,
		 z => ALU_or_jal_stage3);


b2v_Amux_forwarding_inst : my_mux32
PORT MAP(a => A_no_forwarding,
		 b => ALU_output_stage4,
		 c => write_data_stage5,
		 sel => forwardA,
		 z => A_input);


b2v_Amux_inst : my_mux
PORT MAP(sel => ALUSrcA_stage3,
		 a => read_data1_stage3,
		 b => instruction_address_stage3,
		 z => A_no_forwarding);


PCSrc <= branch_stage4 AND ZeroFlag_stage4;


b2v_Bmux_forwarding_inst : my_mux32
PORT MAP(a => B_no_forwarding,
		 b => ALU_output_stage4,
		 c => write_data_stage5,
		 sel => forwardB,
		 z => B_input);


b2v_Bmux_inst : my_mux
PORT MAP(sel => ALUSrcB_stage3,
		 a => read_data2_stage3,
		 b => immediate_stage3,
		 z => B_no_forwarding);


b2v_branch_control_unit_inst : branch_control_unit
PORT MAP(clk => clk,
		 branch_instruction => branch_instruction_stage2,
		 rst => rst,
		 enable_IF_ID => bcu_IF_ID_en,
		 nop_insertion => bcu_NOP_insertion);


b2v_EX_MEM_inst : ex_mem_reg
PORT MAP(clk => clk,
		 rst => rst,
		 en => en,
		 RegWrite_in => RegWrite_stage3,
		 MemtoReg_in => MemtoReg_stage3,
		 MemRead_in => MemRead_stage3,
		 MemWrite_in => MemWrite_stage3,
		 Branch_in => Branch_stage3,
		 ZeroFlag_in => ZeroFlag_stage3,
		 ALU_output_in => ALU_or_jal_stage3,
		 branch_address_in => branch_address_stage3,
		 read_data2_in => read_data2_stage3,
		 write_register_in => write_register_stage3,
		 RegWrite_out => RegWrite_stage4,
		 MemtoReg_out => MemtoReg_stage4,
		 MemRead_out => MemRead,
		 MemWrite_out => MemWrite,
		 Branch_out => branch_stage4,
		 ZeroFlag_out => ZeroFlag_stage4,
		 ALU_output_out => ALU_output_stage4,
		 branch_address_out => branch_address_stage4,
		 read_data2_out => Data_memory_write_data,
		 write_register_out => write_register_stage4);


b2v_forwarding_unit_inst : forwarding_unit
PORT MAP(RegWrite_stage4 => RegWrite_stage4,
		 RegWrite_stage5 => RegWrite_stage5,
		 read_address1 => read_address1_stage3,
		 read_address2 => read_address2_stage3,
		 write_address_stage4 => write_register_stage4,
		 write_address_stage5 => write_register_stage5,
		 forwardA => forwardA,
		 forwardB => forwardB);


b2v_hadard_detection_unit_inst : hazard_detection_unit
PORT MAP(MemRead_stage3 => MemRead_stage3,
		 register_dest_stage3 => write_register_stage3,
		 register_source1_stage2 => instruction_stage2(19 DOWNTO 15),
		 register_source2_stage2 => instruction_stage2(24 DOWNTO 20),
		 stall_inserting => stall_inserting);


b2v_ID_EX_reg_inst : id_ex_reg
PORT MAP(clk => clk,
		 rst => rst,
		 en => en,
		 RegWrite_in => RegWrite_stage2,
		 MemtoReg_in => MemtoReg_stage2,
		 MemRead_in => MemRead_stage2,
		 MemWrite_in => MemWrite_stage2,
		 Branch_in => Branch_stage2,
		 ALUSrcA_in => ALUSrcA_stage2,
		 ALUSrcB_in => ALUSrcB_stage2,
		 stall_inserting => ID_EX_stall_inserting,
		 jal_control_in => jal_control_stage2,
		 ALUOp_in => ALUOp_stage2,
		 immediate_in => immediate_stage2,
		 instruction_address_in => instruction_address_stage2,
		 next_instruction_address_in => next_instruction_address_stage2,
		 read_address1_in => instruction_stage2(19 DOWNTO 15),
		 read_address2_in => instruction_stage2(24 DOWNTO 20),
		 read_data1_in => read_data1_stage2,
		 read_data2_in => read_data2_stage2,
		 write_register_in => instruction_stage2(11 DOWNTO 7),
		 RegWrite_out => RegWrite_stage3,
		 MemtoReg_out => MemtoReg_stage3,
		 MemRead_out => MemRead_stage3,
		 MemWrite_out => MemWrite_stage3,
		 Branch_out => Branch_stage3,
		 ALUSrcA_out => ALUSrcA_stage3,
		 ALUSrcB_out => ALUSrcB_stage3,
		 jal_control_out => jal_control_stage3,
		 ALUOp_out => ALUOp_stage3,
		 immediate_out => immediate_stage3,
		 instruction_address_out => instruction_address_stage3,
		 next_instruction_address_out => next_instruction_address_stage3,
		 read_address1_out => read_address1_stage3,
		 read_address2_out => read_address2_stage3,
		 read_data1_out => read_data1_stage3,
		 read_data2_out => read_data2_stage3,
		 write_register_out => write_register_stage3);


ID_EX_stall_inserting <= bcu_NOP_insertion OR stall_inserting;


IF_ID_en <= stall_en AND bcu_IF_ID_en;


b2v_IF_ID_reg_inst : if_id_reg
PORT MAP(clk => clk,
		 rst => rst,
		 en => IF_ID_en,
		 instruction_address_in => PC_output,
		 instruction_in => Instruction_memory_output,
		 next_instruction_address_in => next_instruction,
		 instruction_address_out => instruction_address_stage2,
		 instruction_out => instruction_stage2,
		 next_instruction_address_out => next_instruction_address_stage2);


b2v_imm_gen_inst : imm_gen
PORT MAP(instruction => instruction_stage2,
		 immediate => immediate_stage2);


b2v_control_inst : control
PORT MAP(instruction => instruction_stage2,
		 RegWrite => RegWrite_stage2,
		 MemtoReg => MemtoReg_stage2,
		 MemRead => MemRead_stage2,
		 MemWrite => MemWrite_stage2,
		 Branch => Branch_stage2,
		 ALUSrcA => ALUSrcA_stage2,
		 ALUSrcB => ALUSrcB_stage2,
		 jal_control => jal_control_stage2,
		 branch_instruction => branch_instruction_stage2,
		 ALUOp => ALUOp_stage2);


b2v_MEM_WB_reg_inst : mem_wb_reg
PORT MAP(clk => clk,
		 rst => rst,
		 en => en,
		 RegWrite_in => RegWrite_stage4,
		 MemtoReg_in => MemtoReg_stage4,
		 ALU_output_in => ALU_output_stage4,
		 memory_data_in => Data_memory_output,
		 write_register_in => write_register_stage4,
		 RegWrite_out => RegWrite_stage5,
		 MemtoReg_out => MemtoReg_stage5,
		 ALU_output_out => ALU_output_stage5,
		 memory_data_out => memory_data_out_stage5,
		 write_register_out => write_register_stage5);


b2v_mux_stage5_inst : my_mux
PORT MAP(sel => MemtoReg_stage5,
		 a => ALU_output_stage5,
		 b => memory_data_out_stage5,
		 z => write_data_stage5);


not_stall <= NOT(stall_inserting);



PC_en <= stall_en AND bcu_PC_en;


bcu_PC_en <= IF_ID_en OR PCSrc;


b2v_PC_inst : pc
PORT MAP(clk => clk,
		 rst => rst,
		 en => PC_en,
		 input => PC_input,
		 output => PC_output);


b2v_PCmux_inst : my_mux
PORT MAP(sel => PCSrc,
		 a => next_instruction,
		 b => branch_address_stage4,
		 z => PC_input);


b2v_registers_inst : registers
PORT MAP(clk => clk,
		 rst => rst,
		 write_enable => RegWrite_stage5,
		 data_write => write_data_stage5,
		 read_address1 => instruction_stage2(19 DOWNTO 15),
		 read_address2 => instruction_stage2(24 DOWNTO 20),
		 write_address => write_register_stage5,
		 data_read1 => read_data1_stage2,
		 data_read2 => read_data2_stage2);


stall_en <= en AND not_stall;

Data_memory_address <= ALU_output_stage4;
Instruction_memory_input <= PC_output;

END bdf_type;