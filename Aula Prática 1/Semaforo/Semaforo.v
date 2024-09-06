module Semaforo(A, B, Sa, Sb);

    input A, B;
    output Sa, Sb;
    assign Sa = A & B | A & ~B;
    assign Sb = ~A & B;

endmodule