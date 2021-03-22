class refmod extends uvm_component;
    `uvm_component_utils(refmod)
    
    packet_in tr_in;
    packet_out tr_out;
    uvm_get_port #(packet_in) in;
    uvm_put_port #(packet_out) out;
	shortreal data_real;
	bit [31:0] data_bit;
	bit [7:0] exponent;
	bit sign;

    
    function new(string name = "refmod", uvm_component parent);
        super.new(name, parent);
        in = new("in", this);
        out = new("out", this);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr_out = packet_out::type_id::create("tr_out", this);
    endfunction: build_phase
    
    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        
        forever begin
            in.get(tr_in);
			data_real = $bitstoshortreal(tr_in.A) * $bitstoshortreal(tr_in.B);
			data_bit = $shortrealtobits(data_real);
			exponent = data_bit[30:23];
			sign = data_bit[31];

			if(exponent == 0 & sign == 0) begin
				tr_out.data = 0;
			end	else if(exponent == 0 & sign == 1) begin
				tr_out.data = 2147483648;
			end else begin
				tr_out.data = data_bit;
			end

            $display("refmod: input A = %f, input B = %f, output OUT = %f",$bitstoshortreal(tr_in.A), $bitstoshortreal(tr_in.B), $bitstoshortreal(tr_out.data));
			$display("refmod: input A = %b, input B = %b, output OUT = %b",tr_in.A, tr_in.B, tr_out.data);
            out.put(tr_out);
        end
    endtask: run_phase
endclass: refmod
