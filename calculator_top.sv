module calculator_top(
    input [3:0] op1,
    input [3:0] op2,
    input operation,
    input sign,
    input clk,
    output logic [6:0] segBits,
    output logic [3:0] trigger
);

    logic [19:0] result;
    logic [3:0] numberBits [3:0];
    logic [6:0] displayBits [3:0];

    miniALU DUT0 (
        .op1(op1),
        .op2(op2),
        .operation(operation),
        .sign(sign),
        .result(result)
    );

    displayEncoder DUT1 (
        .result(result),
        .numberBits(numberBits)
    );

    sevenSegDigit DUT2 (
        .digit(numberBits[0]),
        .displayBits(displayBits[0])
    );

    sevenSegDigit DUT3 (
        .digit(numberBits[1]),
        .displayBits(displayBits[1])
    );

    sevenSegDigit DUT4 (
        .digit(numberBits[2]),
        .displayBits(displayBits[2])
    );

    sevenSegDigit DUT5 (
        .digit(numberBits[3]),
        .displayBits(displayBits[3])
    );

    seg_driver DUT6 (
        .displayBits(displayBits),
        .clk(clk),
        .trigger(trigger),
        .segBits(segBits)
    );

endmodule
