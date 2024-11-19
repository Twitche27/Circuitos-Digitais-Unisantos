module FF_D(D, PR, CLR, Q, clk);
    input D, PR, CLR, clk;
    output reg Q;
    
    always @(negedge clk) begin
        if (PR == 0 & CLR == 1)
            Q = 0;
        else if (PR == 1 & CLR == 0)
            Q = 1;
        else if (PR == 1 & CLR == 1)
            Q = 1'bX;
        else case (D)
            default:Q = 0;
            1:Q = 1;
        endcase
    end
endmodule

module Registrador(D, PR, CLR, Q, clk);
    input [7:0]D;
    output [7:0]Q;
    input PR, CLR;
    input clk;

    genvar i;

    generate
        for (i = 0; i < 8; i = i + 1) begin
            FF_D uut(D[i], PR, CLR, Q[i], clk);
        end
    endgenerate
endmodule