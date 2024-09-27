module Full_Adder(a, b, s, Cin, Cout);

    input a, b, Cin;
    output s, Cout;

    assign s = a ^ b ^ Cin;
    assign Cout = (b & Cin) + (a & Cin) + (a & b); 
endmodule