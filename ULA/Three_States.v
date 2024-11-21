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

module Three_State_Sem_Carry(a, s, EN);
    input [7:0]a;
    output reg [7:0]s;
    input EN;

    always @(*) begin
        if (EN)
            s = a;
        else
            s = 8'bzzzzzzzz;   
    end
endmodule