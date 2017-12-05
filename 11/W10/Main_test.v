`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:02:01 11/10/2014
// Design Name:   Main
// Module Name:   C:/Xilinx/hsp/W10/Main_test.v
// Project Name:  W10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_test;

	// Inputs
	reg clk;
	reg resetn;
	reg [6:0] ctl;
	wire [2:0] lcdctl;
	
	// Outputs
	wire lcdrs;
	wire lcdrw;
	wire lcde;
	wire [7:0] lcddata;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.lcdrs(lcdrs), 
		.lcdrw(lcdrw), 
		.lcde(lcde), 
		.lcddata(lcddata), 
		.clk(clk), 
		.resetn(resetn), 
		.ctl(ctl),
		.lcdctl(lcdctl)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		resetn = 1;
		ctl = 0;

		// Wait 100 ns for global reset to finish
		#20000;
		ctl=7'b0000010;
		#1000;
		ctl=7'b0000000;
      #5000;
		ctl=7'b0000010;
		#1000;
		ctl=7'b0000000;
        
		// Add stimulus here
		#5000;
		$finish;
	end
	
	always #1 clk=~clk;
      
endmodule

