module LR_block
#(parameter N = 48)
(input [0 : N - 1] data_in,
output [0 : (N/2) - 1] data_out_L, data_out_R);

assign data_out_R = data_in [N/2 : N-1];
assign data_out_L = data_in [0 : (N/2)-1];

endmodule