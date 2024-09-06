`timescale 1ns/1ns
`include "Fila_de_Prioridade.v"

module Fila_de_Prioridade_tb;

    reg T, C;
    wire Ts, Cs, As;
    Fila_de_Prioridade uut(T, C, Ts, Cs, As);

    initial begin
        $dumpfile("Fila_de_Prioridade.vcd");
        $dumpvars(0, Fila_de_Prioridade_tb);

        T = 0;
        C = 0; #20;
        T = 0;
        C = 0; #20;
        T = 0;
        C = 1; #20;
        T = 0;
        C = 1; #20;
        T = 1;
        C = 0; #20;
        T = 1;
        C = 0; #20;
        T = 1;
        C = 1; #20;
        T = 1;
        C = 1; #20;

        $display("Teste completo");
    end

endmodule