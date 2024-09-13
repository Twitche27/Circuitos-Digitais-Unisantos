`timescale 1ns/1ns
`include "MUX_fluxo_de_dados.v"

module MUX_fluxo_de_dados_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire Y;
    MUX_fluxo_de_dados uut(D, S, Y);

    initial begin
        $dumpfile("MUX_fluxo_de_dados.vcd");
        $dumpvars(0, MUX_fluxo_de_dados_tb);

        D = 4'b1010;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule