`include "Adder.v"
`include "Three_State.v"

module EN_Adder(a, b, s, EN);
    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    input EN;
    wire [8:0]w;

    Adder u1(a, b, w);

    Three_State u2(w, s, EN);
endmodule