`timescale 1ns/1ps

module ripplecarryadder4_tb;

reg  [3:0] A;
reg  [3:0] B;
reg        Cin;

wire [3:0] Sum;
wire       Cout;

// Instantiate the DUT
ripplecarryadder4 DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial
begin
    $dumpfile("ripplecarryadder4.vcd");
    $dumpvars(0, ripplecarryadder4_tb);

    // Test Case 1
    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #10;

    // Test Case 2
    A = 4'b0011;
    B = 4'b0101;
    Cin = 0;
    #10;

    // Test Case 3
    A = 4'b1111;
    B = 4'b0001;
    Cin = 0;
    #10;

    // Test Case 4
    A = 4'b1010;
    B = 4'b0101;
    Cin = 1;
    #10;

    // Test Case 5
    A = 4'b1111;
    B = 4'b1111;
    Cin = 1;
    #10;

    $finish;
end

endmodule