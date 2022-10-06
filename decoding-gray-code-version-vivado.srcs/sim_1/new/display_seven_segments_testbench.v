`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 01:36:18 PM
// Design Name: 
// Module Name: display_seven_segments_testbench
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


module display_seven_segments_testbench();
 
    reg[3:0] bin;
    wire[6:0] segments;
    wire[3:0] decode_gray;
    
    
   display_seven_segments uut1(bin, segments);
   decode_gray_code uut2(bin, decode_gray);   
   
    always
        begin
        bin <= 0;#10;
        bin <= 1;#10;
        bin <= 2;#10;
        bin <= 3;#10;
        bin <= 4;#10;
        bin <= 5;#10;
        bin <= 6;#10;
        bin <= 7;#10;
        bin <= 8;#10;
        bin <= 9;#10;
        bin <= 10;#10;
        bin <= 11;#10;
        bin <= 12;#10;
        bin <= 13;#10;
        bin <= 14;#10;
        bin <= 15;#10;
    $stop;
    end;
endmodule
