module lab_2c(
    input [3:0] SW7_4,   // Input A
    input [3:0] SW3_0,   // Input B
    input SW8,           // Carry-in
    output [3:0] LEDR,   // Sum output
    output carry_out      // Carry-out
);
    assign {carry_out, LEDR} = SW7_4 + SW3_0 + SW8;
endmodule
