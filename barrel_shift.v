module mux
#(parameter N = 4)
(input [0 : N - 1] a, b, 
input s,
output reg [0 : N - 1] y);

always @(a, b, s) begin 
	if (s) begin 
		y = b;
	end else begin 
		y = a;
	end
//	case (s)
//		1'b0 : y <= a;
//		1'b1 : y <= b;
//	endcase 
end

endmodule

module barrel_shift
#(parameter N = 28)
(input [0 : N - 1] data_in,
input [0 : 1] shift,
output [0 : N - 1] data_out);

wire [0 : N-1] temp_1, temp_2;

genvar i, j;
generate 
	for (j = 0; j < 2; j = j + 1) begin
		if (j == 0) begin
			for (i = 0; i < N; i = i + 1) begin 
				if (i == N-1) begin 
				mux #(1) mux(
					.a(data_in[i]),
					.b(data_in[0]),
					.s(shift[1]),
					.y(temp_1[i])
					);
				end else begin 
				mux #(1) mux(
					.a(data_in[i]),
					.b(data_in[i+1]),
					.s(shift[1]),
					.y(temp_1[i])
					);
				end
			end
		end else begin
			for (i = 0; i < N; i = i + 1) begin 
				if (i == N-1) begin 
				mux #(1) mux(
					.a(temp_1[i]),
					.b(temp_1[0]),
					.s(shift[0]),
					.y(temp_2[i])
					);
				end else begin 
				mux #(1) mux(
					.a(temp_1[i]),
					.b(temp_1[i+1]),
					.s(shift[0]),
					.y(temp_2[i])
					);
				end
			end
		end
	end
endgenerate

assign data_out = temp_2;

endmodule
