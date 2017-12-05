`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:21:03 10/04/2014
// Design Name:   fourbit_comparator
// Module Name:   C:/Xilinx/xilinx/6/new_fourbit_comparator/test.v
// Project Name:  new_fourbit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbit_comparator
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

	// Outputs
	wire eg;
	wire agb;
	wire alb;

	// Instantiate the Unit Under Test (UUT)
	fourbit_comparator uut (
		.a(a), 
		.b(b), 
		.eg(eg), 
		.agb(agb), 
		.alb(alb)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
		#10 a=a+1;
		#10 b=b+1;
		end

	end
      
endmodule

