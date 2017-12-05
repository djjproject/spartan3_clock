`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:59:51 10/01/2014
// Design Name:   andgate
// Module Name:   C:/Xilinx/xilinx/5/andgate/test.v
// Project Name:  andgate
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: andgate
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
	wire x;

	// Instantiate the Unit Under Test (UUT)
	andgate uut (
		.a(a), 
		.b(b), 
		.x(x)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 0;
		b = 1;
		
		#100
		
		a = 1;
		b = 1;
        
		// Add stimulus here

	end
      
endmodule

