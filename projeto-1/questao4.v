module questao4_tipo1 (B1, B2, B3, C ,A);
	input B1, B2, B3;
  	input wire [1:0] C;
  	output A;
  
  	always @ * 
        begin
            if(C == 2'b01)
                A = B1;
            else if (C == 2'b10)
                A = B2;
            else if (C == 2'b11)
                A = B3;
            else
                A = 0;
        end
endmodule

module questao4_tipo2 (B1, B2, B3, C, A);

	input B1, B2, B3;
  	input wire [1:0] C;
  	output A;

    assign A = C == 2'b01 ? B1 :
               C == 2'b10 ? B2 :
               C == 2'b11 ? B3 : 0;

endmodule
