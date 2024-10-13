// Testbench para el módulo multiplexor 4 a 1.

`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module mux4_1_tb;
//declaracion de se�ales

reg test_a, test_b, test_c, test_d;
reg[1:0] test_s; //Ponemos las variables de entrada en reg porque las queremos inicializar.
wire test_Out; // Dejamos la variable de salida en wire porque su valor lo definirá el multiplexor.

//instancia del modulo a testear, con notaci�n de posiciones de argumentos 
mux4_1 mux4_1_prueba(test_out, test_a, test_b, test_c, test_d, test_s);

initial
begin
  $monitor("tiempo=%0d a=%b b=%b c=%b d=%b s=%b out=%b", $time, test_a, test_b, test_c, test_d, test_s, test_out);
  $dumpfile("mux4_1_tb.vcd");
  $dumpvars;

  // Inicializamos las señales.
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b1;
  test_s = 2'b00;
  #20;

  // Cambiamos el valor a s para que refleje el valor de b.
  test_s = 2'b01;
  #20;

  // Cambiamos el valor a s para que refleje el valor de c.
  test_s = 2'b10;
  #20;

  // Cambiamos el valor a s para que refleje el valor de d.
  test_s = 2'b11;
  #20;

  $finish;  //fin simulacion

end
endmodule
