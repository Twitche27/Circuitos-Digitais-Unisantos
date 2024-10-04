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