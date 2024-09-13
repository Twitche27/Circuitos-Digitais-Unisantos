module DEMUX_comportamental(D, S, Y);

    input D;
    input [1:0]S;
    output reg [3:0]Y;

    always @(S or D) begin
        if (S == 2'b00) begin
            Y[0] = D;
            Y[1] = 0;
            Y[2] = 0;
            Y[3] = 0;
        end
        if (S == 2'b01) begin
            Y[1] = D;
            Y[0] = 0;
            Y[2] = 0;
            Y[3] = 0;
        end
        if (S == 2'b10) begin
            Y[2] = D;
            Y[0] = 0;
            Y[1] = 0;
            Y[3] = 0;
        end
        if (S == 2'b11) begin
            Y[3] = D;
            Y[0] = 0;
            Y[1] = 0;
            Y[2] = 0;
        end
    end

endmodule