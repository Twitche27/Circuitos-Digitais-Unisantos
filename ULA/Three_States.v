`ifndef THREE_STATE_LOGIC
`define THREE_STATE_LOGIC
module Three_State_Logic(a, s, EN);
    input a;
    output reg s;
    input EN;

    always @(*) begin
        if (EN)
            s <= a;
        else
            s <= 1'bz;   
    end
endmodule
`endif

`ifndef THREE_STATE_ARITHMETIC
`define THREE_STATE_ARITHMETIC
module Three_State_Arithmetic(a, s, EN);
    input [8:0]a;
    output reg [8:0]s;
    input EN;

    always @(*) begin
        if (EN)
            s <= a;
        else
            s <= 9'bzzzzzzzzz;   
    end

    always @(*) begin
        $display("s: %b, a: %b", s, a);
    end
endmodule
`endif