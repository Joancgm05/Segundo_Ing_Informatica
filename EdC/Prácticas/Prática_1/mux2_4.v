// Módulo multiplexor 2 a 1 de 4 bits.

module mux2_4 (output reg [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire s);

always @(A, B, s)
begin

    if (s)  
        Out = B;
    else 
        Out = A;
        
end

endmodule