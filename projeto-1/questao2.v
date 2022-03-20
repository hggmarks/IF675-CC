module questao2 (input A, B, C, D,
                output X, Y, E, F, notF, Z);

    assign X #5 = (A & B & C);
    assign Y #5 = ~(B | C);
    assign E #5 = (X | D);
    assign F #5 = (A | Y);
    assign notF #2 = ~F;
    assign Z #5 = (E ^ F);

endmodule

