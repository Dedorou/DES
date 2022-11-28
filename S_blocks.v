module S1_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd14; 
		6'b000010 : data_out <= 4'd4;
		6'b000100 : data_out <= 4'd13;
		6'b000110 : data_out <= 4'd1;
		6'b001000 : data_out <= 4'd2;
		6'b001010 : data_out <= 4'd15;
		6'b001100 : data_out <= 4'd11;
		6'b001110 : data_out <= 4'd8;
		6'b010000 : data_out <= 4'd3;
		6'b010010 : data_out <= 4'd10;
		6'b010100 : data_out <= 4'd6;
		6'b010110 : data_out <= 4'd12;
		6'b011000 : data_out <= 4'd5;
		6'b011010 : data_out <= 4'd9;
		6'b011100 : data_out <= 4'd0;
		6'b011110 : data_out <= 4'd7;
								 
		6'b000001 : data_out <= 4'd0;
		6'b000011 : data_out <= 4'd15;
		6'b000101 : data_out <= 4'd7;
		6'b000111 : data_out <= 4'd4;
		6'b001001 : data_out <= 4'd14;
		6'b001011 : data_out <= 4'd2;
		6'b001101 : data_out <= 4'd13;
		6'b001111 : data_out <= 4'd1;
		6'b010001 : data_out <= 4'd10;
		6'b010011 : data_out <= 4'd6;
		6'b010101 : data_out <= 4'd12;
		6'b010111 : data_out <= 4'd11;
		6'b011001 : data_out <= 4'd9;
		6'b011011 : data_out <= 4'd5;
		6'b011101 : data_out <= 4'd3;
		6'b011111 : data_out <= 4'd8;
								 
		6'b100000 : data_out <= 4'd4;
		6'b100010 : data_out <= 4'd1;
		6'b100100 : data_out <= 4'd14;
		6'b100110 : data_out <= 4'd8;
		6'b101000 : data_out <= 4'd13;
		6'b101010 : data_out <= 4'd6;
		6'b101100 : data_out <= 4'd2;
		6'b101110 : data_out <= 4'd11;
		6'b110000 : data_out <= 4'd15;
		6'b110010 : data_out <= 4'd12;
		6'b110100 : data_out <= 4'd9;
		6'b110110 : data_out <= 4'd7;
		6'b111000 : data_out <= 4'd3;
		6'b111010 : data_out <= 4'd10;
		6'b111100 : data_out <= 4'd5;
		6'b111110 : data_out <= 4'd0;
								 
		6'b100001 : data_out <= 4'd15;
		6'b100011 : data_out <= 4'd12;
		6'b100101 : data_out <= 4'd8;
		6'b100111 : data_out <= 4'd2;
		6'b101001 : data_out <= 4'd4;
		6'b101011 : data_out <= 4'd9;
		6'b101101 : data_out <= 4'd1;
		6'b101111 : data_out <= 4'd7;
		6'b110001 : data_out <= 4'd5;
		6'b110011 : data_out <= 4'd11;
		6'b110101 : data_out <= 4'd3;
		6'b110111 : data_out <= 4'd14;
		6'b111001 : data_out <= 4'd10;
		6'b111011 : data_out <= 4'd0;
		6'b111101 : data_out <= 4'd6;
		6'b111111 : data_out <= 4'd13;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S2_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd15; 
		6'b000010 : data_out <= 4'd1;
		6'b000100 : data_out <= 4'd8;
		6'b000110 : data_out <= 4'd14;
		6'b001000 : data_out <= 4'd6;
		6'b001010 : data_out <= 4'd11;
		6'b001100 : data_out <= 4'd3;
		6'b001110 : data_out <= 4'd4;
		6'b010000 : data_out <= 4'd9;
		6'b010010 : data_out <= 4'd7;
		6'b010100 : data_out <= 4'd2;
		6'b010110 : data_out <= 4'd13;
		6'b011000 : data_out <= 4'd12;
		6'b011010 : data_out <= 4'd0;
		6'b011100 : data_out <= 4'd5;
		6'b011110 : data_out <= 4'd10;
								  
		6'b000001 : data_out <= 4'd3;
		6'b000011 : data_out <= 4'd13;
		6'b000101 : data_out <= 4'd4;
		6'b000111 : data_out <= 4'd7;
		6'b001001 : data_out <= 4'd15;
		6'b001011 : data_out <= 4'd2;
		6'b001101 : data_out <= 4'd8;
		6'b001111 : data_out <= 4'd14;
		6'b010001 : data_out <= 4'd12;
		6'b010011 : data_out <= 4'd0;
		6'b010101 : data_out <= 4'd1;
		6'b010111 : data_out <= 4'd10;
		6'b011001 : data_out <= 4'd6;
		6'b011011 : data_out <= 4'd9;
		6'b011101 : data_out <= 4'd11;
		6'b011111 : data_out <= 4'd5;
								  
		6'b100000 : data_out <= 4'd0;
		6'b100010 : data_out <= 4'd14;
		6'b100100 : data_out <= 4'd7;
		6'b100110 : data_out <= 4'd11;
		6'b101000 : data_out <= 4'd10;
		6'b101010 : data_out <= 4'd4;
		6'b101100 : data_out <= 4'd13;
		6'b101110 : data_out <= 4'd1;
		6'b110000 : data_out <= 4'd5;
		6'b110010 : data_out <= 4'd8;
		6'b110100 : data_out <= 4'd12;
		6'b110110 : data_out <= 4'd6;
		6'b111000 : data_out <= 4'd9;
		6'b111010 : data_out <= 4'd3;
		6'b111100 : data_out <= 4'd2;
		6'b111110 : data_out <= 4'd15;
								  
		6'b100001 : data_out <= 4'd13;
		6'b100011 : data_out <= 4'd8;
		6'b100101 : data_out <= 4'd10;
		6'b100111 : data_out <= 4'd1;
		6'b101001 : data_out <= 4'd3;
		6'b101011 : data_out <= 4'd15;
		6'b101101 : data_out <= 4'd4;
		6'b101111 : data_out <= 4'd2;
		6'b110001 : data_out <= 4'd11;
		6'b110011 : data_out <= 4'd6;
		6'b110101 : data_out <= 4'd7;
		6'b110111 : data_out <= 4'd12;
		6'b111001 : data_out <= 4'd0;
		6'b111011 : data_out <= 4'd5;
		6'b111101 : data_out <= 4'd14;
		6'b111111 : data_out <= 4'd9;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S3_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd10; 
		6'b000010 : data_out <= 4'd0;
		6'b000100 : data_out <= 4'd9;
		6'b000110 : data_out <= 4'd14;
		6'b001000 : data_out <= 4'd6;
		6'b001010 : data_out <= 4'd3;
		6'b001100 : data_out <= 4'd15;
		6'b001110 : data_out <= 4'd5;
		6'b010000 : data_out <= 4'd1;
		6'b010010 : data_out <= 4'd13;
		6'b010100 : data_out <= 4'd12;
		6'b010110 : data_out <= 4'd7;
		6'b011000 : data_out <= 4'd11;
		6'b011010 : data_out <= 4'd4;
		6'b011100 : data_out <= 4'd2;
		6'b011110 : data_out <= 4'd8;
								  
		6'b000001 : data_out <= 4'd13;
		6'b000011 : data_out <= 4'd7;
		6'b000101 : data_out <= 4'd0;
		6'b000111 : data_out <= 4'd9;
		6'b001001 : data_out <= 4'd3;
		6'b001011 : data_out <= 4'd4;
		6'b001101 : data_out <= 4'd6;
		6'b001111 : data_out <= 4'd10;
		6'b010001 : data_out <= 4'd2;
		6'b010011 : data_out <= 4'd8;
		6'b010101 : data_out <= 4'd5;
		6'b010111 : data_out <= 4'd14;
		6'b011001 : data_out <= 4'd12;
		6'b011011 : data_out <= 4'd11;
		6'b011101 : data_out <= 4'd15;
		6'b011111 : data_out <= 4'd1;
								  
		6'b100000 : data_out <= 4'd13;
		6'b100010 : data_out <= 4'd6;
		6'b100100 : data_out <= 4'd4;
		6'b100110 : data_out <= 4'd9;
		6'b101000 : data_out <= 4'd8;
		6'b101010 : data_out <= 4'd15;
		6'b101100 : data_out <= 4'd3;
		6'b101110 : data_out <= 4'd0;
		6'b110000 : data_out <= 4'd11;
		6'b110010 : data_out <= 4'd1;
		6'b110100 : data_out <= 4'd2;
		6'b110110 : data_out <= 4'd12;
		6'b111000 : data_out <= 4'd5;
		6'b111010 : data_out <= 4'd10;
		6'b111100 : data_out <= 4'd14;
		6'b111110 : data_out <= 4'd7;
								  
		6'b100001 : data_out <= 4'd1;
		6'b100011 : data_out <= 4'd10;
		6'b100101 : data_out <= 4'd13;
		6'b100111 : data_out <= 4'd0;
		6'b101001 : data_out <= 4'd6;
		6'b101011 : data_out <= 4'd9;
		6'b101101 : data_out <= 4'd8;
		6'b101111 : data_out <= 4'd7;
		6'b110001 : data_out <= 4'd4;
		6'b110011 : data_out <= 4'd15;
		6'b110101 : data_out <= 4'd14;
		6'b110111 : data_out <= 4'd3;
		6'b111001 : data_out <= 4'd11;
		6'b111011 : data_out <= 4'd5;
		6'b111101 : data_out <= 4'd2;
		6'b111111 : data_out <= 4'd12;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S4_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd7; 
		6'b000010 : data_out <= 4'd13;
		6'b000100 : data_out <= 4'd14;
		6'b000110 : data_out <= 4'd3;
		6'b001000 : data_out <= 4'd0;
		6'b001010 : data_out <= 4'd6;
		6'b001100 : data_out <= 4'd9;
		6'b001110 : data_out <= 4'd10;
		6'b010000 : data_out <= 4'd1;
		6'b010010 : data_out <= 4'd2;
		6'b010100 : data_out <= 4'd8;
		6'b010110 : data_out <= 4'd5;
		6'b011000 : data_out <= 4'd11;
		6'b011010 : data_out <= 4'd12;
		6'b011100 : data_out <= 4'd4;
		6'b011110 : data_out <= 4'd15;
								  
		6'b000001 : data_out <= 4'd13;
		6'b000011 : data_out <= 4'd8;
		6'b000101 : data_out <= 4'd11;
		6'b000111 : data_out <= 4'd5;
		6'b001001 : data_out <= 4'd6;
		6'b001011 : data_out <= 4'd15;
		6'b001101 : data_out <= 4'd0;
		6'b001111 : data_out <= 4'd3;
		6'b010001 : data_out <= 4'd4;
		6'b010011 : data_out <= 4'd7;
		6'b010101 : data_out <= 4'd2;
		6'b010111 : data_out <= 4'd12;
		6'b011001 : data_out <= 4'd1;
		6'b011011 : data_out <= 4'd10;
		6'b011101 : data_out <= 4'd14;
		6'b011111 : data_out <= 4'd9;
								  
		6'b100000 : data_out <= 4'd10;
		6'b100010 : data_out <= 4'd6;
		6'b100100 : data_out <= 4'd9;
		6'b100110 : data_out <= 4'd0;
		6'b101000 : data_out <= 4'd12;
		6'b101010 : data_out <= 4'd11;
		6'b101100 : data_out <= 4'd7;
		6'b101110 : data_out <= 4'd13;
		6'b110000 : data_out <= 4'd15;
		6'b110010 : data_out <= 4'd1;
		6'b110100 : data_out <= 4'd3;
		6'b110110 : data_out <= 4'd14;
		6'b111000 : data_out <= 4'd5;
		6'b111010 : data_out <= 4'd2;
		6'b111100 : data_out <= 4'd8;
		6'b111110 : data_out <= 4'd4;
								  
		6'b100001 : data_out <= 4'd3;
		6'b100011 : data_out <= 4'd15;
		6'b100101 : data_out <= 4'd0;
		6'b100111 : data_out <= 4'd6;
		6'b101001 : data_out <= 4'd10;
		6'b101011 : data_out <= 4'd1;
		6'b101101 : data_out <= 4'd13;
		6'b101111 : data_out <= 4'd8;
		6'b110001 : data_out <= 4'd9;
		6'b110011 : data_out <= 4'd4;
		6'b110101 : data_out <= 4'd5;
		6'b110111 : data_out <= 4'd11;
		6'b111001 : data_out <= 4'd12;
		6'b111011 : data_out <= 4'd7;
		6'b111101 : data_out <= 4'd2;
		6'b111111 : data_out <= 4'd14;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S5_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd2; 
		6'b000010 : data_out <= 4'd12;
		6'b000100 : data_out <= 4'd4;
		6'b000110 : data_out <= 4'd1;
		6'b001000 : data_out <= 4'd7;
		6'b001010 : data_out <= 4'd10;
		6'b001100 : data_out <= 4'd11;
		6'b001110 : data_out <= 4'd6;
		6'b010000 : data_out <= 4'd8;
		6'b010010 : data_out <= 4'd5;
		6'b010100 : data_out <= 4'd3;
		6'b010110 : data_out <= 4'd15;
		6'b011000 : data_out <= 4'd13;
		6'b011010 : data_out <= 4'd0;
		6'b011100 : data_out <= 4'd14;
		6'b011110 : data_out <= 4'd9;
								  
		6'b000001 : data_out <= 4'd14;
		6'b000011 : data_out <= 4'd11;
		6'b000101 : data_out <= 4'd2;
		6'b000111 : data_out <= 4'd12;
		6'b001001 : data_out <= 4'd4;
		6'b001011 : data_out <= 4'd7;
		6'b001101 : data_out <= 4'd13;
		6'b001111 : data_out <= 4'd1;
		6'b010001 : data_out <= 4'd5;
		6'b010011 : data_out <= 4'd0;
		6'b010101 : data_out <= 4'd15;
		6'b010111 : data_out <= 4'd10;
		6'b011001 : data_out <= 4'd3;
		6'b011011 : data_out <= 4'd9;
		6'b011101 : data_out <= 4'd8;
		6'b011111 : data_out <= 4'd6;
								  
		6'b100000 : data_out <= 4'd4;
		6'b100010 : data_out <= 4'd2;
		6'b100100 : data_out <= 4'd1;
		6'b100110 : data_out <= 4'd11;
		6'b101000 : data_out <= 4'd10;
		6'b101010 : data_out <= 4'd13;
		6'b101100 : data_out <= 4'd7;
		6'b101110 : data_out <= 4'd8;
		6'b110000 : data_out <= 4'd15;
		6'b110010 : data_out <= 4'd9;
		6'b110100 : data_out <= 4'd12;
		6'b110110 : data_out <= 4'd5;
		6'b111000 : data_out <= 4'd6;
		6'b111010 : data_out <= 4'd3;
		6'b111100 : data_out <= 4'd0;
		6'b111110 : data_out <= 4'd14;
								  
		6'b100001 : data_out <= 4'd11;
		6'b100011 : data_out <= 4'd8;
		6'b100101 : data_out <= 4'd12;
		6'b100111 : data_out <= 4'd7;
		6'b101001 : data_out <= 4'd1;
		6'b101011 : data_out <= 4'd14;
		6'b101101 : data_out <= 4'd2;
		6'b101111 : data_out <= 4'd13;
		6'b110001 : data_out <= 4'd6;
		6'b110011 : data_out <= 4'd15;
		6'b110101 : data_out <= 4'd0;
		6'b110111 : data_out <= 4'd9;
		6'b111001 : data_out <= 4'd10;
		6'b111011 : data_out <= 4'd4;
		6'b111101 : data_out <= 4'd5;
		6'b111111 : data_out <= 4'd3;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S6_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd12; 
		6'b000010 : data_out <= 4'd1;
		6'b000100 : data_out <= 4'd10;
		6'b000110 : data_out <= 4'd15;
		6'b001000 : data_out <= 4'd9;
		6'b001010 : data_out <= 4'd2;
		6'b001100 : data_out <= 4'd6;
		6'b001110 : data_out <= 4'd8;
		6'b010000 : data_out <= 4'd0;
		6'b010010 : data_out <= 4'd13;
		6'b010100 : data_out <= 4'd3;
		6'b010110 : data_out <= 4'd4;
		6'b011000 : data_out <= 4'd14;
		6'b011010 : data_out <= 4'd7;
		6'b011100 : data_out <= 4'd5;
		6'b011110 : data_out <= 4'd11;
							 		  
		6'b000001 : data_out <= 4'd10;
		6'b000011 : data_out <= 4'd15;
		6'b000101 : data_out <= 4'd4;
		6'b000111 : data_out <= 4'd2;
		6'b001001 : data_out <= 4'd7;
		6'b001011 : data_out <= 4'd12;
		6'b001101 : data_out <= 4'd9;
		6'b001111 : data_out <= 4'd5;
		6'b010001 : data_out <= 4'd6;
		6'b010011 : data_out <= 4'd1;
		6'b010101 : data_out <= 4'd13;
		6'b010111 : data_out <= 4'd14;
		6'b011001 : data_out <= 4'd0;
		6'b011011 : data_out <= 4'd11;
		6'b011101 : data_out <= 4'd3;
		6'b011111 : data_out <= 4'd8;
							 		  
		6'b100000 : data_out <= 4'd9;
		6'b100010 : data_out <= 4'd14;
		6'b100100 : data_out <= 4'd15;
		6'b100110 : data_out <= 4'd5;
		6'b101000 : data_out <= 4'd2;
		6'b101010 : data_out <= 4'd8;
		6'b101100 : data_out <= 4'd12;
		6'b101110 : data_out <= 4'd3;
		6'b110000 : data_out <= 4'd7;
		6'b110010 : data_out <= 4'd0;
		6'b110100 : data_out <= 4'd4;
		6'b110110 : data_out <= 4'd10;
		6'b111000 : data_out <= 4'd1;
		6'b111010 : data_out <= 4'd13;
		6'b111100 : data_out <= 4'd11;
		6'b111110 : data_out <= 4'd6;
							 		  
		6'b100001 : data_out <= 4'd4;
		6'b100011 : data_out <= 4'd3;
		6'b100101 : data_out <= 4'd2;
		6'b100111 : data_out <= 4'd12;
		6'b101001 : data_out <= 4'd9;
		6'b101011 : data_out <= 4'd5;
		6'b101101 : data_out <= 4'd15;
		6'b101111 : data_out <= 4'd10;
		6'b110001 : data_out <= 4'd11;
		6'b110011 : data_out <= 4'd14;
		6'b110101 : data_out <= 4'd1;
		6'b110111 : data_out <= 4'd7;
		6'b111001 : data_out <= 4'd6;
		6'b111011 : data_out <= 4'd0;
		6'b111101 : data_out <= 4'd8;
		6'b111111 : data_out <= 4'd13;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S7_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd4; 
		6'b000010 : data_out <= 4'd11;
		6'b000100 : data_out <= 4'd2;
		6'b000110 : data_out <= 4'd14;
		6'b001000 : data_out <= 4'd15;
		6'b001010 : data_out <= 4'd0;
		6'b001100 : data_out <= 4'd8;
		6'b001110 : data_out <= 4'd13;
		6'b010000 : data_out <= 4'd3;
		6'b010010 : data_out <= 4'd12;
		6'b010100 : data_out <= 4'd9;
		6'b010110 : data_out <= 4'd7;
		6'b011000 : data_out <= 4'd5;
		6'b011010 : data_out <= 4'd10;
		6'b011100 : data_out <= 4'd6;
		6'b011110 : data_out <= 4'd1;
							 		  
		6'b000001 : data_out <= 4'd13;
		6'b000011 : data_out <= 4'd0;
		6'b000101 : data_out <= 4'd11;
		6'b000111 : data_out <= 4'd7;
		6'b001001 : data_out <= 4'd4;
		6'b001011 : data_out <= 4'd9;
		6'b001101 : data_out <= 4'd1;
		6'b001111 : data_out <= 4'd10;
		6'b010001 : data_out <= 4'd14;
		6'b010011 : data_out <= 4'd3;
		6'b010101 : data_out <= 4'd5;
		6'b010111 : data_out <= 4'd12;
		6'b011001 : data_out <= 4'd2;
		6'b011011 : data_out <= 4'd15;
		6'b011101 : data_out <= 4'd8;
		6'b011111 : data_out <= 4'd6;
							 		  
		6'b100000 : data_out <= 4'd1;
		6'b100010 : data_out <= 4'd4;
		6'b100100 : data_out <= 4'd11;
		6'b100110 : data_out <= 4'd13;
		6'b101000 : data_out <= 4'd12;
		6'b101010 : data_out <= 4'd3;
		6'b101100 : data_out <= 4'd7;
		6'b101110 : data_out <= 4'd14;
		6'b110000 : data_out <= 4'd10;
		6'b110010 : data_out <= 4'd15;
		6'b110100 : data_out <= 4'd6;
		6'b110110 : data_out <= 4'd8;
		6'b111000 : data_out <= 4'd0;
		6'b111010 : data_out <= 4'd5;
		6'b111100 : data_out <= 4'd9;
		6'b111110 : data_out <= 4'd2;
							 		  
		6'b100001 : data_out <= 4'd6;
		6'b100011 : data_out <= 4'd11;
		6'b100101 : data_out <= 4'd13;
		6'b100111 : data_out <= 4'd8;
		6'b101001 : data_out <= 4'd1;
		6'b101011 : data_out <= 4'd4;
		6'b101101 : data_out <= 4'd10;
		6'b101111 : data_out <= 4'd7;
		6'b110001 : data_out <= 4'd9;
		6'b110011 : data_out <= 4'd5;
		6'b110101 : data_out <= 4'd0;
		6'b110111 : data_out <= 4'd15;
		6'b111001 : data_out <= 4'd14;
		6'b111011 : data_out <= 4'd2;
		6'b111101 : data_out <= 4'd3;
		6'b111111 : data_out <= 4'd12;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S8_block(
input [0 : 5] data_in,
output reg [0 : 3] data_out);

