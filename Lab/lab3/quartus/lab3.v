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
// CREATED		"Fri Apr 28 17:47:04 2023"

module lab3(
	D0,
	D1,
	D2,
	D3,
	S_a,
	S_b,
	S_c,
	S_d,
	S_e,
	S_f,
	S_g
);


input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
output wire	S_a;
output wire	S_b;
output wire	S_c;
output wire	S_d;
output wire	S_e;
output wire	S_f;
output wire	S_g;






S_a	b2v_inst(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_a(S_a));


S_c	b2v_inst10(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_c(S_c));


S_d	b2v_inst11(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_d(S_d));


S_e	b2v_inst12(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_e(S_e));


S_f	b2v_inst13(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_f(S_f));


S_g	b2v_inst14(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_g(S_g));


S_b	b2v_inst9(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.S_b(S_b));


endmodule
