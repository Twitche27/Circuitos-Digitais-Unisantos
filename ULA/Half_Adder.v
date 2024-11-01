module Half_Adder(a, b, s, c);

    input a, b;
    output reg s, c;

    always @ (a, b) begin
        if (a == 1'b0 && b == 1'b0) begin
            s = 0;
            c = 0;
        end
        if ((a == 1'b1 && b == 1'b0) || (a == 1'b0 && b == 1'b1)) begin
            s = 1;
            c = 0;
        end
        if (a == 1'b1 && b == 1'b1) begin
            s = 0;
            c = 1;
        end
    end     
endmodule