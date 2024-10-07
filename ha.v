module ha_prueba (output wire sum, output wire carry, input wire a input wire b);

  xor xor_1 (sum, a, b);
  and and_1 (carry, a , b);

endmodule

module ha_prueba2 (sum, carry, a, b);

  output wire sum, carry;
  input a, b; // es de tipo wire por defecto.

  xor xor1 (sum, a, b);
  and and2 (carry, a, b);

endmodule

