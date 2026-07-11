module comparator(
    input [3:0] A,
    input [3:0] B,
    output Greater,
    output Less,
    output Equal
);
assign Greater=(A>B);
assign Less=(A<B);
assign Equal=(A==B);
endmodule
