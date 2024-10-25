module Cs3510n(PR, CLR, Q, clk);
    input PR, CLR, clk;
    output reg [5:0]Q;

    always @(posedge clk) begin
        if (PR == 1 & CLR == 0)
            Q = 6'b001010;
        else if (PR == 0 & CLR == 1)
            Q = 6'b100011;
        else if (PR == 0 & CLR == 0)
            Q = 6'bXXXXXX;
        else
            Q = Q - 1;
        if (Q == 6'b001001)
            Q = 6'b100011;
    end
endmodule