module DES_top
(input [0 : 63] data_in, key,
input clk, start, rst,
output [0 : 63] data_out,
output ready);

wire mux, load;
wire [0 : 47] sub_key;

key key_blozk (clk, start, rst, key, ready, sub_key);

encryption_block ecnr (clk, rst, data_in, sub_key, start, mux, load, data_out);

endmodule 