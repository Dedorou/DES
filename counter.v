module counter 
(input clk, set, rst,
output reg [3 : 0] data_out);

//assign en = data_out[0] || data_out[1] || data_out[2] || data_out[3] || data_out[4];

always @(posedge clk) begin 

	if (rst == 1) begin 
		data_out <= 0;
	end else if (set == 1) begin 
		data_out <= 4'b1111;
	end else if (data_out == 0) begin 
		data_out <= data_out;
	end else begin
		data_out <= data_out - 1;
	end
		
end

endmodule
