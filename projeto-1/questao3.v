module mux_4to1_questao_3_a (input A, B, C, D, 
                            output F); 

  assign F = #10 C ? (D ? 0 : ~B) : (D ? B : ~A); 

endmodule

module mux_4to1_questao_3_b (input A, B, C, D,
                            output F);
    always @(A, B, C, D)

    if (C == 1 && D == 1)
        F = #10 0;
    else if (C == 1 && D == 0)
        F = #10 ~B;
    else if (C == 0 && D == 1)
        F = #10 B;
    else if (C == 0 && D == 0)
        F = #10 ~A;
    else
        F = #10 1'bX;

endmodule

module mux_4to1_questao_3_c (input A, B, C, D,
                            output F);
    always @(A, B, C, D, F)
    begin
        case({C,D})
            2'b00: F = #10 ~A;
            2'b01: F = #10  B;
            2'b10: F = #10 ~B;
            2'b11: F = #10  0;
        endcase
    end
endmodule
