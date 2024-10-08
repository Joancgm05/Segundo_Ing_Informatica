module fa (output wire S, output wire Cout, input wire a, input wire b, input wire Cin);

  wire sum1, carry1, carry2;

  ha_v1 ha1 (sum1, carry1, a, b);
  ha_v1 ha2 (S, carry2, Cin, sum1);
  or or1 (Cout, carry1, carry2);

endmodule