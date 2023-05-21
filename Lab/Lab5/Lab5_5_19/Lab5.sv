module Lab5( 
	input logic reset,
	input logic clk_50MHz,
		
	output logic [6:0] sec_ones,
	output logic [6:0] sec_tens,
	output logic [6:0] min_ones,
	output logic [6:0] min_tens,
	output logic [6:0] hrs_ones,
	output logic [6:0] hrs_tens
	);
	

/* Set internal variables here */
	// Main Clock Logic
	
	// counter_clk
	logic clk_50MHz_count;
	logic clk_reset;
	logic [25:0] clk_count;
	
	// clk_sync
	logic clk_true;
	logic clk_true_out;
	
	
	// Seconds Logic
	
	// sec_sync
	logic sec_true;
	logic sec60_true_out;
	
	// sec_counter
	logic [5:0] sec_count;
	
	// sec_parser
	logic [3:0] sec_ones_parser_out;
	logic [3:0] sec_tens_parser_out;
	
	
	// Minutes Logic
	
	// min_sync
	logic min_true;
	logic min60_true_out;
	
	// min_counter
	logic [5:0] min_count;
	
	// min_parser
	logic [3:0] min_ones_parser_out;
	logic [3:0] min_tens_parser_out;

	
	// Hourse Logic
	
	// hrs_sync
	logic hrs_true;
	logic hrs24_true_out;
	
	// hrs_counter
	logic [5:0] hrs_count;

	// hrs_parser
	logic [3:0] hrs_ones_parser_out;
	logic [3:0] hrs_tens_parser_out;
	

// Assignments
	assign clk_reset = reset | clk_true_out
	assign sec_reset = reset | sec60_true_out
	assign min_reset = reset | min60_true_out
	assign hrs_reset = reset | hrs24_true_out
	
	
	sync clk_sync(
		.clk(clk_50MHz),
		.d(clk_true),
		.q(clk_true_out));
		
	counter #(25) counter_clk(
		.clk(clk_50MHz),
		.reset(clk_reset),
		.q(clk_count));
	
	
	sync sec_sync(
		.clk(clk_50MHz),
		.d(sec_true),
		.q(sec60_true_out));
	
	counter #(5) sec_counter(
		.clk(clk_true_out),
		.reset(sec_reset),
		.q(sec_count));
	
	parser sec_parser(
		.value(sec_count),
		.ones(sec_ones_parser_out),
		.tens(sec_tens_parser_out);
	
	sevenseg sec_ones_disp(
		.D(sec_ones_parser_out));
	
	sevenseg sec_tens_disp(
		.D(sec_tens_parser_out));
	
	
	sync min_sync(
		.clk(clk_50MHz),
		.d(min_true),
		.q(min60_true_out));
	
	counter #(5) min_counter(
		.clk(clk_true_out),
		.reset(min_reset),
		.q(min_count));
		
	parser min_parser(
		.value(min_count),
		.ones(min_ones_parser_out),
		.tens(min_tens_parser_out);
	
	sevenseg min_ones_disp(
		.D(min_ones_parser_out);
	
	sevenseg min_tens_disp(
		.D(min_tens_parser_out);
	
	
	sync hrs_sync(
		.clk(clk_50MHz),
		.d(hrs_true),
		.q(hrs24_true_out));
	
	counter #(5) hrs_counter(
		.clk(clk_true_out),
		.reset(min_reset),
		.q(hrs_count));
		
	parser hrs_parser(
		.value(hrs_count),
		.ones(hrs_ones_parser_out),
		.tens(hrs_tens_parser_out);
	
	sevenseg hrs_ones_disp();
	
	sevenseg hrs_tens_disp();
	
	
		
	
endmodule