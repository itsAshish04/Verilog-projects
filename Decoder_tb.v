`timescale 1ns/1ps
module Decoder_tb;
reg A,B;
wire [3:0] Y;
Decoder DUT (
    .A(A),.B(B),.Y(Y)
);
initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(0, Decoder_tb);

    A=0; B=0;
    #10;

    A=0; B=1;
    #10;

    A=1; B=0;
    #10;

    A=1; B=1;
    #10;

    $finish;
end

endmodule