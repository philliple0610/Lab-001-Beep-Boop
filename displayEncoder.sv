module displayEncoder(
    input [19:0] result,
    output logic [3:0] numberBits [0:3]
);

    always_comb begin
        numberBits[0] = result % 10;
        numberBits[1] = (result / 10) % 10;
        numberBits[2] = (result / 100) % 10;
        numberBits[3] = (result / 1000) % 10;
    end

endmodule
