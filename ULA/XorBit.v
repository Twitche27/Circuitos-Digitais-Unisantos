`include "Three_States.v"

module XorBit(a, b, s);
    input a, b;
    output s;

    assign s = a ^ b;
endmodule

module Xor8bit(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output [7:0]s;

    XorBit u1(a[0], b[0], s[0]);
    XorBit u2(a[1], b[1], s[1]);
    XorBit u3(a[2], b[2], s[2]);
    XorBit u4(a[3], b[3], s[3]);
    XorBit u5(a[4], b[4], s[4]);
    XorBit u6(a[5], b[5], s[5]);
    XorBit u7(a[6], b[6], s[6]);
    XorBit u8(a[7], b[7], s[7]);
endmodule

module EN_Xor8Bit(a, b, EN, s);
    input [7:0]a;
    input [7:0]b;
    input EN;
    output [8:0]s;
    wire [7:0]w;

    Xor8bit u1(a, b, w);

    Three_State_Arithmetic u2({1'b0, w}, s, EN);
endmodule