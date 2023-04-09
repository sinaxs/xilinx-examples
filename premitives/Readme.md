# Xilinx Premitives

## Notes

- 'DONT_TOUCH' attribute is used to prevent the synthesis tool from optimizing away a specific module, submodule, or signal.

Example 1)
```verilog
(* DONT_TOUCH = "TRUE" *) module test_module (
  ...
);
```

Example 2)
```verilog
(* DONT_TOUCH = "TRUE" *) reg signal;
```

Example 3)
```verilog
module my_module (
    input [3:0] data_in,
    output [1:0] data_out
);

wire [1:0] lut1_out;
wire [1:0] lut2_out;

(* DONT_TOUCH = "true" *) LUT2 #(.INIT(2'h3)) lut1 (.I0(data_in[0]), .I1(data_in[1]), .O(lut1_out[0]));
LUT2 #(.INIT(2'h0)) lut2 (.I0(data_in[2]), .I1(data_in[3]), .O(lut2_out[0]));

assign data_out[0] = lut1_out[0] & lut2_out[0];
assign data_out[1] = lut1_out[1] | lut2_out[1];

endmodule
```
