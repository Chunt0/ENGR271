module parser (input logic [5:0] value, output logic [3:0] ones, tens);

always_comb
begin
    ones = value % 10;
    tens = (value - ones)/10;
end

endmodule