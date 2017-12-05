`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:02:51 10/09/2014
// Design Name:   decoder38
// Module Name:   C:/Xilinx/xilinx/7/decoder38/test.v
// Project Name:  decoder38
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder38
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
	reg a;
	reg b;
	reg c;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	decoder38 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
      {a,b,c} = 3'b000;
		#100;
      {a,b,c} = 3'b001;
		#100;
      {a,b,c} = 3'b010;
		#100;
      {a,b,c} = 3'b011;
		#100;
      {a,b,c} = 3'b100;
		#100;
      {a,b,c} = 3'b101;
		#100;
      {a,b,c} = 3'b110;
		#100;
      {a,b,c} = 3'b111;
		// Add stimulus here

	end
      
endmodule

