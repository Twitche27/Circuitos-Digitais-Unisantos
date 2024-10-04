`include "FF_D.v"

module eightbit(D, PR, CLR, Q, clk);
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