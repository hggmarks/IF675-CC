`timescale 1ms / 1ms
`include "encoder_1hot_8to3.v"

module encoder_1hot_8to3_tb;
    reg [7:0] A;
    wire [2:0] F;
    encoder_1hot_8to3_A uut(F, A);
    encoder_1hot_8to3_B dut(F, A);

    initial begin

        $dumpfile("encoder_1hot_8to3_tb.vcd");
        $dumpvars(0, encoder_1hot_8to3_tb);

        A = 8'b00000001;

        #50;
        
        A = 8'b00000010;

        #50;
        
        A = 8'b00000100;

        #50;
        
        A = 8'b00001000;

        #50;
        
        A = 8'b00010000;

        #50;
        
        A = 8'b00100000;

        #50;
        
        A = 8'b01000000;

        #50; 
        
        A = 8'b10000000;

        #50;
        $display("Complete");
    end
endmodule
