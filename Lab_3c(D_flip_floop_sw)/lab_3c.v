module lab_3c (
    input wire SW0, 
    input wire SW1, 
    output wire LEDR0
);

    // Connecting switches and LED to internal signals
    assign D = SW0;
    assign Clock = SW1;
    assign LEDR0 = Q;

    // D Flip Flop instance
    D_FlipFlop dff (.D(D), .Clock(Clock), .Q(Q));
    
endmodule


