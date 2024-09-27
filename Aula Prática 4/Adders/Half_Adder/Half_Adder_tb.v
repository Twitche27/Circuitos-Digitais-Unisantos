`timescale 1ns/1ns
`include "Half_Adder.v"

module Half_Adder_tb;

    reg a, b;
    wire s, c;
    Half_Adder uut(a, b, s, c);

    initial begin
        $dumpfile("Half_Adder.vcd");
        $dumpvars(0, Half_Adder_tb);

        a = 0; b = 0; #20;
        a = 1; b = 0; #20;
        a = 0; b = 1; #20;
        a = 1; b = 1; #20;


        $display("Teste completo");
    end

endmodule