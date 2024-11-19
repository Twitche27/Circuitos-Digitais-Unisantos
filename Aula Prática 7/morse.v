module morse (in, out, reset, clk);
    input in, reset, clk;
    output reg [7:0] out;

    parameter IDLE = 6'bxxxxxx, E = 6'b000000, T = 6'b000001, I = 6'b000010, A = 6'b000011, N = 6'b000100, M = 6'b000101, S = 6'b000110, U = 6'b000111, R = 6'b001000, W = 6'b001001, D = 6'b001010, K = 6'b001011, G = 6'b001100, O = 6'b001101, H = 6'b001110, V = 6'b001111, F = 6'b010000, L = 6'b010001, P = 6'b010010, J = 6'b010011, B = 6'b010100, LetraX = 6'b010101, C = 6'b010110, Y = 6'b010111, letraZ = 6'b011000, Q = 6'b011001, cinco = 6'b011010, quatro = 6'b011011, tres = 6'b011100, dois = 6'b011101, um = 6'b011110, seis = 6'b011111, sete = 6'b100000, oito = 6'b100001, nove = 6'b100010, zero = 6'b100011, UBlank = 6'b100101, O1Blank = 6'b100110, O2Blank = 6'b100111;
    reg [5:0] state, next_state;

    // Lógica Sequencial    
    always @(posedge clk) begin
        if (reset)
            state = IDLE;
        else
            state = next_state;        
    end
    
    // Lógica Combinacional de entrada
    always @(*) begin
        case (state)   // 1 -> ponto 0 -> traço
            IDLE: begin
                if (in)
                    next_state = E; // .
                else
                    next_state = T; // -
            end   
            E: begin
                if (in)
                    next_state = I; // ..
                else
                    next_state = A; // .-
            end                     
            T: begin
                if (in)
                    next_state = N; // -.
                else
                    next_state = M; // --
            end                     
            I: begin
                if (in)
                    next_state = S; // ...
                else
                    next_state = U; // ..-
            end                     
            A: begin
                if (in)
                    next_state = R; // .-.
                else
                    next_state = W; // .--
            end                     
            N: begin
                if (in)
                    next_state = D; // -..
                else
                    next_state = K; // -.-
            end                     
            M: begin
                if (in)
                    next_state = G; // --.
                else
                    next_state = O; // ---
            end                     
            S: begin
                if (in)
                    next_state = H; // ....
                else
                    next_state = V; // ...-
            end                     
            U: begin
                if (in)
                    next_state = F; // ..-.
                else
                    next_state = UBlank; // vazio
            end                     
            R: begin
                if (in)
                    next_state = L; // .-..
                else
                    next_state = IDLE; // vazio
            end                     
            W: begin
                if (in)
                    next_state = P; // .--.
                else
                    next_state = J; // .---
            end                     
            D: begin
                if (in)
                    next_state = B; // -...
                else
                    next_state = LetraX; // -..-
            end                     
            K: begin
                if (in)
                    next_state = C; // -.-.
                else
                    next_state = Y; // -.--
            end                     
            G: begin
                if (in)
                    next_state = letraZ; // --..
                else
                    next_state = Q; // --.-
            end                     
            O: begin
                if (in)
                    next_state = O1Blank; // vazio
                else
                    next_state = O2Blank; // vazio
            end                   
            H: begin
                if (in)
                    next_state = cinco; // .....
                else
                    next_state = quatro; // ....-
            end                   
            V: begin
                if (in)
                    next_state = IDLE; // vazio
                else
                    next_state = tres; // ...--
            end                   
            UBlank: begin
                if (in)
                    next_state = IDLE; // vazio
                else
                    next_state = dois; // ..---
            end                   
            J: begin
                if (in)
                    next_state = IDLE; // vazio
                else
                    next_state = um; // .----
            end                   
            B: begin
                if (in)
                    next_state = cinco; // -....
                else
                    next_state = IDLE; // vazio
            end                   
            letraZ: begin
                if (in)
                    next_state = sete; // --...
                else
                    next_state = IDLE; // vazio
            end                   
            O1Blank: begin
                if (in)
                    next_state = oito; // ---..
                else
                    next_state = IDLE; // vazio
            end                   
            O2Blank: begin
                if (in)
                    next_state = nove; // ----.
                else
                    next_state = zero; // -----
            end                   
            default: next_state = IDLE;
        endcase
        
    end

    // Lógica Combinacional de saída
    always @(*) begin
        case (state)
            IDLE: out = 8'h00;
            zero: out = 8'h30;
            um: out = 8'h31;
            dois: out = 8'h32;
            tres: out = 8'h33;
            quatro: out = 8'h34;
            cinco: out = 8'h35;
            seis: out = 8'h36;
            sete: out = 8'h37;
            oito: out = 8'h38;
            nove: out = 8'h39;
            A: out = 8'h41;
            B: out = 8'h42;
            C: out = 8'h43;
            D: out = 8'h44;
            E: out = 8'h45;
            F: out = 8'h46;
            G: out = 8'h47;
            H: out = 8'h48;
            I: out = 8'h49;
            J: out = 8'h4A;
            K: out = 8'h4B;
            L: out = 8'h4C;
            M: out = 8'h4D;
            N: out = 8'h4E;
            O: out = 8'h4F;
            P: out = 8'h50;
            Q: out = 8'h51;
            R: out = 8'h52;
            S: out = 8'h53;
            T: out = 8'h54;
            U: out = 8'h55;
            V: out = 8'h56;
            W: out = 8'h57;
            LetraX: out = 8'h58;
            Y: out = 8'h59;
            letraZ: out = 8'h5A;        
            default: next_state = IDLE;
        endcase
    end
endmodule