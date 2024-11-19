`include "Three_State_Logic.v"

module Greater_Equal(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output reg s;

    always @(a, b) begin  
        if (a >= b)
            s = 1;
        else
            s = 0;
    end
endmodule

module Less_Equal(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output reg s;

    always @(a, b) begin  
        if (a <= b)
            s = 1;
        else
            s = 0;
    end
endmodule

module EN_Greater_Less(a, b, s, EN);
    input [7:0]a;
    input [7:0]b;
    input EN;
    wire w1, w2;
    output [5:0]s;

    Less_Equal u1(a, b, w1);
    Three_State_Logic u2(~w1, s[0], EN);
    Greater_Equal u3(a, b, w2);
    Three_State_Logic u4(~w2, s[1], EN);
    Three_State_Logic u5(w2, s[2], EN);
    Three_State_Logic u6(w1, s[3], EN);
    Three_State_Logic u7(s[2] & s[3], s[4], EN);
    Three_State_Logic u8(s[2] ^ s[3], s[5], EN);    
endmodule