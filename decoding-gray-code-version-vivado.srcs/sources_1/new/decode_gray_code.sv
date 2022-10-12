

module decode_gray_code(
        input logic [3:0] gray,//gray code input
        output logic [3:0] bin   //binary output
    );  
    always_comb
        case (gray)
//                                 abcd                                
            0:  bin =           4'b0000;
            1:  bin =           4'b0001;
            2:  bin =           4'b0011;
            3:  bin =           4'b0010;
            4:  bin =           4'b0111;
            5:  bin =           4'b0110;
            6:  bin =           4'b0100;
            7:  bin =           4'b0101;
            8:  bin =           4'b1111;
            9:  bin =           4'b1110;
            10: bin =           4'b1100;
            11: bin =           4'b1101;
            12: bin =           4'b1000;
            13: bin =           4'b1001;
            14: bin =           4'b1011;
            15: bin =           4'b1010;
            default: bin =      4'b0000;
        endcase 
    
endmodule
