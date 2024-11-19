`timescale 1ns/1ns
`include "Greater.v"

module Greater_tb;
    reg [7:0]a;
    reg [7:0]b;
    wire [5:0]s;
    reg EN;
    EN_Greater_Less uut(a, b, s, EN);

    initial begin
        $dumpfile("Greater.vcd");
        $dumpvars(0, Greater_tb);

        EN = 1'b1;
        a = 8'b00110101;
        b = 8'b10010100; #20;
        a = 8'b11100001;
        b = 8'b01010101; #20;
        EN = 1'b0;
        a = 8'b00110101;
        b = 8'b10010100; #20;
        EN = 1'b1;
        a = 8'b00110101;
        b = 8'b00110101; #20;

        $display("Teste completo");
    end

endmodule