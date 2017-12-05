`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:08:45 11/03/2014
// Design Name:   dynamic_segment
// Module Name:   C:/Xilinx/xilinx/10/Dynamic_segment/test.v
// Project Name:  Dynamic_segment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dynamic_segment
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
	reg reset;

	// Outputs
	wire [3:0] com;
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	dynamic_segment uut (
		.clk(clk), 
		.reset(reset), 
		.com(com), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100 reset = 1;
        
		// Add stimulus here

	end
	
	always begin
		clk=0;
		#50;
		clk=1;
		#50;
		end
      
endmodule

