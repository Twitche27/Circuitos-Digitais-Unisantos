`include "Adder.v"
`include "Subtractor.v"
`include "AndBit.v"
`include "OrBit.v"
`include "XorBit.v"
`include "negA.v"
`include "negB.v"
`include "Comparasions.v"
`include "Reg.v"
`include "Decoder.v"
`include "Contador.v"

module ULA (
    input [7:0] A,
    input [7:0] B,
    input [7:0] OP,
    input EN,
    output [8:0] s,
    input clk
);
    
    reg [7:0]Enablers;

    EN_Adder u1(A, B, Enablers[0], s);
    EN_Subtractor u2(A, B, Enablers[1], s);
    EN_Comparasions u3(A, B, Enablers[2], s);
    EN_And8Bit u4(A, B, Enablers[3], s);
    EN_Or8Bit u5(A, B, Enablers[4], s);
    EN_Xor8Bit u6(A, B, Enablers[5], s);
    EN_negA u7(A, Enablers[6], s);
    EN_negB u8(B, Enablers[7], s);

    always @(posedge clk) begin
        if (EN && OP != 8'b00000000)
            Enablers <= OP;
        else
            Enablers <= 8'b00000000;
    end

    always @(posedge clk) begin
        $display("Time: %0d, Enablers: %b, saida: %b, OP: %b, EN: %b", $time, Enablers, s, OP, EN);
    end

endmodule
    
module ULA_Final(
    input [7:0]A,
    input [7:0]B,
    input PR, CLR, EN, clk,
    input [2:0]OPCODE,
    output [8:0]s
);
    wire [7:0]decs;
    reg [7:0]entA, entB;
    wire [7:0]reg1s, reg2s;
    wire [8:0]ula_out;
    reg [8:0]saidaF;
    wire [1:0]state;
    Contador contador(PR, CLR, state, clk);
    Decoder dec(OPCODE, EN, decs, clk);
    Registrador_Entrada entradaA(A, PR, CLR, reg1s, clk);
    Registrador_Entrada entradaB(B, PR, CLR, reg2s, clk);
    ULA uprincipal(entA, entB, decs, EN, ula_out, clk);
    Registrador_Saida saida(saidaF, PR, CLR, s, clk);
    always @(posedge clk) begin
        case (state)
            1'b0: begin
                entA = reg1s;
                entB = reg2s;
            end
            1'b1: begin
                saidaF = ula_out;
            end
            default:
                saidaF <= 9'bX;
        endcase
    end

    always @(posedge clk) begin
    $display("Time: %0d, State: %b, entA: %b, entB: %b, reg1s: %b, reg2s: %b, ula_out: %b, saidaF: %b, PR: %b, CLR: %b", 
             $time, state, entA, entB, reg1s, reg2s, ula_out, saidaF, PR, CLR);
    end

endmodule