
module lab_2d(
    input [8:0] SW,
    output [9:0] LEDR,
    output [6:0] HEX0, 
	 output [6:0] HEX1, 
	 output [6:0] HEX3, 
	 output [6:0] HEX5
);
    wire [4:0] sum;
    BCD_adder BCD_adder_inst(
        .X(SW[7:4]),
        .Y(SW[3:0]),
        .cin(SW[8]),
        .sum(sum)
    );
    
    assign LEDR[4:0] = sum;
    assign LEDR[9:5] = SW[8];
    
    BCD_to_7seg BCD_to_7seg_inst_X(
        .BC
		  .BCD(SW[7:4]),
    .seg(HEX5)
    );

    BCD_to_7seg BCD_to_7seg_inst_Y(
        .BCD(SW[3:0]),
        .seg(HEX3)
    );

    BCD_to_7seg BCD_to_7seg_inst_S1(
        .BCD(sum[4:2]),
        .seg(HEX1)
    );

    BCD_to_7seg BCD_to_7seg_inst_S0(
        .BCD(sum[1:0]),
        .seg(HEX0)
    );
endmodule

