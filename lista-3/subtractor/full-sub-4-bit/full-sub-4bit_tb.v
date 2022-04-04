`timescale 1ns/1ns
`include "full-sub-4bit.v"

module full_sub_4_bit_tb();

    reg [3:0] x, y;
    reg cin;
    integer i;
    wire [3:0] diff;
    wire cout;

    full_sub_4_bit uut(x, y, cin, diff, cout);

    initial begin
        $dumpfile("full_sub_4_bit_tb.vcd");
        $dumpvars(0, full_sub_4_bit_tb);
        #1; x = 4'b0000; y = 4'b0000; cin = 0;
        
        for (i = 0; i < 256 ; i = 1 + 1) begin
            #1; {x[3:0]. y[3:0], cin} = i;
        end
    
    end


endmodule
