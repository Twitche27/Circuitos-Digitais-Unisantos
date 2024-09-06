module Fila_de_Prioridade(T, C, Ts, Cs, As);

    input T, C;
    output Ts, Cs, As;
    assign Ts = T;
    assign Cs = C & ~T;
    assign As = ~T & ~C;

endmodule
