`timescale 1ns/1ns
`include "Decoder.v"

module Decoder_tb;

    reg [2:0]A;
    reg E;
    wire [7:0]S;
    Decoder uut(A, E, S);

    initial begin
        $dumpfile("Decoder.vcd");
        $dumpvars(0, Decoder_tb);
        
        E = 1;
        A = 3'b000; #20;
        A = 3'b001; #20;
        A = 3'b010; #20;
        A = 3'b011; #20;
        A = 3'b100; #20;
        A = 3'b101; #20;
        A = 3'b110; #20;
        A = 3'b111; #20;
        E = 0;
        A = 3'b100; #20;
        A = 3'b110; #20;
        $display("Teste completo");
    end

endmodule