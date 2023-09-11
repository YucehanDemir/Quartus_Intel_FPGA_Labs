module lab_1c (
    input wire [7:0] SW, // switches 0 to 7
    input wire [9:8] select, // switches 8 and 9
    output wire [1:0] LEDR // LEDR0 and LEDR1
);
    wire [1:0] U, V, W, X;

    assign U = SW[1:0];
    assign V = SW[3:2];
    assign W = SW[5:4];
    assign X = SW[7:6];

    mux4to1_2bit mux(
        .U(U),
        .V(V),
        .W(W),
        .X(X),
        .select(select),
        .M(LEDR)
    );
endmodule
