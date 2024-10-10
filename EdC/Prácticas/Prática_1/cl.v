// Celda lógica

module cl(output wire out, input wire a, b, input wire [1:0] S);

  // Conexiones internas
  wire salida_and, salida_or, salida_xor, salida_not;

  // Instanciación de las puertas lógicas
  and and1(salida_and, a, b);
  or  or1(salida_or, a, b);
  xor xor1(salida_xor, a, b);
  not not1(salida_not, a);

  // Instanciación del multiplexor 4 a 1
  mux4_1 mux4_1_1(Out, salida_and, salida_or, salida_xor, salida_not, S);


endmodule