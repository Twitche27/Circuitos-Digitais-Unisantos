`timescale 1ns/1ns
`include "Sistema_de_Alarme_Residencial.v"

module Sistema_de_Alarme_Residencial_tb;

    reg P, W, M, S;
    wire A;
    Sistema_de_Alarme_Residencial uut(P, W, M, S, A);

    initial begin
        $dumpfile("Sistema_de_Alarme_Residencial.vcd");
        $dumpvars(0, Sistema_de_Alarme_Residencial_tb);

        P = 0;
        W = 0; 
        M = 0; 
        S = 0; #20;
        P = 0;
        W = 0; 
        M = 0; 
        S = 1; #20;
        P = 0;
        W = 0; 
        M = 1; 
        S = 0; #20;
        P = 0;
        W = 0; 
        M = 1; 
        S = 1; #20;
        P = 0;
        W = 1; 
        M = 0; 
        S = 0; #20;
        P = 0;
        W = 1; 
        M = 0; 
        S = 1; #20;
        P = 0;
        W = 1; 
        M = 1; 
        S = 0; #20;
        P = 0;
        W = 1; 
        M = 1; 
        S = 1; #20;
        P = 1;
        W = 0; 
        M = 0; 
        S = 0; #20;
        P = 1;
        W = 0; 
        M = 0; 
        S = 1; #20;
        P = 1;
        W = 0; 
        M = 1; 
        S = 0; #20;
        P = 1;
        W = 0; 
        M = 1; 
        S = 1; #20;
        P = 1;
        W = 1; 
        M = 0; 
        S = 0; #20;
        P = 1;
        W = 1; 
        M = 0; 
        S = 1; #20;
        P = 1;
        W = 1; 
        M = 1; 
        S = 0; #20;
        P = 1;
        W = 1; 
        M = 1; 
        S = 1; #20;
        
        $display("Teste completo");
    end

endmodule