module mux4to1_2bit (
    input wire [1:0] U, V, W, X, // The 2-bit inputs U to X
    input wire [1:0] select, // The selection inputs 
    output wire [1:0] M // The multiplexer output
);
    // Behavioral description of the multiplexer using conditional operator
    assign M = (select == 2'b00) ? U :
               (select == 2'b01) ? V :
               (select == 2'b10) ? W :
               (select == 2'b11) ? X :
               2'b00; // Default case
endmodule
