module two_bit_adder (
    input a, b,
    output reg sum,
    output reg carry
);

wire [7:0] carry_chain;

CARRY8 carry_inst (
    .CO(carry_chain[7]),
    .CI(1'b0),
    .DI({a, b}),
    .S(sum),
    .CARRYOUT(carry_chain)
);

assign carry = carry_chain[6];

endmodule
