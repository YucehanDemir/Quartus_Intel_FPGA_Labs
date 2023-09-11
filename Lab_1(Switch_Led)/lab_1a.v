// Module that connects ten switches and lights
module lab_1a (SW, LEDR);
input [9:0] SW; // slide switches
output [9:0] LEDR; // red LEDs
assign LEDR = SW;
endmodule