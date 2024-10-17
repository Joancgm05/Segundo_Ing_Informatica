// modulo sumador completo de 4 bits.

module sum4(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);

  wire c1, c2, c3; // declaramos los cables internos.

  fa fa0 (.sum(S[0]), .c_out(c1), .a(A[0]), .b(B[0]), .c_in(c_in)); //full adder de 1 bit (0).
  fa fa1 (.sum(S[1]), .c_out(c2), .a(A[1]), .b(B[1]), .c_in(c1)); //full adder de 1 bit (0).
  fa fa2 (.sum(S[2]), .c_out(c3), .a(A[2]), .b(B[2]), .c_in(c2)); //full adder de 1 bit (0).
  fa fa3 (.sum(S[3]), .c_out(c_out), .a(A[3]), .b(B[3]), .c_in(c3)); //full adder de 1 bit (0).

endmodule