`timescale 1ns/1ns
`include "Cs015p.v"

module Cs015p_tb;

    wire [3:0]Q;
    reg clk, PR, CLR;
    Cs015p uut(PR, CLR, Q, clk);

    initial begin
        $dumpfile("Cs015p.vcd");
        $dumpvars(0, Cs015p_tb);

        PR = 1; CLR = 0; #20;
        PR = 1; CLR = 1; #320;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule