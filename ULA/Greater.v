`include "Three_State.v"

module Greater(a, b, s);
    input [7:0]a;
    input [7:0]b;
    output s;

    always @(a or b) begin  
        if (a > b)
            s = 1;
        else
            s = 0;
    end
    

endmodule