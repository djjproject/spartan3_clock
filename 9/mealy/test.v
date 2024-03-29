`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:11:55 10/27/2014
// Design Name:   mealy
// Module Name:   D:/xilinx/9/mealy/test.v
// Project Name:  mealy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mealy
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
	reg rstn;
	reg x;

	// Outputs
	wire [1:0] y;

	// Instantiate the Unit Under Test (UUT)
	mealy uut (
		.rstn(rstn), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		rstn = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100 rstn=0;
		#100 rstn=1;
		#100 $finish;
        
		// Add stimulus here

	end
      
	always begin
	#10 x=~x;
	end
endmodule

