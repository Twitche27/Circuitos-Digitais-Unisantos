`include "Three_State_Arithmetic.v"

module Half_Subtractor(a, b, s, c);

    input a, b;
    output reg s, c;

    always @ (a, b) begin
        if (a == 1'b0 && b == 1'b0) begin
            s = 0;
            c = 0;
        end
        if (a == 1'b0 && b == 1'b1) begin
            s = 1;
            c = 1;
        end
        if (a == 1'b1 && b == 1'b0) begin
            s = 1;
            c = 0;
        end
        if (a == 1'b1 && b == 1'b1) begin
            s = 0;
            c = 0;
        end
    end     
endmodule

module Full_Subtractor(a, b, s, Cin, Cout);

    input a, b, Cin;
    output s, Cout;

    assign s = a ^ b ^ Cin;
    assign Cout = (~a & b) + (~a & Cin) + (b & Cin); 
endmodule

module Subtractor(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    wire [7:0]c;

    Half_Subtractor u1(a[0], b[0], s[0], c[0]);
    Full_Subtractor u2(a[1], b[1], s[1], c[0], c[1]);
    Full_Subtractor u3(a[2], b[2], s[2], c[1], c[2]);
    Full_Subtractor u4(a[3], b[3], s[3], c[2], c[3]);
    Full_Subtractor u5(a[4], b[4], s[4], c[3], c[4]);
    Full_Subtractor u6(a[5], b[5], s[5], c[4], c[5]);
    Full_Subtractor u7(a[6], b[6], s[6], c[5], c[6]);
    Full_Subtractor u8(a[7], b[7], s[7], c[6], s[8]);
endmodule

module EN_Subtractor(a, b, s, EN);
    input [7:0]a;
    input [7:0]b;
    output [8:0]s;
    input EN;
    wire [8:0]w;

    Subtractor u1(a, b, w);
    Three_State_Arithmetic u2(w, s, EN);
endmodule