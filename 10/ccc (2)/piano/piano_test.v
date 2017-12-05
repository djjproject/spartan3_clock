`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:15:14 11/03/2014
// Design Name:   piezo
// Module Name:   /data/home/gary/piano/piano_test.v
// Project Name:  piano
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: piezo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module piano_test;

	// Inputs
	reg resetn;
	reg clk;
	reg c3;
	reg d;
	reg e;
	reg f;
	reg g;
	reg a;
	reg b;
	reg c4;

	// Outputs
	wire piezo;

	// Instantiate the Unit Under Test (UUT)
	piezo uut (
		.resetn(resetn), 
		.clk(clk), 
		.c3(c3), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.a(a), 
		.b(b), 
		.c4(c4), 
		.piezo(piezo)
	);

	initial begin
		// Initialize Inputs
		resetn = 0;
		clk = 0;
		c3 = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		a = 0;
		b = 0;
		c4 = 0;

		#50 resetn = 1;
		
		#100 c3=1;
		#100 c3=0; d=1;
		#100 d=0; e=1;
		#100 e=0; f=1;
		#100 f=0; g=1;
		#100 g=0; a=1;
		#100 a=0; b=1;
		#100 b=0; c4=1;
	end
	
	always begin
		clk = 0;
		#25;
		clk = 1;
		#25;

	end
      
endmodule

