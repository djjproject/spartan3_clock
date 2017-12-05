`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:23 10/16/2014
// Design Name:   data4
// Module Name:   C:/Xilinx/xilinx/7/data4/test.v
// Project Name:  data4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data4
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
	reg [3:0] datain;
	reg clk1;
	reg clk2;

	// Outputs
	wire [3:0] a;
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	data4 uut (
		.datain(datain), 
		.clk1(clk1), 
		.clk2(clk2), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		datain = 0;
		clk1 = 0;
		clk2 = 0;

		// Wait 100 ns for global reset to finish
		#100; datain = 4'b1101;
		#50 clk1=1;
		#50 clk1=0;
		#50 clk2=1;
		#50 clk2=0;
		#100; datain = 4'b0010;
		#50 clk1=1;
		#50 clk1=0;
		#50 clk2=1;
		#50 clk2=0;

		
        
		// Add stimulus here

	end
      
endmodule

