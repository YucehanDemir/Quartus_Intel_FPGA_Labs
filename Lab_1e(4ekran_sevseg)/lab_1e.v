module lab_1e (
    input wire [1:0] SW, // The selection inputs
    output wire [6:0] HEX0, // The outputs for the 7-segment display
	 output wire [6:0] HEX1, // The outputs for the 7-segment display
	 output wire [6:0] HEX2, // The outputs for the 7-segment display
	 output wire [6:0] HEX3 // The outputs for the 7-segment display
	 
);

    // Behavioral description of the decoder using conditional operator
    assign HEX0 = (SW == 2'b00) ? 7'b0100001 :  // Code for "d"
                  (SW == 2'b01) ? 7'b0000110 :  // Code for "E"
                  (SW == 2'b10) ? 7'b1111001 :  // Code for "1"
                  (SW == 2'b11) ? 7'b1000000 :  // Code for "0"
                  7'b0111111; // Default case
						
	assign HEX1 =  (SW == 2'b00) ? 7'b0000110 :  // Code for "E"
                  (SW == 2'b01) ? 7'b1111001 :  // Code for "1"
                  (SW == 2'b10) ? 7'b1000000 :  // Code for "0"
                  (SW == 2'b11) ? 7'b0100001 :  // Code for "d"
       		     7'b0111111; // Default case
	assign HEX2 =  (SW == 2'b00) ? 7'b1111001 :  // Code for "1"
                  (SW == 2'b01) ? 7'b1000000 :  // Code for "0"
                  (SW == 2'b10) ? 7'b0100001 :  // Code for "d"
                  (SW == 2'b11) ? 7'b0000110 :  // Code for "E"
                  7'b0111111; // Default case
	assign HEX3 =  (SW == 2'b00) ? 7'b1000000 :  // Code for "0"
                  (SW == 2'b01) ? 7'b0100001 :  // Code for "d"
                  (SW == 2'b10) ? 7'b0000110 :  // Code for "E"
                  (SW == 2'b11) ? 7'b1111001 :  // Code for "1"
                  7'b0111111; // Default case
endmodule
