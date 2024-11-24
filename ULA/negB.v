
module negB(b, s);
    input [7:0]b;
    output [7:0]s;

    assign s = -b;

endmodule

module EN_negB(b, EN, s);
    input [7:0]b;
    output [8:0]s;
    input EN;
    wire [7:0]w;

    negB u1(b, w);
    Three_State_Arithmetic u2({1'b0, w}, s, EN);
endmodule