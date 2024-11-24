`include "Three_States.v"

module AndBit(a, b, s);
    input a, b;
    output s;

    assign s = a & b;
endmodule

module And8bit(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output [7:0]s;

    AndBit u1(a[0], b[0], s[0]);
    AndBit u2(a[1], b[1], s[1]);
    AndBit u3(a[2], b[2], s[2]);
    AndBit u4(a[3], b[3], s[3]);
    AndBit u5(a[4], b[4], s[4]);
    AndBit u6(a[5], b[5], s[5]);
    AndBit u7(a[6], b[6], s[6]);
    AndBit u8(a[7], b[7], s[7]);
endmodule

module EN_And8Bit(a, b, EN, s);
    input [7:0]a;
    input [7:0]b;
    input EN;
    output [8:0]s;
    wire [7:0]w;

    And8bit u1(a, b, w);

    Three_State_Arithmetic u2({1'b0, w}, s, EN);
endmodule