`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 12:45:58 PM
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
        input[3:0] bin,//binary input
        output[7:0] segments //gray code output
        );
    assign segments[7] = (bin[3] & ~bin[2]& ~bin[1]) |
                        (~bin[3] & bin[2] & bin[0]) |
                        (bin[3] & ~bin[0]) |
                        (~bin[3] & bin[1]) |
                        (bin[2] & bin[1]) |
                        (~bin[2] & ~bin[0]);


    assign segments[6]= 0;
    assign segments[5]= 1;
    assign segments[4]= 0;    
    assign segments[3]= bin[3];
    assign segments[2]= bin[3]^ bin[2];
    assign segments[1]= 1;
    assign segments[0]= 0;                 
endmodule
