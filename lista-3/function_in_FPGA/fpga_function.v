`timescale 1ns/1ns

module mux_4to1(input A, B, C, 
                input wire [1:0] Sel,
                output F);
    
    assign Sel = {A, B};
    
    assign F = (Sel == 2'b00) ? C    :
               (Sel == 2'b01) ? 1'b1 :
               (Sel == 2'b10) ? 1'b1 :
               (Sel == 2'b11) ? ~C   : 1'bX;
endmodule