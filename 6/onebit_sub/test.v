`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:00:26 10/09/2014
// Design Name:   onebit_sub
// Module Name:   C:/Xilinx/xilinx/6/onebit_sub/test.v
// Project Name:  onebit_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onebit_sub
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
	reg borrow;
	reg a;
	reg b;

	// Outputs
	wire d;
	wire borrowout;

	// Instantiate the Unit Under Test (UUT)
	onebit_sub uut (
		.borrow(borrow), 
		.a(a), 
		.b(b), 
		.d(d), 
		.borrowout(borrowout)
	);

	initial begin
		// Initialize Inputs
		borrow = 0;
		a = 0;
		b = 0;

		#100;
      a=1;
		b=0;
		#100
		a=0;
		b=1;
		borrow=1;
		#100
		a=1;
		b=1;
		borrow=1;

	end
      
endmodule

