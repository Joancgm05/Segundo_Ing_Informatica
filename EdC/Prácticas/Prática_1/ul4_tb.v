// Testbench para el módulo unidad lógica de 4 bits.

`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module ul4_tb;
//declaracion de se�ales

reg[3:0] test_a, test_b;
reg[1:0] test_s; //Ponemos las variables de entrada en reg porque las queremos inicializar.
wire[3:0] test_Out; // Dejamos la variable de salida en wire porque su valor lo definirá el multiplexor.

//instancia del modulo a testear, con notaci�n de posiciones de argumentos 
ul4 ul4_prueba(test_Out, test_a, test_b, test_s);

initial
begin
  $monitor("tiempo=%0d a=%b b=%b s=%b Out=%b", $time, test_a, test_b, test_s, test_Out);
  $dumpfile("ul4_tb.vcd");
  $dumpvars;

  // Inicializamos las señales.
  test_a = 4'b0101;
  test_b = 4'b1010;
  test_s = 2'b00;
  #20;

  // Cambiamos el valor a b.

  test_s = 2'b01;
  #20;

  // Cambiamos valores de a y b y comprobamos que Out cambia en gtkwave ya que s = 1.

  test_s = 2'b10;
  #20;

  // Cambiamos valor a a.

  test_s = 2'b11;
  #20;
  
  $finish;  //fin simulacion

end
endmodule
