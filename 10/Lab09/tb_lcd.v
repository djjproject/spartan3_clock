`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:09:34 11/07/2014
// Design Name:   LCDpractice
// Module Name:   D:/11/Ji_Hyunwook/Xilinx/Projects/Lab09/tb_lcd.v
// Project Name:  Lab09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LCDpractice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_lcd;

	// Inputs
	reg resetn;
	reg clk;

	// Outputs
	wire lcde;
	wire lcdrs;
	wire lcdrw;
	wire [7:0] lcddata;

	// Instantiate the Unit Under Test (UUT)
	LCDpractice uut (
		.resetn(resetn), 
		.clk(clk), 
		.lcde(lcde), 
		.lcdrs(lcdrs), 
		.lcdrw(lcdrw), 
		.lcddata(lcddata)
	);
	
	initial begin
		resetn = 1; #5
		resetn = 0; #5
		resetn = 1;
	end
	
	initial begin
		clk = 0;
		
		forever begin
			#5 clk = ~clk;
		end
	end
      
endmodule

