module HalfAdder(
    input i_a,
    input i_b,
    output o_s,
    output o_c
);

assign o_s = i_a ^ i_b;
assign o_c = i_a & i_b;

endmodule
