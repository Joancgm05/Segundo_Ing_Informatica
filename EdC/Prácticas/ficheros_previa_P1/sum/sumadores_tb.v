// Testbench para modulo semisumador visto antes

`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module sumadores_tb;
//declaracion de se�ales

reg[3:0] test_a, test_b;
reg test_c_in; 
wire[3:0] test_sum; 
wire test_carry; 

//instancia del modulo a testear, con notaci�n de posiciones de argumentos 
sumadores sumadores_prueba (test_sum, test_carry, test_a, test_b, test_c_in);

//Lo siguiente comentado es una notaci�n alternativa para instanciar el m�dulo, los par�metros se denotan con un punto seguido del
//nombre del par�metro en la definici�n original del m�dulo y entre par�ntesis a qu� se conecta en el modulo actual
//no importa el orden de los par�metros definidos as� -?
//ha_v1 ha1(.a(test_a), .b(test_b), .sum(test_sum), .carry(test_carry)); 

initial
begin
  $monitor("tiempo=%0d a=%b b=%b c_in=%b suma=%b acarreo=%b", $time, test_a, test_b, test_c_in, test_sum, test_carry);
  $dumpfile("sumadores_tb.vcd");
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
