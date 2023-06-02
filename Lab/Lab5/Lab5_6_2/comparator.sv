module comparator(
					input logic [25:0] clk_50MHz_Count,
					input logic [5:0] sec, min, hrs,
					output logic sec_true, min_true, hrs_true, clk_true);

					
	always_comb
	if (clk_50MHz_Count == 50_000)
		clk_true = 1;
	else
		clk_true = 0;
		
	always_comb
	if (sec == 60)
		sec_true = 1;
	else
		sec_true = 0;
		
	always_comb
	if (min == 60)
		min_true = 1;
	else
		min_true = 0;
		
	always_comb
	if (hrs == 24)
		hrs_true = 1;
	else
		hrs_true = 0;
			
endmodule

