module FF_D(D, PR, CLR, Q, clk);
    input D, PR, CLR, clk;
    output reg Q;
    
    always @(posedge clk) begin
        if (PR == 0 && CLR == 1)
            Q = 1'bX;
        else if (PR == 1 && CLR == 0)
            Q = 1'b1;
        else if (PR == 1 && CLR == 1)
            Q = 1'bX;
        else case (D)
            1'b0:Q = 1'b0;
            1'b1:Q = 1'b1;
        endcase
    end
endmodule

module Registrador_Entrada(D, PR, CLR, Q, clk);
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

module Registrador_Saida(D, PR, CLR, Q, clk);
    input [8:0]D;
    output [8:0]Q;
    input PR, CLR;
    input clk;

    genvar i;

    generate
        for (i = 0; i < 9; i = i + 1) begin
            FF_D uut(D[i], PR, CLR, Q[i], clk);
        end
    endgenerate
endmodule