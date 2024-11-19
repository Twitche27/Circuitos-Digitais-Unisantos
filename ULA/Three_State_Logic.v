module Three_State_Logic(a, s, EN);
    input a;
    output reg s;
    input EN;

    always @(*) begin
        if (EN)
            s = a;
        else
            s = 1'bz;   
    end
endmodule