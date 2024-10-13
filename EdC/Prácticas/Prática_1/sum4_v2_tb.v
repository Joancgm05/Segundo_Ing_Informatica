// Testbench para modulo full adder de 4 bits

`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module sum4_v2_tb;
//declaracion de se�ales

reg[3:0] test_a, test_b;
reg test_c_in; 
wire[3:0] test_S; 
wire test_c_out; 

//instancia del modulo a testear, con notaci�n de posiciones de argumentos 
sum4_v2 sum4_prueba (test_S, test_c_out, test_a, test_b, test_c_in);

initial
begin
  $monitor("tiempo=%0d a=%b b=%b c_in=%b suma=%b acarreo=%b", $time, test_a, test_b, test_c_in, test_S, test_c_out);
  $dumpfile("sum4_v2_tb.vcd");
  $dumpvars;

  //Algunos valores de prueba
  test_c_in = 1'b1;
  test_a = 4'b0000;
  test_b = 4'b0000;
  # 20;
  
  test_c_in = 1'b0;
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
  
  $finish;  //fin simulacion

end
endmodule
