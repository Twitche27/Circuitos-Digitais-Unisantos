`timescale 1ns/1ns
`include "MUX_comportamental.v"

module MUX_comportamental_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire Y;
    MUX_comportamental uut(D, S, Y);

    initial begin
        $dumpfile("MUX_comportamental.vcd");
        $dumpvars(0, MUX_comportamental_tb);

        D = 4'b1010;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule