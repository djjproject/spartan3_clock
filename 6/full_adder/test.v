`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:20:01 10/02/2014
// Design Name:   full_adder
// Module Name:   D:/xilinx/6/full_adder/test.v
// Project Name:  full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
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
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100 a<=1; b<=0;
		#100 a<=0; b<=1;
		#100 a<=1; b<=1;
		#100 a<=0; b<=0; cin<=1;
		#100 a<=1; b<=0;
		#100 a<=0; b<=1;
		#100 a<=1; b<=1;
        
		// Add stimulus here

	end
      
endmodule

