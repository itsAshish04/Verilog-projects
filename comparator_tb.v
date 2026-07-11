`timescale 1ns/1ps
module comparator_tb;
reg[3:0] A;
reg[3:0] B;
wire Greater;
wire Less;
wire Equal;
comparator DUT(
    .A(A),
    .B(B),
    .Greater(Greater),
    .Less(Less),
    .Equal(Equal)
);
initial begin
    $dumpfile("comparator.vcd");
$dumpvars(0, comparator_tb);

A=4'd3; B=4'd2;
#10;

A=4'd1; B=4'd7;
#10;

A=4'd5; B=4'd5;
#10;

A=4'd10; B=4'd4;
#10;

A=4'd8; B=4'd15;
#10;

$finish;
end
endmodule
