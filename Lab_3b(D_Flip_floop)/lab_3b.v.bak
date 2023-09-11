module lab_3b (input SW0, SW1, output LEDR0);

    wire D, Clk, Q;

    // Connecting switches and LED to internal signals
    assign D = SW0;
    assign Clk = SW1;
    assign LEDR0 = Q;

    // D Latch instance
    D_Latch latch (.D(D), .Clk(Clk), .Q(Q));
    
endmodule



