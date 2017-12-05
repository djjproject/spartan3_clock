`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:46:17 10/09/2014
// Design Name:   mux2bit21
// Module Name:   C:/Xilinx/xilinx/7/mux2bit21/test.v
// Project Name:  mux2bit21
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2bit21
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
	reg [1:0] a;
	reg [1:0] b;
	reg s;

	// Outputs
	wire [1:0] z;

	// Instantiate the Unit Under Test (UUT)
	mux2bit21 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		forever begin
		a=1'b00;
		#100
		a=1'b01;
		#100
		a=1'b10;
		#100
		a=1'b11;
		#50
		b=1'b00;
		#50
		b=1'b01;
		#50
		b=1'b10;
		#50
		b=1'b11;
		#100
		s<=~s;
		end
		
		// Add stimulus here

	end
      
endmodule

