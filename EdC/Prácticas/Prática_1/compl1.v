// Módulo que calcula el negativo de un número en complemento a 1.

module compl1(output wire [3:0] Out, input wire [3:0] Inp, input wire cpl);

  always @(Inp, cpl)
  
    begin
      case (cpl)
        1:
          Out = ~Inv(Inp);
        0:
          Out = Inp;
      endcase

    end

endmodule