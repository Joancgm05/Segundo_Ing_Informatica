// Testbench para modulo full adder con operador de concatenación.

`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module fa_tb;
//declaracion de se�ales

reg test_a, test_b, test_c_in; //e han declarado reg porque queremos inicializarlas
wire test_sum, test_carry; //se�ales de salida, se declaran como wire porque sus valores se fijan por el full adder

//instancia del modulo a testear, con notaci�n de posiciones de argumentos 
fa fa_prueba (test_sum, test_carry, test_a, test_b, test_c_in);

initial
begin
  $monitor("tiempo=%0d a=%b b=%b c_in=%b suma=%b acarreo=%b", $time, test_a, test_b, test_c_in, test_sum, test_carry);
  $dumpfile("fa_tb.vcd");
  $dumpvars;

  //vector de test 0
  test_a = 1'b0;
  test_b = 1'b0;
  test_c_in = 1'b0;
  #20;

  //vector de test 1
  test_a = 1'b0;
  test_b = 1'b1;
  test_c_in = 1'b0;
  #20;

  //vector de test 2
  test_a = 1'b1;
  test_b = 1'b0;
  test_c_in = 1'b1;
  #20;
  //vector de test 3
  test_a = 1'b1;
  test_b = 1'b1;
  test_c_in = 1'b1;
  #20;
  
  $finish;  //fin simulacion

end
endmodule
