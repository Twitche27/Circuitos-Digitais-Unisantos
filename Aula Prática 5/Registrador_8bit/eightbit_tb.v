`timescale 1ns/1ns
`include "eightbit.v"

module eightbit_tb;

    reg [7:0]D;
    wire [7:0]Q;
    reg PR, CLR;
    reg clk;
    eightbit uut(D, PR, CLR, Q, clk);

    initial begin
        $dumpfile("eightbit.vcd");
        $dumpvars(0, eightbit_tb);

        PR = 0; CLR = 1; #20;
        PR = 0; CLR = 0; D = 8'b01010110; #17;
        D = 8'b11110000; #17;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule