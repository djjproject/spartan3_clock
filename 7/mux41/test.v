`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:11:56 10/09/2014
// Design Name:   mux41
// Module Name:   C:/Xilinx/xilinx/7/mux41/test.v
// Project Name:  mux41
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux41
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
	reg c;
	reg d;
	reg [1:0] s;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	mux41 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s(s), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		forever begin
		#10 a=~a;
		#20 b=~b;
		#30 c=~c;
		#40 d=~d;
		#10 s<=s+1;
		end
        
		// Add stimulus here

	end
      
endmodule

