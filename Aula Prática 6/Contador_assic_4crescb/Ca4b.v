`include "FF_JK.v"

module Ca4b(T, PR, CLR, Q, clk);
    output reg [3:0]Q;
    input T, PR, CLR, clk;

    FF_JK uut1(T, T, PR, CLR, Q[0], clk);
    FF_JK uut2(T, T, PR, CLR, Q[1], Q[0]);
    FF_JK uut3(T, T, PR, CLR, Q[2], Q[1]);
    FF_JK uut4(T, T, PR, CLR, Q[3], Q[2]);
endmodule