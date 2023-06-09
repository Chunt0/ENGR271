// Christopher Hunt
// ENGR 271 
// HW 9

// D - Flip Flop module
module dFF(
	input logic clk,
	input logic reset,
	input logic d,
	output logic q);
	
	always_ff @(posedge clk, posedge reset)
		if(reset) q <= 0;
		else q <= d;
	
endmodule

// HW9 - Implements dFF to model the finite state machine from HW 9.
module HW9(
	input logic x,
	input logic clk,
	input logic reset,
	output logic z);
	
	logic Q2, Q1, Q0;
	logic D2, D1, D0;
	
	assign z = Q2;
	assign D2 = Q1 & Q0 & x;
	assign D1 = Q2 & ~x | Q1 & ~Q0 & ~x | ~Q1 & Q0 & ~x;
	assign D0 = Q1 & ~Q0 | ~Q1 & x;
	
	dFF dFF2(
		.clk(clk),
		.reset(reset),
		.d(D2),
		.q(Q2));
		
	dFF dFF1(
		.clk(clk),
		.reset(reset),
		.d(D1),
		.q(Q1));
	
	dFF dFF0(
		.clk(clk),
		.reset(reset),
		.d(D0),
		.q(Q0));
		
endmodule
		
		