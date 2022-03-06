module encoder_1hot_8to3_A (output wire [2:0] F,
input wire [7:0] A);

  assign F = (A == 8'b0000_0001) ? 3'b000 :
                       (A == 8'b0000_0010) ? 3'b001 :
                       (A == 8'b0000_0100) ? 3'b010 :
                       (A == 8'b0000_1000) ? 3'b011 :
                       (A == 8'b0001_0000) ? 3'b100 :
                       (A == 8'b0010_0000) ? 3'b101 :
                       (A == 8'b0100_0000) ? 3'b110 :
                       (A == 8'b1000_0000) ? 3'b111 : 3'bxxx;

endmodule

module encoder_1hot_8to3_B (output wire [2:0] F,
input wire [7:0] A);

    assign F[0] = A[1] || A[3] || A[5] || A[7];
    assign F[1] = A[2] || A[3] || A[6] || A[7];
    assign F[2] = A[4] || A[5] || A[6] || A[7];

endmodule