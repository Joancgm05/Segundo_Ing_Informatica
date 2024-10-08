/** 
 *taréa opcional, Crea un sumador completo de 4 bits en el fichero sum4.v, 
 *usando los módulos definidos en el fichero fa_vr.v (que incluyen retardos). 
 *Intenta comprobar los resultados usando el testbench sum4_tb.v. ¿Ves algo 
 *extraño? Usa el GTKwave para tratar de encontrar el error.
 */

module sumadores (output wire[3:0] S, output wire c_out, input wire[3:0] a, input wire[3:0] b, input wire c_in);

wire C1, C2, C3;

fa_vr fa0 (S[0], C1, a[0], b[0], c_in);
fa_vr fa1 (S[1], C2, a[1], b[1], C1);
fa_vr fa2 (S[2], C3, a[2], b[2], C2);
fa_vr fa3 (S[3], c_out, a[3], b[3], C3);

endmodule