always @(*) begin 
	case (data_in)
		6'b000000 : data_out <= 4'd13; 
		6'b000010 : data_out <= 4'd2;
		6'b000100 : data_out <= 4'd8;
		6'b000110 : data_out <= 4'd4;
		6'b001000 : data_out <= 4'd6;
		6'b001010 : data_out <= 4'd15;
		6'b001100 : data_out <= 4'd11;
		6'b001110 : data_out <= 4'd1;
		6'b010000 : data_out <= 4'd10;
		6'b010010 : data_out <= 4'd9;
		6'b010100 : data_out <= 4'd3;
		6'b010110 : data_out <= 4'd14;
		6'b011000 : data_out <= 4'd5;
		6'b011010 : data_out <= 4'd0;
		6'b011100 : data_out <= 4'd12;
		6'b011110 : data_out <= 4'd7;
							 		  
		6'b000001 : data_out <= 4'd1;
		6'b000011 : data_out <= 4'd15;
		6'b000101 : data_out <= 4'd13;
		6'b000111 : data_out <= 4'd8;
		6'b001001 : data_out <= 4'd10;
		6'b001011 : data_out <= 4'd3;
		6'b001101 : data_out <= 4'd7;
		6'b001111 : data_out <= 4'd4;
		6'b010001 : data_out <= 4'd12;
		6'b010011 : data_out <= 4'd5;
		6'b010101 : data_out <= 4'd6;
		6'b010111 : data_out <= 4'd11;
		6'b011001 : data_out <= 4'd0;
		6'b011011 : data_out <= 4'd14;
		6'b011101 : data_out <= 4'd9;
		6'b011111 : data_out <= 4'd2;
							 		  
		6'b100000 : data_out <= 4'd7;
		6'b100010 : data_out <= 4'd11;
		6'b100100 : data_out <= 4'd4;
		6'b100110 : data_out <= 4'd1;
		6'b101000 : data_out <= 4'd9;
		6'b101010 : data_out <= 4'd12;
		6'b101100 : data_out <= 4'd14;
		6'b101110 : data_out <= 4'd2;
		6'b110000 : data_out <= 4'd0;
		6'b110010 : data_out <= 4'd6;
		6'b110100 : data_out <= 4'd10;
		6'b110110 : data_out <= 4'd13;
		6'b111000 : data_out <= 4'd15;
		6'b111010 : data_out <= 4'd3;
		6'b111100 : data_out <= 4'd5;
		6'b111110 : data_out <= 4'd8;
							 		  
		6'b100001 : data_out <= 4'd2;
		6'b100011 : data_out <= 4'd1;
		6'b100101 : data_out <= 4'd14;
		6'b100111 : data_out <= 4'd7;
		6'b101001 : data_out <= 4'd4;
		6'b101011 : data_out <= 4'd10;
		6'b101101 : data_out <= 4'd8;
		6'b101111 : data_out <= 4'd13;
		6'b110001 : data_out <= 4'd15;
		6'b110011 : data_out <= 4'd12;
		6'b110101 : data_out <= 4'd9;
		6'b110111 : data_out <= 4'd0;
		6'b111001 : data_out <= 4'd3;
		6'b111011 : data_out <= 4'd5;
		6'b111101 : data_out <= 4'd6;
		6'b111111 : data_out <= 4'd11;
		
		default : data_out <= 0;	
	endcase
end

endmodule


module S_block (
input [0 : 47] data_in,
output [0 : 31] data_out);

S1_block S1_block (data_in[0 : 5], data_out[0 : 3]);
S2_block S2_block (data_in[6 : 11], data_out[4 : 7]);
S3_block S3_block (data_in[12 : 17], data_out[8 : 11]);
S4_block S4_block (data_in[18 : 23], data_out[12 : 15]);
S5_block S5_block (data_in[24 : 29], data_out[16 : 19]);
S6_block S6_block (data_in[30 : 35], data_out[20 : 23]);
S7_block S7_block (data_in[36 : 41], data_out[24 : 27]);
S8_block S8_block (data_in[42 : 47], data_out[28 : 31]);

endmodule