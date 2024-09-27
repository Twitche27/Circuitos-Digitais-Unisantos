module Full_Subtractor(a, b, s, Cin, Cout);

    input a, b, Cin;
    output s, Cout;

    assign s = a ^ b ^ Cin;
    assign Cout = (!a & Cin) + (!b & Cin) + (b & Cin); 
endmodule