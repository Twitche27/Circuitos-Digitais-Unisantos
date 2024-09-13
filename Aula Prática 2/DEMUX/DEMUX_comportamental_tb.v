`timescale 1ns/1ns
`include "DEMUX_comportamental.v"

module DEMUX_comportamental_tb;

    reg D;
    reg [1:0]S;
    wire [3:0]Y;
    DEMUX_comportamental uut(D, S, Y);

    initial begin
        $dumpfile("DEMUX_comportamental.vcd");
        $dumpvars(0, DEMUX_comportamental_tb);

        D = 1;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule