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

	
	// Hours Logic
	
	// hrs_sync
	logic hrs_true;
	logic hrs24_true_out;
	
	// hrs_counter
	logic [5:0] hrs_count;

	// hrs_parser
	logic [3:0] hrs_ones_parser_out;
	logic [3:0] hrs_tens_parser_out;
	

	// Assignments
	assign clk_reset = reset | clk_true_out;
	assign sec_reset = reset | sec60_true_out;
	assign min_reset = reset | min60_true_out;
	assign hrs_reset = reset | hrs24_true_out;
	
///////////////////////////////
	
	sync clk_sync(
		.clk(clk_50MHz),
		.d(clk_true),
		.q(clk_true_out));
		
	counter #(25) clk_counter(
		.clk(clk_50MHz),
		.reset(clk_reset),
		.q(clk_count));
		
	comparator clk_comparator(
		.clk_50MHz_Count(clk_count),
		.sec(sec_count),
		.min(min_count),
		.hrs(hrs_count),
		.sec_true(sec_true),
		.min_true(min_true),
		.hrs_true(hrs_true),
		.clk_true(clk_true));
	
///////////////////////////////

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
		.tens(sec_tens_parser_out));
	
	sevenseg sec_ones_disp(
		.D(sec_ones_parser_out),
		.Sa(sec_ones[0]),
		.Sb(sec_ones[1]),
		.Sc(sec_ones[2]),
		.Sd(sec_ones[3]),
		.Se(sec_ones[4]),
		.Sf(sec_ones[5]),
		.Sg(sec_ones[6]));
	
	sevenseg sec_tens_disp(
		.D(sec_tens_parser_out),
		.Sa(sec_tens[0]),
		.Sb(sec_tens[1]),
		.Sc(sec_tens[2]),
		.Sd(sec_tens[3]),
		.Se(sec_tens[4]),
		.Sf(sec_tens[5]),
		.Sg(sec_tens[6]));
	
///////////////////////////////
	
	sync min_sync(
		.clk(clk_50MHz),
		.d(min_true),
		.q(min60_true_out));
	
	counter #(5) min_counter(
		.clk(sec60_true_out),
		.reset(min_reset),
		.q(min_count));
		
	parser min_parser(
		.value(min_count),
		.ones(min_ones_parser_out),
		.tens(min_tens_parser_out));
	
	sevenseg min_ones_disp(
		.D(min_ones_parser_out),
		.Sa(min_ones[0]),
		.Sb(min_ones[1]),
		.Sc(min_ones[2]),
		.Sd(min_ones[3]),
		.Se(min_ones[4]),
		.Sf(min_ones[5]),
		.Sg(min_ones[6]));
	
	sevenseg min_tens_disp(
		.D(min_tens_parser_out),
		.Sa(min_tens[0]),
		.Sb(min_tens[1]),
		.Sc(min_tens[2]),
		.Sd(min_tens[3]),
		.Se(min_tens[4]),
		.Sf(min_tens[5]),
		.Sg(min_tens[6]));
	
///////////////////////////////

	sync hrs_sync(
		.clk(clk_50MHz),
		.d(hrs_true),
		.q(hrs24_true_out));
	
	counter #(5) hrs_counter(
		.clk(min60_true_out),
		.reset(hrs_reset),
		.q(hrs_count));
		
	parser hrs_parser(
		.value(hrs_count),
		.ones(hrs_ones_parser_out),
		.tens(hrs_tens_parser_out));
	
	sevenseg hrs_ones_disp(
		.D(hrs_ones_parser_out),
		.Sa(hrs_ones[0]),
		.Sb(hrs_ones[1]),
		.Sc(hrs_ones[2]),
		.Sd(hrs_ones[3]),
		.Se(hrs_ones[4]),
		.Sf(hrs_ones[5]),
		.Sg(hrs_ones[6]));
	
	sevenseg hrs_tens_disp(
		.D(hrs_tens_parser_out),
		.Sa(hrs_tens[0]),
		.Sb(hrs_tens[1]),
		.Sc(hrs_tens[2]),
		.Sd(hrs_tens[3]),
		.Se(hrs_tens[4]),
		.Sf(hrs_tens[5]),
		.Sg(hrs_tens[6]));
	
endmodule