`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:16:02 11/09/2014
// Design Name:   Counter
// Module Name:   C:/Xilinx/hsp/W10/Counter_test.v
// Project Name:  W10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_test;

	// Inputs
	reg plus;
	reg minus;
	reg clk;

	// Outputs
//	wire [6:0] out;
	wire [3:0] out1;
	wire [3:0] out2;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.out1(out1), 
		.out2(out2), 
		.plus(plus), 
		.minus(minus), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		plus = 0;
		minus = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		plus =1;
		#30;
      plus =0;
		#30;
		plus =1;
		#30;
      plus =0;
		#30;
		minus =1;
		#30;
      minus =0;
		#30;
		minus =1;
		#30;
      minus =0;
		#30;
		minus =1;
		#30;
      minus =0;
		#30;
		minus =1;
		#30;
      minus =0;
		#30;
		minus =1;
		#30;
      minus =0;
		#30;
		plus =1;
		#30;
      plus =0;
		#30;
		plus =1;
		#30;
      plus =0;
		#30;
		plus =1;
		#30;
      plus =0;
		#30;
		plus =1;
		#30;
      plus =0;
		#30;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		plus =1;
		#10;
      plus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		minus =1;
		#10;
      minus =0;
		#10;
		$finish;
		// Add stimulus here

	end
     
	always #5 clk=~clk;
endmodule

