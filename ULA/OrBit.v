`include "Three_States.v"

module OrBit(a, b, s);
    input a, b;
    output s;

    assign s = a | b;
endmodule

module Or8bit(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output [7:0]s;

    OrBit u1(a[0], b[0], s[0]);
    OrBit u2(a[1], b[1], s[1]);
    OrBit u3(a[2], b[2], s[2]);
    OrBit u4(a[3], b[3], s[3]);
    OrBit u5(a[4], b[4], s[4]);
    OrBit u6(a[5], b[5], s[5]);
    OrBit u7(a[6], b[6], s[6]);
    OrBit u8(a[7], b[7], s[7]);
endmodule

module En_Or8Bit(a, b, EN, s);
    input [7:0]a;
    input [7:0]b;
    input EN;
    output [7:0]s;
    wire [7:0]w;

    Or8bit u1(a, b, w);

    Three_State_Sem_Carry u2(w, s, EN);
endmodule