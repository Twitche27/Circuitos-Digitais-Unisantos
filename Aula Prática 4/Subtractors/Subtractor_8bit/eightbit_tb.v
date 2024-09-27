`timescale 1ns/1ns
`include "eightbit.v"

module eightbit_tb;

    reg [7:0]a;
    reg [7:0]b;
    wire [8:0]s;
    eightbit uut(a, b, s);

    initial begin
        $dumpfile("eightbit.vcd");
        $dumpvars(0, eightbit_tb);

        a = 8'b00110101;
        b = 8'b10010100; #20;
        a = 8'b11100001;
        b = 8'b01010101; #20;

        $display("Teste completo");
    end

endmodule