module encoder_1hot_8to3 (output wire [2:0] encoder_out,
input wire [7:0] encoder_in);

  assign encoder_out = (encoder_in == 8'b0000_0001) ? 3'b000 :
                       (encoder_in == 8'b0000_0010) ? 3'b001 :
                       (encoder_in == 8'b0000_0100) ? 3'b010 :
                       (encoder_in == 8'b0000_1000) ? 3'b011 :
                       (encoder_in == 8'b0001_0000) ? 3'b100 :
                       (encoder_in == 8'b0010_0000) ? 3'b101 :
                       (encoder_in == 8'b0100_0000) ? 3'b110 :
                       (encoder_in == 8'b1000_0000) ? 3'b111 : 3'bxxx;

endmodule