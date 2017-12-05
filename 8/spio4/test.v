`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:33 10/16/2014
// Design Name:   spio4
// Module Name:   C:/Xilinx/xilinx/7/spio4/test.v
// Project Name:  spio4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spio4
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
	reg clear;
	reg datain;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	spio4 uut (
		.clk(clk), 
		.clear(clear), 
		.datain(datain), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clear = 0;
		datain = 0;

		// Wait 100 ns for global reset to finish
		#10 datain = 1;
		#10 datain = 0;
		#10 clear = 1;
		#10 datain = 1;
		#10 datain = 0;
		#10 datain = 1;
		#10 datain = 0;
		#10 $finish;
        
		// Add stimulus here

	end
	
	always 
	begin
	#5 clk = ~clk;
	end
      
endmodule

