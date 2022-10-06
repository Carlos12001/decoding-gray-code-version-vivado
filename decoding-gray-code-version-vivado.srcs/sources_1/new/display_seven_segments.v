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
        input[3:0] bin,// binary input
        output[6:0] segments // gray code output
        );
    
    // segment a
    assign segments[6] =    (bin[3] & ~bin[2] & ~bin[1]) |
                            ( ~bin[3] & bin[2] & bin[0]) | 
                            ( ~bin[2] & ~bin[0]) | 
                            ( ~bin[3] & bin[1]) | 
                            ( bin[3] & ~bin[0]) | 
                            ( bin[2] &  bin[1] );
                             
    // segment b
    assign segments[5] =    (~bin[3] & ~bin[1] & ~bin[0]) | 
                            ( ~bin[3] & bin[1] & bin[0]) | 
                            ( bin[3] & ~bin[1] &  bin[0]) | 
                            ( ~bin[2] &  ~bin[0]) | 
                            ( ~bin[3] &  ~bin[2] );
    // segment c
    assign segments[4] =    (~bin[1] & bin[0]) | 
                            ( ~bin[3] & bin[2]) | 
                            ( bin[3] & ~bin[2]) | 
                            ( ~bin[3] & bin[0]) | 
                            ( ~bin[3] & ~bin[1] );
    
    // segment d
    assign segments[3] =    (bin[2] & ~bin[1] & bin[0]) | 
                            ( bin[3] & ~bin[1]) | 
                            ( bin[2] & bin[1] & ~bin[0]) | 
                            ( ~bin[2] & bin[1] & bin[0]) | 
                            ( ~bin[3] & ~bin[2] & ~bin[0] );
    
    // segment e
    assign segments[2] =    (~bin[2] & ~bin[0]) | 
                            ( bin[1] & ~bin[0]) | 
                            ( bin[3] & bin[1]) | 
                            ( bin[3] & bin[2] );
    
    // segmenet f
    assign segments[1] =    (~bin[3] & bin[2] & ~bin[1]) | 
                            ( ~bin[1] & ~bin[0]) | 
                            ( bin[2] & ~bin[0]) | 
                            ( bin[3] & ~bin[2]) | 
                            ( bin[3] & bin[1] );
    
    // segment g
    assign segments[0] =    (~bin[2] & bin[1]) | 
                            ( bin[3] & ~bin[2]) | 
                            ( bin[3] & bin[0]) | 
                            ( bin[1] & ~bin[0]) | 
                            ( ~bin[3] & bin[2] & ~bin[1] );

endmodule
