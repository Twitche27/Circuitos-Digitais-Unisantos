module Full_Subtractor(a, b, s, Cin, Cout);

    input a, b, Cin;
    output s, Cout;

    assign s = a ^ b ^ Cin;
    assign Cout = (~a & b) | (~a & Cin) | (b & Cin); 
endmodule