module lab6_source(
    input logic [3:0]num,
    input logic [2:0]sel,
    input logic clk, reset, write,
    output logic [7:0]anode,
    output logic [6:0]cathode
);
    logic [3:0]array_sel[0:7];
    integer i;
    always_ff @(posedge clk or posedge reset) begin
        if(reset) begin
            for(i = 0; i<8; i++) begin
                array_sel[i] <= 4'b0;
            end
        end
        else begin
            if (write) begin
                case(sel)
                    3'b000: array_sel[0] <= num;
                    3'b001: array_sel[1] <= num;
                    3'b010: array_sel[2] <= num;
                    3'b011: array_sel[3] <= num;
                    3'b100: array_sel[4] <= num;
                    3'b101: array_sel[5] <= num;
                    3'b110: array_sel[6] <= num;
                    3'b111: array_sel[7] <= num;
                endcase
            end
            else begin
                case(sel)
                    3'b000: begin 
                    anode <= 8'b11111110;
                    case(array_sel[0]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                    3'b001: begin 
                    anode <= 8'b11111101;
                    case(array_sel[1]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                    3'b010: begin 
                    anode <= 8'b11111011;
                    case(array_sel[2]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                    3'b011: begin 
                    anode <= 8'b11110111;
                    case(array_sel[3]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end 
                    3'b100: begin 
                    anode <= 8'b11101111;
                    case(array_sel[4]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                    3'b101: begin 
                    anode <= 8'b11011111;
                    case(array_sel[5]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end 
                    3'b110: begin 
                    anode <= 8'b10111111;
                    case(array_sel[6]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                    3'b111: begin 
                    anode <= 8'b01111111;
                    case(array_sel[7]) 
                        4'b0000: cathode <= 7'b0000001;
                        4'b0001: cathode <= 7'b1001111;
                        4'b0010: cathode <= 7'b0010010;
                        4'b0011: cathode <= 7'b0000110;
                        4'b0100: cathode <= 7'b1001100;
                        4'b0101: cathode <= 7'b0100100;
                        4'b0110: cathode <= 7'b0100000;
                        4'b0111: cathode <= 7'b0001111;
                        4'b1000: cathode <= 7'b0000000;
                        4'b1001: cathode <= 7'b0000100;
                        4'b1010: cathode <= 7'b0001000;
                        4'b1011: cathode <= 7'b1100000;
                        4'b1100: cathode <= 7'b0110001;
                        4'b1101: cathode <= 7'b1000010;
                        4'b1110: cathode <= 7'b0110000;
                        4'b1111: cathode <= 7'b0111000;
                        default: cathode <= 7'b0000000;
                    endcase
                    end
                endcase
            end
        end
    end
endmodule