`include "EN_Adder.v"
`include "EN_Subtractor.v"

module ULA(A, B, OP, S, F, clk);
    input [7:0]A;
    input [7:0]B;
    input OP, clk;
    output [8:0]S;

    
