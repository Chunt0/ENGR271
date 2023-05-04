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
// CREATED		"Fri Apr 28 17:47:43 2023"

module S_e(
	D0,
	D1,
	D2,
	D3,
	S_e
);


input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
output wire	S_e;

wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;




assign	SYNTHESIZED_WIRE_5 = D0 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_11 & D2 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_6 = D0 & D2 & SYNTHESIZED_WIRE_13;

assign	S_e = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_11 =  ~D1;

assign	SYNTHESIZED_WIRE_12 =  ~D2;

assign	SYNTHESIZED_WIRE_13 =  ~D3;

assign	SYNTHESIZED_WIRE_7 = D0 & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;


endmodule