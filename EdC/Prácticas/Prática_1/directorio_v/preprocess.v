module preprocess(output wire [3:0] AMod, output wire [3:0] BMod, input wire [3:0] A, input wire [3:0] B, input wire [2:0] Op);

  wire add1, op1_A, op2_B, cpl;
  wire salida_mux2_4_1, salida mux_2_4_2;
  
  assign add1 = ~(Op[1]) & Op[0];
  assign op1_A = (Op[1] & ~(Op[0])) | (Op[2] & ~(Op[1]));
  assign op2_B = (Op[1] & ~(Op[0])) | (Op[2] & ~(Op[1]));
  assign cpl = (~(Op[2]) & ~(Op[1]) & Op[0]) | (Op[2] & Op[1] & Op[0]);

  mux2_4 mux2_4_1 (salida_mux2_4_1, A, B, op2_B);
  mux2_4 mux2_4_2 (salida_mux2_4_2, 4'b0000, 4'b0001, add1);
  mux2_4 mux2_4_3 (AMod, salida_mux2_4_2, A, op1_A);
  compl1 compl1_1 (BMod, salida_mux_4_1, cpl);

endmodule 