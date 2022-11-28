module key
(input clk, start, rst,
input [0 : 63] data_in,
output ready,
output [0 : 47] data_out);

wire load, mux_control, shift_1, shift_2;

key_control_unit key_control_unit (.clk(clk),  
								   .start(start),
								   .rst(rst),
								   .load(load), 
								   .mux(mux_control), 
								   .shift_1(shift_1), 
								   .shift_2(shift_2), 
								   .ready(ready));

key_block key_block (.data_in(data_in),
	    			 .clk(clk),  
					 .load(load), 
					 .mux_control(mux_control),
					 .rst(rst),
					 .shift({shift_1, shift_2}),
					 .data_out(data_out));

endmodule