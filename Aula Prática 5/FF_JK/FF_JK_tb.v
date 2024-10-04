`timescale 1ns/1ns
`include "FF_JK.v"

module FF_JK_tb;

    reg J, K, PR, CLR, clk;
    wire Q;
    FF_JK uut(J, K, PR, CLR, Q, clk);

    initial begin
        $dumpfile ("FF_JK.vcd");
        $dumpvars (1);

        PR = 1; CLR = 0; #20;
        PR = 1; CLR = 1; J = 0; K = 0; #20;
        J = 0; K = 1; #20;
        J = 1; K = 0; #20;
        J = 1; K = 1; #20;
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk ;
    end
endmodule