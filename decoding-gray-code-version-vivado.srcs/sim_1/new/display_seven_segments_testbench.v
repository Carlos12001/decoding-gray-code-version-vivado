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


module testbench();
 
    reg[3:0] bin;
    wire[6:0] segments;
    wire[3:0] decode_gray;
    
    
   display_seven_segments uut1(bin, segments);
   decode_gray_code uut2(bin, decode_gray);   
   
    always
        begin
        $display("Initalize Testbench");
        
        bin <= 0;#10;
        if(decode_gray !== 0) $display("0 decode_gray failed");
        
        bin <= 1;#10;
        if(decode_gray !== 1) $display("1 decode_gray failed");
        
        bin <= 2;#10;
        if(decode_gray !== 3) $display("2 decode_gray failed");

        bin <= 3;#10;
        if(decode_gray !== 2) $display("3 decode_gray failed");

        bin <= 4;#10;
        if(decode_gray !== 7) $display("4 decode_gray failed");

        bin <= 5;#10;
        if(decode_gray !== 6) $display("5 decode_gray failed");

        bin <= 6;#10;
        if(decode_gray !== 4) $display("6 decode_gray failed");
        
        bin <= 7;#10;
        if(decode_gray !== 5) $display("7 decode_gray failed");

        bin <= 8;#10;
        if(decode_gray !== 15) $display("8 decode_gray failed");

        bin <= 9;#10;
        if(decode_gray !== 14) $display("9 decode_gray failed");
        
        bin <= 10;#10;
        if(decode_gray !== 12) $display("10 decode_gray failed");
        
        bin <= 11;#10;
        if(decode_gray !== 13) $display("11 decode_gray failed");

        bin <= 12;#10;
        if(decode_gray !== 8) $display("12 decode_gray failed");

        bin <= 13;#10;
        if(decode_gray !== 9) $display("13 decode_gray failed");

        bin <= 14;#10;
        if(decode_gray !== 11) $display("14 decode_gray failed");
                
        bin <= 15;#10;
        if(decode_gray !== 10) $display("15 decode_gray failed");

    $stop;
    end;
endmodule
