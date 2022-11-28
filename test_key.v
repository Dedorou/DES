module D_trigger (D,clk,rst,Q);
input D; // Data input 
input clk; // clock input 
input rst; // synchronous reset 
output reg Q; // output Q 
always @(posedge clk) 
begin
 if(rst==1'b1)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule 


module key_test
(input clk, start,
output load, mux, shift_1, shift_2, ready);


wire Q1, Q2, D1, D2;
wire [3 : 0] counter;
counter counter_1 (clk, start, counter);

D_trigger D_trigger_1 (D1, clk, rst, Q1);
D_trigger D_trigger_2 (D2, clk, rst, Q2);

assign load = ((~Q1 && ~Q2 && start) || (~Q1 && Q2) || (Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2 && ~counter[3] && ~counter[2] && ~counter[1] && counter[0]) || (Q1 && Q2 && counter[3] && ~counter[2] && ~counter[1] && ~counter[0]) || (Q1 && ~Q2) || (Q1 && Q2));
assign mux = ((~Q1 && Q2) || (Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2 && ~counter[3] && ~counter[2] && ~counter[1] && counter[0]) || (Q1 && Q2 && counter[3] && ~counter[2] && ~counter[1] && ~counter[0]) || (Q1 && ~Q2) || (Q1 && Q2));
assign shift_1 = ((~Q1 && ~Q2 && start) || (~Q1 && Q2) || (Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2 && ~counter[3] && ~counter[2] && ~counter[1] && counter[0]) || (Q1 && Q2 && counter[3] && ~counter[2] && ~counter[1] && ~counter[0]) || (Q1 && ~Q2) || (Q1 && Q2));
assign shift_2 = ((Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2));
assign ready = (Q1 && ~Q2 && ~counter[3] && ~counter[2] && ~counter[1] && ~counter[0]);

assign D1 = ((~Q1 && Q2) || (Q1 && ~Q2) || (Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2 && ~counter[3] && ~counter[2] && ~counter[1] && counter[0]) || (Q1 && Q2 && counter[3] && ~counter[2] && ~counter[1] && ~counter[0]) || (Q1 && Q2));
assign D2 = ((~Q1 && ~Q2 && start) || (~Q1 && Q2) || (Q1 && ~Q2) || (Q1 && ~Q2 && counter[3] && counter[2] && counter[1] && ~counter[0]) || (Q1 && ~Q2 && ~counter[3] && counter[2] && counter[1] && counter[0]) || (Q1 && Q2));

endmodule	