module f_func
(input [0 : 31] data_in, 
input [0 : 47] key,
output [0 : 31] data_out);

wire [0 : 47] E_block_out, xor_out;
wire [0 : 31] S_block_out;

E_block E_block (data_in, E_block_out);
assign xor_out = E_block_out ^ key; 
S_block S_block (xor_out , S_block_out);
P_block P_block (S_block_out, data_out);

endmodule 

module encryption_block
(input clk, rst,
input [0 : 63] data_in,
input [0 : 47] key,
input start, mux, load,
output [0 : 63] data_out);


//wire [0 : 63] IP_block_out;
//
//IP_block IP_block (data_in, IP_block_out);

wire [0 : 63] IP_block_out;
wire [0 : 31] IP_block_out_L, IP_block_out_R, mux_L_out, mux_R_out, reg_L_out, reg_R_out, xor_out, f_func_out;


//rabotaet na 17 taktov

IP_block IP_block (data_in, IP_block_out);

mux #(32) mux_L (IP_block_out[0 : 31], reg_R_out, mux, mux_L_out);

mux #(32) mux_R (IP_block_out[32 : 63], reg_L_out, mux, mux_R_out);

f_func f_func (mux_R_out, key, f_func_out);

assign xor_out = f_func_out ^ mux_L_out;

register #(32) register_L (clk, load, rst, xor_out, reg_L_out);

register #(32) register_R (clk, load, rst, mux_R_out, reg_R_out);

IP_1_block IP_1_block ({reg_L_out, reg_R_out}, data_out);


endmodule