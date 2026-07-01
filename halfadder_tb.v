`timescale 1ns/1ps
module halfadder_tb;
reg a,b;
wire sum,carry;
halfadder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    $dumpfile("halfadder.vcd");
    $dumpvars(0, halfadder_tb);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
#10;
a=1;b=1;
#10;
$finish;
end
endmodule