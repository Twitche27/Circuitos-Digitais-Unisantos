`timescale 1ns/1ns
`include "AndBit.v"

module AndBit_tb;
    reg [7:0]a;
    reg [7:0]b;
    wire [7:0]s;
    reg EN;
    En_And8Bit uut(a, b, EN, s);

    initial begin
        $dumpfile("AndBit.vcd");
        $dumpvars(0, AndBit_tb);
        
        #10;
        EN = 1'b1;
        a = 8'b00110101;
        b = 8'b10010100; #20;
        a = 8'b11100001;
        b = 8'b11100001; #20;

        $display("Teste completo");
    end

endmodule