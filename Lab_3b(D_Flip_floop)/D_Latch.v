module D_Latch (input D, Clk, output reg Q);

    always @(D, Clk)
    begin
        if(Clk)
            Q <= D;
    end

endmodule