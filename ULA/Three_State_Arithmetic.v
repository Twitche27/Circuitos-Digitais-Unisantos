module Three_State_Arithmetic(a, s, EN);
    input [8:0]a;
    output reg [8:0]s;
    input EN;

    always @(*) begin
        if (EN)
            s = a;
        else
            s = 9'bzzzzzzzzz;   
    end
endmodule