module D_FlipFlop (
    input wire D, 
    input wire Clock, 
    output reg Q
);

    always @(posedge Clock)
    begin
        Q <= D;
    end

endmodule
