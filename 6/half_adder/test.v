`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:12:55 10/02/2014
// Design Name:   half_adder
// Module Name:   D:/xilinx/6/half_adder/test.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
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
	reg a;
	reg b;


	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	
		// Wait 100 ns for global reset to finish
		#100 a<=1; b<=0;
		#100 a<=0; b<=1;
		#100 a<=1; b<=1;
        
		// Add stimulus here

	end
      
endmodule

