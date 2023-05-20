module LAB5_top( 
	input logic reset,
	input logic clock_50MHZ,
		
	output logic [6:0] sec_ones,
	output logic [6:0] sec_tens,
	output logic [6:0] min_ones,
	output logic [6:0] min_tens,
	output logic [6:0] hrs_ones,
	output logic [6:0] hrs_tens
	);

/* Set internal variables here */
logic clk_reset;
logic clk_true_out;
logic [25:0] clk_count;
logic [3:0] sec_ones_parser_out;


// Assignments
assign clk_Reset = reset | clk_true_out;

counter #(25) counter_clk (
	.clk(clk_50MHZ),
	.reset(clk_reset),
	.q(clk_count));
	
sevenseg(
	.D(sec_ones_parser_out),
	.Sa(sec_ones[0]),
	.Sb(sec_ones[1]),
	.Sc(sec_ones[2]),
	.Sd(sec_ones[3]),
	.Se(sec_ones[4]),
	.Sf(sec_ones[5]),
	.Sg(sec_ones[6]),


endmodule