`timescale 1ns/5ns

`include "full_sub_1_bit.v"

module full_sub_1_bit_tb();
    reg x, y, cin;
    wire dif, cout;

    full_sub_1_bit uut(x, y ,cin, dif, cout);

    initial begin
        $dumpfile("full_sub_1_bit_tb.vcd");
        $dumpvars(0, full_sub_1_bit_tb);
        #50;
        x = 0; y = 0; cin = 0;
        #50;
        x = 0; y = 0; cin = 1;
        #50;
        x = 0; y = 1; cin = 0;
        #50;
        x = 0; y = 1; cin = 1;
        #50;
        x = 1; y = 0; cin = 0;
        #50;
        x = 1; y = 0; cin = 1;
        #50;
        x = 1; y = 1; cin = 0;
        #50;
        x = 1; y = 1; cin = 1;
        #50;

    end
endmodule
        
