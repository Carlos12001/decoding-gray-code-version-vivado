`timescale 1ns / 1ps

module display_function(
    input [3:0] gray,
    output [6:0] segments
    );
     logic [3:0] decode;
     decode_gray_code decodificador(.gray(gray), .bin(decode));
     display_seven_segments display(.data(decode), .segments(segments));
endmodule
