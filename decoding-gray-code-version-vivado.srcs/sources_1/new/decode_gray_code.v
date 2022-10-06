`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2022 07:26:03 PM
// Design Name: 
// Module Name: decode_gray_code
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


module decode_gray_code(
        input[3:0] gray,//gray code input
        output[3:0] bin   //binary output
    );
    
    // bit a
    assign bin[3]= gray[3];
    
    //bit b
    assign bin[2]= gray[3]^ gray[2];
    
    //bit c
    assign bin[1]= gray[3]^ gray[2]^ gray[1];
    
    //bit d
    assign bin[0]= gray[3]^ gray[2]^ gray[1]^ gray[0];
    
endmodule
