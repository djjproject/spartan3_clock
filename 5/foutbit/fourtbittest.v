`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:12 09/27/2014
// Design Name:   foutbit
// Module Name:   D:/xilinx/5/foutbit/fourtbittest.v
// Project Name:  foutbit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: foutbit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fourtbittest;

	// Inputs
	reg cin;
	reg a0;
	reg b0;
	reg a1;
	reg b1;
	reg a2;
	reg b2;
	reg a3;
	reg b3;

	// Outputs
	wire cout;
	wire s0;
	wire s1;
	wire s2;
	wire s3;

	// Instantiate the Unit Under Test (UUT)
	foutbit uut (
		.cin(cin), 
		.a0(a0), 
		.b0(b0), 
		.a1(a1), 
		.b1(b1), 
		.a2(a2), 
		.b2(b2), 
		.a3(a3), 
		.b3(b3), 
		.cout(cout), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3)
	);

	initial begin
		// Initialize Inputs
		cin = 0;
		a0 = 0;
		b0 = 0;
		a1 = 0;
		b1 = 0;
		a2 = 0;
		b2 = 0;
		a3 = 0;
		b3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		forever begin
		
		#20 a0 = ~a0;
		#30 b0 = ~b0;
		#40 a1 = ~a1;
		#50 b1 = ~b1;
		#60 a2 = ~a2;
		#70 b2 = ~b2;
		#80 a3 = ~a3;
		#90 b3 = ~b3;
		end
		// Add stimulus here

	end
      
endmodule

