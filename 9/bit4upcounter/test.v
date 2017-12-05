`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:59:33 10/27/2014
// Design Name:   bit4upcounter
// Module Name:   D:/xilinx/9/bit4upcounter/test.v
// Project Name:  bit4upcounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit4upcounter
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
	reg [3:0] load;
	reg loaden;
	reg clken;
	reg up;

	// Outputs
	wire [3:0] countout;

	// Instantiate the Unit Under Test (UUT)
	bit4upcounter uut (
		.clk(clk), 
		.reset(reset), 
		.load(load), 
		.loaden(loaden), 
		.countout(countout), 
		.clken(clken), 
		.up(up)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		load = 0;
		loaden = 0;
		clken = 0;
		up = 0;

		// Wait 100 ns for global reset to finish
		#10 load = 4'b1010;
		#100 loaden = 1;
		#200 loaden = 0;
		#600 loaden = 1;
		#900 loaden = 0;
		
        
		// Add stimulus here

	end
	
	always begin
		#1 clk=~clk;
	end
	
	always begin
		#30 clken=~clken;
	end
	
	always begin
		#50 up=~up;
		#500;
	end
	
	
      
endmodule

