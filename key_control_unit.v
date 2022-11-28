module key_control_unit 
(input clk, start, rst,
output load, mux, shift_1, shift_2, ready);

wire [0 : 3] counter_out;

counter counter (clk, start, rst, counter_out);

assign ready = (~counter_out[3] & ~counter_out[2] & ~counter_out[1] & ~counter_out[0]);
assign load = ((counter_out[0]) | (counter_out[1]) | (counter_out[2]) | (counter_out[3])) | start;
assign mux = (counter_out[0]) | (counter_out[1]) | (counter_out[2]) | (counter_out[3]);
assign shift_1 = ((counter_out[0]) | (counter_out[1]) | (counter_out[2]) | (counter_out[3])) | start;
assign shift_2 = (~counter_out[3] & counter_out[1]) | (counter_out[2] & ~counter_out[1]) | (counter_out[3] & ~counter_out[2] & counter_out[0]) | (counter_out[1] & ~counter_out[0]);


endmodule 