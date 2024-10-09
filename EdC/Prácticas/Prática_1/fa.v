module fa (output wire c_out, sum, input wire a, b, c_in);

  assign {c_out, sum} = a + b + c_in;
  // Acabar hasta el 3.3 y hacer test bench para la cl y el sumador de 4 bits

endmodule
