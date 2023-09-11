module lab_4b (
    input wire clk, 
    input wire rst, 
    output reg [15:0] Q
);
    always @(posedge clk or posedge rst)
    begin
        if (rst)
            Q <= 16'b0;
        else
            Q <= Q + 1;
    end
endmodule

