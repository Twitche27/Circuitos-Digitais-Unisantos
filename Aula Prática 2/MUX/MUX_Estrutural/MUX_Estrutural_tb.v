`timescale 1ns/1ns
`include "MUX_estrutural.v"

module MUX_estrutural_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire Y;
    MUX_estrutural uut(D, S, Y);

    initial begin
        $dumpfile("MUX_estrutural.vcd");
        $dumpvars(0, MUX_estrutural_tb);

        D = 4'b1010;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule