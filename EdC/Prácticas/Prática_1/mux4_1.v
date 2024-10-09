module mux4_1(output reg out, input wire a, b, c, d, input wire [1:0] S);

  always @(a, b, c, d, s)
  begin
    case (s)

    2b'00: Output = a;
    2b'01: Output = b;
    2b'10: Output = c;
    2b'11: Output = d;

    endcase
  end
endmodule 