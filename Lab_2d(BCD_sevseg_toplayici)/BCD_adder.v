module BCD_adder(
    input [3:0] X, Y,
    input cin,
    output reg [4:0] sum
);
    always @(*) begin
        sum = X + Y + cin;
        if (sum > 9) 
            sum = sum + 6;
    end
endmodule