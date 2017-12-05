`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:03:38 10/18/2014
// Design Name:   excess4bit2
// Module Name:   D:/xilinx/8/excess4bit/test.v
// Project Name:  excess4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: excess4bit2
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
	reg clk;
	reg x;

	// Outputs
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	excess4bit2 uut (
		.clk(clk), 
		.x(x), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		forever begin
		#10 clk <= clk+1;
		#10 x <= x+1;
		end
		
		
        
		// Add stimulus here

	end
      
endmodule

