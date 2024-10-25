`timescale 1ns/1ns
`include "Sp4b.v"

module Sp4b_tb;

    reg D;
    wire [3:0]Q;
    reg PR, CLR;
    reg clk;
    Sp4b uut(D, PR, CLR, Q, clk);

    initial begin
        $dumpfile("Sp4b.vcd");
        $dumpvars(0, Sp4b_tb);

        PR = 1; CLR = 0; #20;
        PR = 1; CLR = 1; D = 1; #21;
        D = 0; #21;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule