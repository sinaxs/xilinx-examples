// Globally turning optimization off for specific module
// set_keep_hierarchy -to_module my_top_module

module example_module (
    input [3:0] input_data,
    output reg [1:0] output_data
);

// (* keep = "true" *)
// (* DONT_TOUCH = "true" *)

// input_data[0] & input_data[1]
reg [63:0] init0 = 64'h3333;
wire [1:0] lut_out0;
(* DONT_TOUCH = "true" *) LUT6_2 # (.INIT(init0)) lut0 (.I0(input_data[1]), .I1(input_data[0]), .I2(1'b0),
                                    .I3(1'b0), .I4(1'b0), .I5(1'b0), .O(lut_out0));

assign output_data[0] = lut_out0[0];

// input_data[2] | input_data[3]
reg [63:0] init1 = 64'hF0F0;
wire [1:0] lut_out1;
(* DONT_TOUCH = "true" *) LUT6_2 # (.INIT(init1)) lut1 (.I0(input_data[3]), .I1(input_data[2]), .I2(1'b0),
                                    .I3(1'b0), .I4(1'b0), .I5(1'b0), .O(lut_out1));

assign output_data[1] = lut_out1[1];

endmodule
