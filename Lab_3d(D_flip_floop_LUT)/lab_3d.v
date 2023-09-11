module lab_3d (
    input D,
    input Enable,
    output wire Q
);

    reg [3:0] LUT; // 4-input Lookup Table
    
    initial begin
        // Mapping function: if Enable=1, Q=D; else, Q keeps its previous state
        // The first two bits of the index represent D (00, 01, 10, 11), 
        // and the last two bits represent Enable (00, 01, 10, 11)
        LUT[4'b0000] = 1'b0; // D=0, Enable=0
        LUT[4'b0001] = 1'b0; // D=0, Enable=0
        LUT[4'b0010] = 1'b0; // D=0, Enable=1
        LUT[4'b0011] = 1'b0; // D=0, Enable=1
        LUT[4'b0100] = 1'b1; // D=1, Enable=0
        LUT[4'b0101] = 1'b1; // D=1, Enable=0
        LUT[4'b0110] = 1'b1; // D=1, Enable=1
        LUT[4'b0111] = 1'b1; // D=1, Enable=1
    end
    
    assign Q = LUT[{2'b00, D, Enable}]; // Indexing the LUT

endmodule
