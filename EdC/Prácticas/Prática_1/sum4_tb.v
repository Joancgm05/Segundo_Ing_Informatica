// Testbench para sumador con prediccion de acarreo
`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulacion y el del paso de simulacion
module sum4_tb;


reg[3:0] test_a, test_b; // inicializamos en reg porque queremos guardar valores en las variables.
reg test_c_in;
wire[3:0] test_s; // inicializamos en wire porque su valor se lo dará el sumador.
wire test_c_out;

sum4 sum(test_s, test_c_out, test_a, test_b, test_c_in);

initial
begin
  $monitor("tiempo=%0d A=%b B=%b cin=%b S=%b cout=%b", $time, test_a, test_b, test_c_in, test_s, test_c_out);
  $dumpfile("sum4_tb.vcd");
  $dumpvars;
  //Algunos valores de prueba
  test_c_in = 1'b1;
  test_a = 4'b0000;
  test_b = 4'b0000;
  # 20;
  
  test_c_in = 1'b1;
  test_a = 4'b1111;
  test_b = 4'b0001;
  # 20;
  
  test_c_in = 1'b1;
  test_a = 4'b1111;
  test_b = 4'b1111;
  # 20;
 
  test_c_in = 1'b1;
  test_a = 4'b0000;
  test_b = 4'b1111;
  # 20;
  
  test_c_in = 1'b0;
  test_a = 4'b0101;
  test_b = 4'b1010;
  # 20;
  
  //fin simulacion
  $finish;
end

endmodule