`timescale 1ns/1ns
`include "Encoder.v"

module Encoder_tb;

    reg [3:0]BCD;
    wire [6:0]abcdefg;
    Encoder uut(BCD, abcdefg);

    initial begin
        $dumpfile("Encoder.vcd");
        $dumpvars(0, Encoder_tb);
        
        BCD = 4'b0000; #20;
        BCD = 4'b0001; #20;
        BCD = 4'b0010; #20;
        BCD = 4'b0011; #20;
        BCD = 4'b0100; #20;
        BCD = 4'b0101; #20;
        BCD = 4'b0110; #20;
        BCD = 4'b0111; #20;
        BCD = 4'b1000; #20;
        BCD = 4'b1001; #20;
        BCD = 4'b1010; #20;
        BCD = 4'b1011; #20;
        BCD = 4'b1100; #20;
        BCD = 4'b1101; #20;
        BCD = 4'b1110; #20;
        BCD = 4'b1111; #20;
        $display("Teste completo");
    end

endmodule