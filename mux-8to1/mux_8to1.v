module mux_8to1_A (output wire F,
    input wire [7:0] A, 
    input wire [2:0] Sel);

    assign F = (Sel == 3'b000) ? A[0] :
               (Sel == 3'b001) ? A[1] :
               (Sel == 3'b010) ? A[2] :
               (Sel == 3'b011) ? A[3] :
               (Sel == 3'b100) ? A[4] :
               (Sel == 3'b101) ? A[5] :
               (Sel == 3'b110) ? A[6] :
               (Sel == 3'b111) ? A[7] : 3'bXXX;

endmodule

module mux_8to1_B (output wire F,
    input wire [7:0] A,
    input wire [2:0] Sel);

    assign F = (A[0] & ~Sel[2] & ~Sel[1] & ~Sel[0]) |
               (A[1] & ~Sel[2] & ~Sel[1] &  Sel[0]) |
               (A[2] & ~Sel[2] &  Sel[1] & ~Sel[0]) |
               (A[3] & ~Sel[2] &  Sel[1] &  Sel[0]) |
               (A[4] &  Sel[2] & ~Sel[1] & ~Sel[0]) |
               (A[5] &  Sel[2] & ~Sel[1] &  Sel[0]) |
               (A[6] &  Sel[2] &  Sel[1] & ~Sel[0]) |
               (A[7] &  Sel[2] &  Sel[1] &  Sel[0]);
 
 
endmodule
