// full adder utilizando ha_vr.

module fa_vr (output wire Sum, output wire c_out, input wire a, input wire b, input wire c_in);

  wire sum1, carry1, carry2;
  
  ha_vr ha1 (sum1, carry1, a, b);
  ha_vr ha2 (Sum, carry2, c_in, sum1);
  or or1 (c_out, carry1, carry2);

endmodule