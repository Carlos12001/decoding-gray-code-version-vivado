`timescale 1ns / 1ps


module testbench();
 
    logic   [3:0] data;
    logic   [6:0] segments;
    logic   [3:0] decode_gray;
    
    
   display_seven_segments uut1(data, segments);
   decode_gray_code uut2(data, decode_gray);   
   
    always
        begin
        $display("Initalize Testbench");
        
        data <= 0;#10;
        if(decode_gray !== 0) $display("0 decode_gray failed");
        
        data <= 1;#10;
        if(decode_gray !== 1) $display("1 decode_gray failed");
        
        data <= 2;#10;
        if(decode_gray !== 3) $display("2 decode_gray failed");

        data <= 3;#10;
        if(decode_gray !== 2) $display("3 decode_gray failed");

        data <= 4;#10;
        if(decode_gray !== 7) $display("4 decode_gray failed");

        data <= 5;#10;
        if(decode_gray !== 6) $display("5 decode_gray failed");

        data <= 6;#10;
        if(decode_gray !== 4) $display("6 decode_gray failed");
        
        data <= 7;#10;
        if(decode_gray !== 5) $display("7 decode_gray failed");

        data <= 8;#10;
        if(decode_gray !== 15) $display("8 decode_gray failed");

        data <= 9;#10;
        if(decode_gray !== 14) $display("9 decode_gray failed");
        
        data <= 10;#10;
        if(decode_gray !== 12) $display("10 decode_gray failed");
        
        data <= 11;#10;
        if(decode_gray !== 13) $display("11 decode_gray failed");

        data <= 12;#10;
        if(decode_gray !== 8) $display("12 decode_gray failed");

        data <= 13;#10;
        if(decode_gray !== 9) $display("13 decode_gray failed");

        data <= 14;#10;
        if(decode_gray !== 11) $display("14 decode_gray failed");
                
        data <= 15;#10;
        if(decode_gray !== 10) $display("15 decode_gray failed");

    $stop;
    end;
endmodule

