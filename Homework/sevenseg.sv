// Christopher Hunt
// ENGR 271
// HW5
// sevenseg.sv

module sevenseg (
    input logic[3:0] D,
    output logic S_a, S_b, S_c, S_d, S_e, S_f, S_g
);
    assign S_a = ~D[3] & ~D[2] & ~D[1] & D[0] |
                    ~D[3] & ~D[2] & ~D[1] & D[0] |
                    ~D[3] & ~D[2] & ~D[1] & D[0] |
                    ~D[3] & ~D[2] & ~D[1] & D[0];

    assign S_b = D[2] & D[1] & ~D[0] |
                    D[3] & D[1] & D[0] |
                    D[3] & D[2] & ~D[0] |
                    ~D[3] & D[2] & ~D[1] & D[0];
    
    assign S_c = D[3] & D[2] & ~D[0] |
                    D[3] & D[2] & D[1] |
                    ~D[3] & ~D[2] & D[1] & ~D[0];

    assign S_d = D[2] & D[1] & D[0] |
                    ~D[3] & ~D[2] & ~D[1] & D[0] |
                    ~D[3] & D[2] & ~D[1] & ~D[0] |
                    D[3] & ~D[2] & D[1] & ~D[0];
    
    assign S_e = ~D[2] & ~D[1] & D[0] |
                    ~D[3] & D[2] & ~D[1] |
                    ~D[3] & D[2] & D[0] |
                    ~D[3] & ~D[2] & D[0];

    assign S_f = ~D[3] & ~D[2] & D[0] |
                    ~D[3] & ~D[2] & D[1] |
                    ~D[3] & D[1] & D[0] |
                    D[3] & D[2] & ~D[1] & D[0];
    
    assign S_g = ~D[3] & ~D[2] & ~D[1] |
                    D[3] & D[2] & ~D[1] & ~D[0] |
                    ~D[3] & D[2] & D[1] & D[0] ;
endmodule