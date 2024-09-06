`timescale 1ns/1ns
`include "Semaforo.v"

module Semaforo_tb;

    reg A, B;
    wire Sa, Sb;
    Semaforo uut(A, B, Sa, Sb);

    initial begin
        $dumpfile("Semaforo.vcd");
        $dumpvars(0, Semaforo_tb);

        A = 0;
        B = 0; #20;
        A = 0; 
        B = 1; #20;
        A = 1;
        B = 0; #20;
        A = 1;
        B = 1; #20;

        $display("Teste completo");
    end

endmodule