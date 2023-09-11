
module Top_Module (
    input wire clk, 
    input wire KEY0, 
    output wire [15:0] HEX3_0
);
    wire [15:0] Q;
    
    // Connecting KEY0 to rst
    Counter counter (.clk(clk), .rst(KEY0), .Q(Q));
    
    // Display on HEX3_0
    assign HEX3_0 = Q;
endmodule