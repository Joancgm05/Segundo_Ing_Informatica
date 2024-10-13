// Módulo sumador completo.

module fa(output wire c_out, sum, input wire a, b, c_in);

  assign {c_out, sum} = a + b + c_in; // declaración con assign y con operador de concatenación.

endmodule