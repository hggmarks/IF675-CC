`timescale 1ns/1ns
`include "../full-sub-1-bit/full_sub_1_bit.v"

module full_sub_4_bit(input wire [3:0] X, Y, 
                      input wire Cin, 
                      output wire [3:0] Diff, 
                      output wire Cout);

    wire temp_cout_0, temp_cout_1, temp_cout_2, out_Sub_0;

    full_sub_1_bit sub0(X[0], Y[0], Cin, Diff[0], temp_cout_0);
    full_sub_1_bit sub1(X[1], Y[1], temp_cout_0, Diff[1], temp_cout_1);
    full_sub_1_bit sub2(X[2], Y[2], temp_cout_1, Diff[2], temp_cout_2);
    full_sub_1_bit sub3(X[3], Y[3], temp_cout_2, Diff[3], Cout);

endmodule
