module parser (input logic [5:0] value, output logic [3:0] ones, tens);

always_comb

if(value >= 60)
	begin
	tens=6;
	ones=value-60;
	end
else if(value >= 50)
	begin
	tens=5;
	ones=value-50;
	end
else if(value >= 40)
	begin
	tens=4;
	ones=value-40;
	end
else if(value >= 30)
	begin
	tens=3;
	ones=value-30;
	end
else if(value >= 20)
	begin
	tens=2;
	ones=value-20;
	end
else if(value >= 10)
	begin
	tens=1;
	ones=value-10;
	end
else
	begin
	tens=0;
	ones=value;
	end
	
endmodule