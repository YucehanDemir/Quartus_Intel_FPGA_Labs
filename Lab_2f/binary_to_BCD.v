module binary_to_BCD(
    input [5:0] bin,
    output reg [3:0] BCD1, BCD0
);
    integer i;
    reg [6:0] tempBCD;
    
    always @(*) begin
        tempBCD = 7'b0000000;
        for(i=0; i<6; i=i+1) begin
            if(tempBCD[6:4] >= 5) begin
                tempBCD = tempBCD + 7'b0000011;
            end
            tempBCD = tempBCD << 1;
            tempBCD[0] = bin[5-i];
        end
        BCD1 = tempBCD[6:4];
        BCD0 = tempBCD[3:0];
    end
endmodule
