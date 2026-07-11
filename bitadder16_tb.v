`timescale 1ns/1ps

module bitadder16_tb;

reg  [15:0] A;
reg  [15:0] B;

wire [15:0] Sum;
wire Carry;

bitadder16 DUT(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial
begin
    $dumpfile("bitadder16.vcd");
    $dumpvars(0, bitadder16_tb);
    $display("A\tB\tCarry\tSum");
    $monitor("%d\t%d\t%b\t%d", A, B, Carry, Sum);

    A = 16'd10;      B = 16'd20;      #10;
    A = 16'd100;     B = 16'd200;     #10;
    A = 16'd1000;    B = 16'd500;     #10;
    A = 16'd65535;   B = 16'd1;       #10;
    A = 16'd32768;   B = 16'd32768;   #10;

    $finish;
end

endmodule