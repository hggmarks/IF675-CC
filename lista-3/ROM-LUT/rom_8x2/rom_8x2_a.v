`timescale 1ns/1ns

module rom_8x2(A, B, C, OUT);
    input wire A, B, C;
    output wire [1:0] OUT;

    reg [1:0] DATA [7:0];

    initial begin

    DATA[0] = 2'b11;
    DATA[1] = 2'b11;
    DATA[2] = 2'b10;
    DATA[3] = 2'b00;
    DATA[4] = 2'b01;
    DATA[5] = 2'b01;
    DATA[6] = 2'b10;
    DATA[7] = 2'b01;

    end

    assign OUT[1] = DATA[{A, B, C}][1]; //F
    assign OUT[0] = DATA[{A, B, C}][0]; //G

endmodule