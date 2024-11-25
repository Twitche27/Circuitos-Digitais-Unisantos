`timescale 10ns/1ns
`include "ULA.v"

module tb_ULA_Final;
    reg [7:0] A, B;         // Entradas
    reg [2:0] OPCODE;       // Código de operação
    reg PR, CLR, EN, clk;   // Controles e clock
    wire [8:0] s;           // Saída

    // Instanciação do módulo ULA_Final
    ULA_Final uut (A, B, PR, CLR, EN, clk, OPCODE, s);

    // Geração de clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk; // Clock com período de 10 unidades de tempo
    end

    // Estímulos para teste
    initial begin
        $dumpfile("ULA_Final.vcd");
        $dumpvars(0, tb_ULA_Final);
        // Inicializar sinais
        A = 8'bX;
        B = 8'bX;
        OPCODE = 3'bXXX;
        PR = 0;
        CLR = 1;
        EN = 1;

        // Resetar sistema
        #15 CLR = 0; PR = 0;


        // Caso 1: Soma
        A = 8'b00000100; B = 8'b00000011; OPCODE = 3'b000;
        #5
        A = 8'bX; B = 8'bX; OPCODE = 3'bX;
        #15
        
        // Caso 2: Subtração
        A = 8'b00101010; B = 8'b00000100; OPCODE = 3'b001;
        #20

        // Caso 3: Comaparações
        A = 8'b00001000; B = 8'b00000010; OPCODE = 3'b010;
        #20

        // Caso 3: AND
        A = 8'b10101010; B = 8'b11001100; OPCODE = 3'b011;
        #20

        // Caso 4: OR
        OPCODE = 3'b100;
        #20

        // Caso 4: XOR
        OPCODE = 3'b101;
        #20

        // Caso 5: NOT A
        OPCODE = 3'b110;
        #20

        // Caso 6: NOT B
        OPCODE = 3'b111;
        #40

        // Finalizar simulação
        $finish;
    end
endmodule