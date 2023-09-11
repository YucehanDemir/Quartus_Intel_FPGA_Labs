module lab_2f(
    input [5:0] SW,
    output [6:0] HEX0, HEX1
);
    wire [3:0] BCD1, BCD0;
    binary_to_BCD binary_to_BCD_inst(
        .bin(SW),
        .BCD1(BCD1),
        .BCD0(BCD0)
    );

    BCD_to_7seg BCD_to_7seg_inst1(
        .BCD(BCD1),
        .seg(HEX1)
    );

    BCD_to_7seg BCD_to_7seg_inst0(
        .BCD(BCD0),
        .seg(HEX0)
    );
endmodule









