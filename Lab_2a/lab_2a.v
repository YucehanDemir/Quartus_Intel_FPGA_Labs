module lab_2a(input [7:0] SW,
                  output [6:0] HEX0, 
                  output [6:0] HEX1
                  );

    wire [3:0] sw_hex1 = SW[7:4];
    wire [3:0] sw_hex0 = SW[3:0];

    bcd_to_7seg bcd_to_7seg_0 ( .bcd(sw_hex0), .seg(HEX0) );
    bcd_to_7seg bcd_to_7seg_1 ( .bcd(sw_hex1), .seg(HEX1) );

endmodule