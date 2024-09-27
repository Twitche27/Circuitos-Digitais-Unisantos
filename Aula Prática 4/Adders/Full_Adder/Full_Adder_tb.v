`timescale 1ns/1ns
`include "Full_Adder.v"
`include "Half_Adder.v"

module Full_Adder_tb;

    reg [3:0]ab;
    wire [3:0]sc;

    Half_Adder u1(ab[0], ab[1], sc[0], sc[1]);
    Full_Adder u2(ab[2], ab[3], sc[2], sc[1], sc[3]);
    

    initial begin
        $dumpfile("Full_Adder.vcd");
        $dumpvars(0, Full_Adder_tb);

        ab = 4'b0000; #20;
        ab = 4'b0001; #20;
        ab = 4'b0010; #20;
        ab = 4'b0011; #20;
        ab = 4'b0100; #20;
        ab = 4'b0101; #20;
        ab = 4'b0110; #20;
        ab = 4'b0111; #20;
        ab = 4'b1000; #20;
        ab = 4'b1001; #20;
        ab = 4'b1010; #20;
        ab = 4'b1011; #20;
        ab = 4'b1100; #20;
        ab = 4'b1101; #20;
        ab = 4'b1110; #20;
        ab = 4'b1111; #20;

        $display("Teste completo");
    end

endmodule