module FF_JK(J, K, PR, CLR, Q, clk);
    input J, K, PR, CLR, clk;
    output reg Q;
    
    always @(posedge clk) begin
        if (PR == 0 & CLR == 1)
            Q = 1;
        else if (PR == 1 & CLR == 0)
            Q = 0;
        else if (PR == 0 & CLR == 0)
            Q = 1'bX;
        else case ({J, K})
            default:Q = Q;
            2'b01:Q = 0;
            2'b10:Q = 1;
            2'b11:Q = ~Q;
        endcase
    end
endmodule