# How to use Yosys to find programming bits of LUT6_2 INIT

1. Write your desired logic in verilog (logic.v)

```verilog
module logic(
  input [3:0] input_data,
  output [1:0] output_data
);

assign output_data = (input_data[0] & input_data[1]) ^ input_data[2];

endmodule

```

3. Syntheize verilog file using Yosys

```shell
yosys> read_verilog logic.v
yosys> synth_xilinx
```

3. Convert the synthesized logic to a verilog netlist.

```shell
yosys> write_verilog logic_synthesized.v
```

4. Locate the LUT6_2 primitives in the netlist (logic_synthesized.v). The INIT values for each LUT6_2 will be specified in the netlist.
