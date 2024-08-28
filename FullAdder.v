module FullAdder(
  input i_a,
  input i_b,
  input i_x,
  output o_c,
  output o_s
);

  wire w_c_ab;
  wire w_s_ab;
  wire w_c_abx;

  HalfAdder HA1 (
    .i_a(i_a    ),
    .i_b(i_b    ),
    .o_s(w_s_ab ),
    .o_c(w_c_ab )

  );

  HalfAdder HA2 (
    .i_a(w_s_ab),
    .i_b(i_x),
    .o_s(o_s),
    .o_c(w_c_abx)
  );

  assign o_c = w_c_ab | w_c_abx;

endmodule
