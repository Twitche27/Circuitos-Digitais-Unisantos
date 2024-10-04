`timescale 1ns/1ns
`include "FF_D.v"

module FF_D_tb;

    reg D, PR, CLR, clk;
    wire Q;
    FF_D uut(D, PR, CLR, Q, clk);

initial begin
    $dumpfile ("FF_D.vcd");
    $dumpvars (1);

    PR = 1; CLR = 0; #20;
    PR = 1; CLR = 1; D = 0; #20;
    D = 1; #20;
    $finish;
end

initial begin
    clk = 0;
    forever #10 clk = ~ clk ;
end
endmodule