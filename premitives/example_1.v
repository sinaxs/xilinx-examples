module example_module (
    input [5:0] input_data,
    output reg [1:0] output_data
);

wire [5:0] lut_input;
wire [1:0] lut_output;

// Use LUT6_2 primitive to implement a 6-input LUT with 2 outputs
LUT6_2 #(.INIT(64'hFEDCBA9876543210)) lut_inst (
    .I0(lut_input[0]),
    .I1(lut_input[1]),
    .I2(lut_input[2]),
    .I3(lut_input[3]),
    .I4(lut_input[4]),
    .I5(lut_input[5]),
    .O(lut_output)
);

assign lut_input = input_data;
assign output_data = lut_output;

endmodule
