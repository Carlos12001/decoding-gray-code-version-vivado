`timescale 1ns / 1ps

module display_seven_segments(
    input logic [3:0] data, // binary input
    output logic [6:0] segments // gray code output
    );
    
    always_comb
        case (data)
            //                         abcdefg   
            4'h0: segments[6:0] = 7'b1000000;    // digit 0
            4'h1: segments[6:0] = 7'b1111001;    // digit 1
            4'h2: segments[6:0] = 7'b0100100;    // digit 2
            4'h3: segments[6:0] = 7'b0110000;    // digit 3
            4'h4: segments[6:0] = 7'b0011001;    // digit 4
            4'h5: segments[6:0] = 7'b0010010;    // digit 5
            4'h6: segments[6:0] = 7'b0000010;    // digit 6
            4'h7: segments[6:0] = 7'b1111000;    // digit 7
            4'h8: segments[6:0] = 7'b0000000;    // digit 8
            4'h9: segments[6:0] = 7'b0010000;    // digit 9
            4'ha: segments[6:0] = 7'b0001000;    // digit A
            4'hb: segments[6:0] = 7'b0000011;    // digit B
            4'hc: segments[6:0] = 7'b1000110;    // digit C
            4'hd: segments[6:0] = 7'b0100001;    // digit D
            4'he: segments[6:0] = 7'b0000110;    // digit E
            default: segments[6:0] = 7'b0001110; // digit F
        endcase 
         
endmodule
