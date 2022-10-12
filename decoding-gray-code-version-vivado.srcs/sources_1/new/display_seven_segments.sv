`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2022 05:37:57 PM
// Design Name: 
// Module Name: display_seven_segments
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module display_seven_segments(
    input logic [3:0] data, // binary input
    output logic [6:0] segments // gray code output
    );
    
    always_comb
        case (data)
            //                         abcdefg   
            0: segments =           7'b1111110;
            1: segments =           7'b0110000;
            2: segments =           7'b1101101;
            3: segments =           7'b1111001;
            4: segments =           7'b0110011;
            5: segments =           7'b1011011;
            6: segments =           7'b1011111;
            7: segments =           7'b1110000;
            8: segments =           7'b1111111;
            9: segments =           7'b1111011;
            10: segments =          7'b1110111;
            11: segments =          7'b0011111;
            12: segments =          7'b1001110;
            13: segments =          7'b0111101;
            14: segments =          7'b1001111;
            15: segments =          7'b1000111;
            default: segments =     7'b0000000;
        endcase 
         
endmodule
