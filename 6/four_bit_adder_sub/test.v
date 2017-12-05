`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:06 10/03/2014
// Design Name:   fout_bit_adder_sub
// Module Name:   C:/Xilinx/xilinx/6/four_bit_adder_sub/test.v
// Project Name:  four_bit_adder_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fout_bit_adder_sub
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
	reg [3:0] a;
	reg [3:0] b;
	reg as;

	// Outputs
	wire c;
	wire [3:0] s;

	// Instantiate the Unit Under Test (UUT)
	fout_bit_adder_sub uut (
		.a(a), 
		.b(b), 
		.as(as), 
		.c(c), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		as = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		forever begin
		#10 a=a+1;
		#10 b=b+1;
		#100 as=~as;
		end

	end
      
endmodule

