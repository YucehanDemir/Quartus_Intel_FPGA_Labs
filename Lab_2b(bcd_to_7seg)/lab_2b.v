module lab_2b(
    input z,
   input [3:0] SW,
    output [6:0] HEX1,
    output [6:0] HEX0
);
    wire [3:0] V = SW;
    wire [3:0] A;
    wire [3:0] mux_out;

    assign A = (V < 4'b1010) ? V : V - 4'b1010;

    assign mux_out = ~z & V | z & A;
	 
	 endmodule