`include "FF_D.v"

module Sp4b(D, PR, CLR, Q, clk);
    output reg [3:0]Q;
    input D, PR, CLR, clk;

    FF_D uut1(D, PR, CLR, Q[0], clk);
    FF_D uut2(Q[0], PR, CLR, Q[1], clk);
    FF_D uut3(Q[1], PR, CLR, Q[2], clk);
    FF_D uut4(Q[2], PR, CLR, Q[3], clk);

endmodule