`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:18:46 10/04/2014
// Design Name:   onebit_comparator
// Module Name:   C:/Xilinx/xilinx/6/onebit_comparator/test.v
// Project Name:  onebit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onebit_comparator
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

	// Outputs
	wire agb;
	wire eg;
	wire alb;

	// Instantiate the Unit Under Test (UUT)
	onebit_comparator uut (
		.a(a), 
		.b(b), 
		.agb(agb), 
		.eg(eg), 
		.alb(alb)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=1;
		b=0;
		#100
		a=1;
		b=1;
		#100
		a=0;
		b=1;
        
		// Add stimulus here

	end
      
endmodule

