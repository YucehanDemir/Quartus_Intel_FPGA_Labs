module lab_4c (
    input wire clk,  // Clock input
    input wire rst,  // Reset input
    output wire [6:0] seg  // 7-segment display output
);
    wire [3:0] bcd;
    wire [6:0] seg_local;

    counter my_counter (
        .clk(clk),
        .rst(rst),
        .bcd(bcd)
    );

    bcd_to_7seg my_bcd_to_7seg (
        .bcd(bcd),
        .seg(seg_local)
    );

    assign seg = seg_local;
endmodule
