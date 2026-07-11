module bitadder16(
    input [15:0] A,
    input [15:0] B,
    output reg [15:0] Sum,
    output reg Carry
);
always @(*)
begin
    {Carry,Sum}=A+B;
end
endmodule
