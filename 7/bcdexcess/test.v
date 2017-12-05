`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:23 10/13/2014
// Design Name:   bcdexcess
// Module Name:   D:/xilinx/7/bcdexcess/test.v
// Project Name:  bcdexcess
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdexcess
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
	reg [7:0] a;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	bcdexcess uut (
		.a(a), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
      forever begin
		#100
		a=a+1;
		end
		// Add stimulus here

	end
      
endmodule

