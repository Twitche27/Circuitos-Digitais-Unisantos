`timescale 1ns/1ns
`include "DEMUX_comportamental.v"
`include "MUX_comportamental.v"

module MUX_DEMUX_tb;

    reg [3:0]D;
    reg [1:0]S;
    wire [3:0]Y;
    wire ligacao;
    MUX_comportamental uut2(D, S, ligacao);
    DEMUX_comportamental uut(ligacao, S, Y);
    

    initial begin
        $dumpfile("MUX_DEMUX.vcd");
        $dumpvars(0, MUX_DEMUX_tb);

        D = 4'b1010;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste completo");
    end

endmodule