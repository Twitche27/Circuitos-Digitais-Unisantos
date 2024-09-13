module MUX_estrutural(D, S, Y);

    input [3:0]D;
    input [1:0]S;
    output Y;
    
    wire ns0, ns1, a1, out1, a2, out2, a3, out3, a4, out4, y1, y2;

    not(ns0, S[0]);
    not(ns1, S[1]);

    and(a1, ns0, ns1);
    and(out1, a1, D[0]);
    and(a2, S[0], ns1);
    and(out2, a2, D[1]);
    and(a3, ns0, S[1]);
    and(out3, a3, D[2]);
    and(a4, S[0], S[1]);
    and(out4, a4, D[3]);

    or(y1, out1, out2);
    or(y2, y1, out3);
    or(Y, y2, out4);

endmodule