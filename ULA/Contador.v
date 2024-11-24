module Contador(PR, CLR, Q, clk);
    input PR, CLR, clk;
    output reg [1:0]Q;

    always @(posedge clk) begin
        if (PR == 0 && CLR == 1)
            Q = 2'b00;
        else if (PR == 1 && CLR == 0)
            Q = 2'b10;
        else if (PR == 1 && CLR == 1)
            Q = 2'bXX;
        else if (Q == 2'b01)
            Q <= 2'b00;
        else
            Q <= Q + 1;
    end
endmodule