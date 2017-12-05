`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:23 11/02/2014
// Design Name:   segment
// Module Name:   C:/Xilinx/xilinx/10/bcd_7segment_decoder/test.v
// Project Name:  bcd_7segment_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: segment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	segment uut (
		.bcd(bcd), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		bcd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		forever begin
		#50 bcd=bcd+1;
		end
        
		// Add stimulus here

	end
      
endmodule

