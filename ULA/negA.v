
module negA(a, s);
    input [7:0]a;
    output [7:0]s;

    assign s = -a;
endmodule

module EN_negA(a, EN, s);
    input [7:0]a;
    output [8:0]s;
    input EN;
    wire [7:0]w;

    negA u1(a, w);
    Three_State_Arithmetic u2({1'b0, w}, s, EN);
endmodule