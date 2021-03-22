module DUT(dut_if.port_in in_inter, dut_if.port_out out_inter, output enum logic [2:0] {INITIAL,WAIT1,WAIT2,WAIT3,WAIT4,SEND} state);
    
    FPmul unit_under_test(.FP_A(in_inter.A),.FP_B(in_inter.B),.FP_Z(out_inter.data),.clk(in_inter.clk));

    always_ff @(posedge in_inter.clk)
    begin
        if(in_inter.rst) begin
            in_inter.ready <= 0;
            out_inter.data <= 'x;
            out_inter.valid <= 0;
            state <= INITIAL;
        end
        else case(state)
                INITIAL: begin
                    in_inter.ready <= 1;
                    state <= WAIT1;
                end
                
                WAIT1: begin
                    if(in_inter.valid) begin
                        in_inter.ready <= 0;
                        $display("FPM: input A = %f, input B = %f",$bitstoshortreal(in_inter.A),$bitstoshortreal(in_inter.B));
                        $display("FPM: input A = %b, input B = %b",in_inter.A,in_inter.B);
                        state <= WAIT2;
                    end
                end
                

                WAIT2: begin
                    if(in_inter.valid) begin
                        state <= WAIT3;
                    end
                end


                WAIT3: begin
                    if(in_inter.valid) begin
                        state <= WAIT4;
                    end
                end

                WAIT4: begin
                    if(in_inter.valid) begin
                        $display("FPM: output OUT = %f",$bitstoshortreal(out_inter.data));
                        $display("FPM: output OUT = %b",out_inter.data);
                        out_inter.valid <= 1;
                        state <= SEND;
                    end
                end

                SEND: begin
                    if(out_inter.ready) begin
                        out_inter.valid <= 0;
                        in_inter.ready <= 1;
                        state <= WAIT1;
                    end
                end
        endcase
    end
endmodule: DUT
