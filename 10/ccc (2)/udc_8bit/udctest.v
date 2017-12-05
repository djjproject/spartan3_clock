`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:28 10/27/2014
// Design Name:   udc
// Module Name:   C:/Users/ccc/udc_8bit/udctest.v
// Project Name:  udc_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: udc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module udctest;

	// Inputs
	reg [7:0] in;
	reg load;
	reg clk;
	reg resetn;
	reg ud;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	udc uut (
		.in(in), 
		.load(load), 
		.clk(clk), 
		.resetn(resetn), 
		.ud(ud), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 8'b10101010;
		resetn = 1;
		
		#50;
		load = 1;
		
		#70;
		load = 0;
		
		#100
		ud = 1;
		
		#150
		ud = 0;
		end
		
		always begin
		clk = 0;
		#10;
		clk = 1;
		#10;
		end
      
endmodule

