`timescale 1ns/1ns
`include "Cs3510n.v"

module Cs3510n_tb;

    wire [5:0]Q;
    reg clk, PR, CLR;
    Cs3510n uut(PR, CLR, Q, clk);

    initial begin
        $dumpfile("Cs3510n.vcd");
        $dumpvars(0, Cs3510n_tb);

        PR = 0; CLR = 1; #20;
        PR = 1; CLR = 1; #520;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule