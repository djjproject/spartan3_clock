`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:44:00 10/26/2014
// Design Name:   oneshot
// Module Name:   D:/xilinx/8/oneshot/test.v
// Project Name:  oneshot
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: oneshot
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
	reg ln0;
	reg ln1;
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] dataout;

	// Instantiate the Unit Under Test (UUT)
	oneshot uut (
		.ln0(ln0), 
		.ln1(ln1), 
		.clk(clk), 
		.reset(reset), 
		.dataout(dataout)
	);

	initial begin
		// Initialize Inputs
		ln0 = 0;
		ln1 = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin 
		#10 clk = ~clk;
	end
	
	always begin
		#50 ln0 = ~ln0;
	end
	
	always begin
		#135 ln1 = ~ln1;
	end
	
      
endmodule

