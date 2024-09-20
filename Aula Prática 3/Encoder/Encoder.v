module Encoder(BCD, abcdefg);

    input [3:0]BCD;
    output reg [6:0]abcdefg;

    always @ (BCD) begin
        case (BCD)
            4'b0001:abcdefg = 7'b1111110;

            4'b0010:abcdefg = 7'b0110000;

            4'b0011:abcdefg = 7'b1101101;

            4'b0100:abcdefg = 7'b1111001;

            4'b0101:abcdefg = 7'b0110011;

            4'b0110:abcdefg = 7'b1011011;

            4'b0111:abcdefg = 7'b1011111;

            4'b1000:abcdefg = 7'b1110000;

            4'b1001:abcdefg = 7'b1111111;

            4'b1010:abcdefg = 7'b1110011;

            4'b1011:abcdefg = 7'b1110111;

            4'b1100:abcdefg = 7'b0011111;

            4'b1101:abcdefg = 7'b1001110;

            4'b1110:abcdefg = 7'b0111101;

            4'b1111:abcdefg = 7'b1001111;

            default:abcdefg = 7'b0000000;
        endcase
    end
endmodule
        