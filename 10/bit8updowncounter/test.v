`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:33:51 10/27/2014
// Design Name:   bit8updown
// Module Name:   D:/xilinx/9/bit8updowncounter/test.v
// Project Name:  bit8updowncounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit8updown
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
	reg [8:0] data;
	reg endata;
	reg clk;
	reg clken;
	reg reset;
	reg updown;

	// Outputs
	wire [8:0] countout;

	// Instantiate the Unit Under Test (UUT)
	bit8updown uut (
		.data(data), 
		.endata(endata), 
		.clk(clk), 
		.clken(clken), 
		.reset(reset), 
		.updown(updown), 
		.countout(countout)
	);

	initial begin
		// Initialize Inputs
		data = 8'b10101010;
		endata = 0;
		clk = 0;
		clken = 0;
		reset = 1;
		updown = 0;
	

		// Wait 100 ns for global reset to finish
		#300 endata=1;
		#10 endata=0;
		#700 endata=1;
		#10 endata=0;
        
		// Add stimulus here

	end
	always begin
	#1 clk=~clk;
	end
	
	always begin
	#10 clken=~clken;
	end
	
	always begin
	#30 updown=1;
	#300;
	#10 updown=0;
	#300;
	end
      
endmodule

