// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Thu Apr 27 12:11:03 2023"

module lab2_block_schem(
	A0,
	B0,
	C_in,
	A1,
	A2,
	B2,
	A3,
	B3,
	B1,
	Z0,
	Z1,
	Z2,
	Z3,
	Z4
);


input wire	A0;
input wire	B0;
input wire	C_in;
input wire	A1;
input wire	A2;
input wire	B2;
input wire	A3;
input wire	B3;
input wire	B1;
output wire	Z0;
output wire	Z1;
output wire	Z2;
output wire	Z3;
output wire	Z4;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





lab2_fulladder	b2v_inst(
	.A(A0),
	.B(B0),
	.C_in(C_in),
	.Sum(Z0),
	.C_out(SYNTHESIZED_WIRE_0));


lab2_fulladder	b2v_inst1(
	.A(A1),
	.B(B1),
	.C_in(SYNTHESIZED_WIRE_0),
	.Sum(Z1),
	.C_out(SYNTHESIZED_WIRE_1));


lab2_fulladder	b2v_inst2(
	.A(A2),
	.B(B2),
	.C_in(SYNTHESIZED_WIRE_1),
	.Sum(Z2),
	.C_out(SYNTHESIZED_WIRE_2));


lab2_fulladder	b2v_inst3(
	.A(A3),
	.B(B3),
	.C_in(SYNTHESIZED_WIRE_2),
	.Sum(Z3),
	.C_out(Z4));


endmodule
