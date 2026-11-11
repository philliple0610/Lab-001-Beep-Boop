module miniALU(
    input [3:0] op1,
    input [3:0] op2,
    input operation,
    input sign,
    output logic [19:0] result
);

    logic [19:0] d0;
    logic [19:0] d1;

    always_comb begin
        // Add/Sub Block (produces D0)
        if (sign == 1'b0)
            d0 = op1 + op2;
        else
            d0 = op1 - op2;

        // Shift Block (produces D1)
        if (sign == 1'b0)
            d1 = op1 << op2;
        else
            d1 = op1 >> op2;

        // 2-to-1 Multiplexer (controlled by S = operation)
        if (operation == 1'b0)
            result = d0;
        else
            result = d1;
    end

endmodule
