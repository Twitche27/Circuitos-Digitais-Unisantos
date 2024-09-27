`include "Half_Adder.v"
`include "Full_Adder.v"

module eightbit(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    output [7:0]c;

    Half_Adder u1(a[0], b[0], s[0], c[0]);
    Full_Adder u2(a[1], b[1], s[1], c[0], c[1]);
    Full_Adder u3(a[2], b[2], s[2], c[1], c[2]);
    Full_Adder u4(a[3], b[3], s[3], c[2], c[3]);
    Full_Adder u5(a[4], b[4], s[4], c[3], c[4]);
    Full_Adder u6(a[5], b[5], s[5], c[4], c[5]);
    Full_Adder u7(a[6], b[6], s[6], c[5], c[6]);
    Full_Adder u8(a[7], b[7], s[7], c[6], s[8]);
endmodule