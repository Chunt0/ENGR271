module sevenseg(input logic [3:0] D, output logic Sa, Sb, Sc, Sd, Se, Sf, Sg);

assign Sa = ~D[3] & D[2] & ~D[1] & ~D[0] | D[3] & ~D[2] & D[1] & D[0] | ~D[3] & ~D[2] & ~D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];

assign Sb = ~D[3] & D[2] & ~D[1] & D[0] | D[3] & D[1] & D[0] | D[3] & D[2] & ~D[0] | D[2] & D[1] & ~D[0];

assign Sc = ~D[3] & ~D[2] & D[1] & ~D[0] | D[3] & D[2] & ~D[0] | D[3] & D[2] & D[1];

assign Sd = D[3] & ~D[2] & D[1] & ~D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | ~D[2] & ~D[1] & D[0] | D[2] & D[1] & D[0];

assign Se = ~D[3] & D[2] & ~D[1] | ~D[2] & ~D[1] & D[0] | ~D[3] & D[0];

assign Sf = D[3] & D[2] & ~D[1] & D[0] | ~D[3] & ~D[2] & D[1] | ~D[3] & ~D[2] & D[0] | ~D[3] & D[1] & D[0];

assign Sg = D[3] & D[2] & ~D[1] & ~D[0] | ~D[3] & D[2] & D[1] & D[0] | ~D[3] & ~D[2] & ~D[1];

endmodule