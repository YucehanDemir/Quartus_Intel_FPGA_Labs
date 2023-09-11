module lab_1b (
  input  SW9,         // Selector switch 
  input  [3:0] SW3_0, // Input X 
  input  [3:0] SW7_4, // Input Y 
  output reg [3:0] LEDR3_0, // Output
  output wire LEDR9        // Display switch
);
  
  assign LEDR9 = SW9;  // Displaying value of s

  // Four-bit 2-to-1 multiplexer logic
  always @ (*) begin
    if(SW9) 
      LEDR3_0 = SW7_4; // If s = 1, then output Y 
    else 
      LEDR3_0 = SW3_0; // If s = 0, then output X 
  end

endmodule
