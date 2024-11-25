`include "Three_States.v"

module Greater_Equal(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output reg s;

    always @(a, b) begin  
        if (a >= b)
            s = 1'b1;
        else
            s = 1'b0;
    end
endmodule

module Less_Equal(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output reg s;

    always @(a, b) begin  
        if (a <= b)
            s = 1'b1;
        else
            s = 1'b0;
    end
endmodule

module EN_Comparasions(a, b, EN, s);
    input [7:0]a;
    input [7:0]b;
    input EN;
    wire w1, w2;
    output [8:0]s;

    generate
        genvar i;
        for (i = 0; i < 3; i = i + 1) begin
            assign s[i] = 1'bz;
        end
    endgenerate

    Less_Equal u1(a, b, w1);
    Three_State_Logic u2(~w1, s[3], EN);
    Greater_Equal u3(a, b, w2);
    Three_State_Logic u4(~w2, s[4], EN);
    Three_State_Logic u5(w2, s[5], EN);
    Three_State_Logic u6(w1, s[6], EN);
    Three_State_Logic u7(s[5] & s[6], s[7], EN);
    Three_State_Logic u8(s[5] ^ s[6], s[8], EN);    
endmodule