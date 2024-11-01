`include "Subtractor.v"
`include "Three_State.v"

module EN_Subtractor(a, b, s, EN);
    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    input EN;
    wire [8:0]w;

    Subtractor u1(a, b, w);

    Three_State u2(w, s, EN);
endmodule