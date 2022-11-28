module key_block
(input [0 : 63] data_in,
input clk, load, mux_control, rst, 
input [0 : 1] shift,
output [0 : 47] data_out);

wire [0 : 55] PC_1_out;
wire [0 : 27] PC_1_out_L, PC_1_out_R;
wire [0 : 27] reg_out_L, reg_out_R;
wire [0 : 27] mux_out_L, mux_out_R;
wire [0 : 27] shift_out_L, shift_out_R;
wire [0 : 55] reg_out;

register #(56) register (clk, load, rst, {shift_out_L, shift_out_R}, reg_out);

PC_1_block PC_1_block (data_in, PC_1_out);

LR_block #(56) LR_block (PC_1_out, PC_1_out_L, PC_1_out_R);

LR_block #(56) LR_block_reg (reg_out, reg_out_L, reg_out_R);

mux #(28) mux_L (PC_1_out_L, reg_out_L, mux_control, mux_out_L);

mux #(28) mux_R (PC_1_out_R, reg_out_R, mux_control, mux_out_R);

barrel_shift #(28) barrel_shift_L (mux_out_L, shift, shift_out_L);

barrel_shift #(28) barrel_shift_R (mux_out_R, shift, shift_out_R);

PC_2_block PC_2_block (reg_out, data_out);

//assign PC_2_in = {reg_out_L, reg_out_R};

endmodule