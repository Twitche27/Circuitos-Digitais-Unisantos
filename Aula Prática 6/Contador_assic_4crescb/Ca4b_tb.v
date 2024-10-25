`timescale 1ns/1ns
`include "Ca4b.v"

module Ca4b_tb;

    reg T;
    wire [3:0]Q;
    reg PR, CLR;
    reg clk;
    Ca4b uut(T, PR, CLR, Q, clk);

    initial begin
        $dumpfile("Ca4b.vcd");
        $dumpvars(0, Ca4b_tb);

        PR = 1; CLR = 0; T = 1; #20;
        PR = 1; CLR = 1; #300;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule