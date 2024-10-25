module Cs015p(PR, CLR, Q, clk);
    input PR, CLR, clk;
    output reg [3:0]Q;

    always @(posedge clk) begin
        if (PR == 1 & CLR == 0)
            Q = 4'b0000;
        else if (PR == 0 & CLR == 1)
            Q = 4'b1111;
        else if (PR == 0 & CLR == 0)
            Q = 4'bXXXX;
        else
            Q = Q + 1;
    end
endmodule