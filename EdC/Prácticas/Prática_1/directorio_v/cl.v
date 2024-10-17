// módulo de una Celda lógica

module cl(output wire out, input wire a, b, input wire [1:0] S);

  wire salida_and, salida_or, salida_xor, salida_not;  // declaro los cables internos

  and and1(salida_and, a, b); // declaramos puerta and.
  or  or1(salida_or, a, b); // declaramos puerta or.
  xor xor1(salida_xor, a, b); // declaramos puerta xor.
  not not1(salida_not, a); // declaramkos puerta not.

  mux4_1 mux4_1_1(out, salida_and, salida_or, salida_xor, salida_not, S); // declaramos el multiplexor

endmodule