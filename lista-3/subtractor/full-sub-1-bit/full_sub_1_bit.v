`timescale 1ns/1ns

module full_sub_1_bit (input wire X, Y, vemUm, output wire dif, vaiUm);
    
    assign dif = X ^ Y ^ vemUm;
    assign vaiUm = (~X&Y) | (Y & vemUm) | (~X & vemUm);

endmodule