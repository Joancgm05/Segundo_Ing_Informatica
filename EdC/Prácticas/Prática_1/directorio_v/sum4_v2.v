// Módulo sumador completo de 4 bits con assign y operador de concatencación.

module sum4_v2(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);

  // assign (asignación continua). Declaración del sumador con operador de concatenación
  assign {c_out, S} = A + B + c_in; 

endmodule