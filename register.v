module register
#(parameter N = 56)
(input clk, load, rst,
input [0 : N - 1] data_in,
output reg [0 : N - 1] data_out);

always @(posedge clk) begin
	if (rst == 1) begin 
		data_out <= 0;		
	end else if (load == 1) begin 
		data_out <= data_in; 
	end else begin 
		data_out <= data_out;
	end
end

endmodule