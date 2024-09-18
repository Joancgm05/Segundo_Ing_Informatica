module mux_v1(output wire y, input wire a, b, s);
  wire s_a, no_s, s_b;
  and and1(s_a, a, no_s);
  and and2(s_b, b, s);
  or or1(y, s_a, s_b);
  not inv1(no_s,s);

endmodule