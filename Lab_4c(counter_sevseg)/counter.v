module counter (
    input wire clk,  // Clock input
    input wire rst,  // Reset input
    output reg [3:0] bcd  // BCD output
);
    reg [24:0] one_second_counter = 25'b0;  // 50 MHz clock has a period of 20 ns, so 1 second is 50,000,000 cycles

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bcd <= 4'b0000;
            one_second_counter <= 25'b0;
        end else begin
            one_second_counter <= one_second_counter + 1'b1;
            if (one_second_counter == 49999999) begin  // If 1 second has passed
                one_second_counter <= 25'b0;
                if (bcd == 4'b1001)  // If BCD is at 9, reset it
                    bcd <= 4'b0000;
                else 
                    bcd <= bcd + 1'b1;  // Increment BCD
            end
        end
    end
endmodule
