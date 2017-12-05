`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:19 11/02/2014
// Design Name:   vend
// Module Name:   D:/xilinx/9/coin_moore/test.v
// Project Name:  coin_moore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vend
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
	reg nic;
	reg dim;
	reg obj1;
	reg obj2;
	reg ch;
	reg clk;

	// Outputs
	wire [3:0] coin;

	// Instantiate the Unit Under Test (UUT)
	vend uut (
		.nic(nic), 
		.dim(dim), 
		.obj1(obj1), 
		.obj2(obj2), 
		.ch(ch), 
		.coin(coin), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		nic = 0;
		dim = 0;
		obj1 = 0;
		obj2 = 0;
		ch = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#50 nic=1;
		#50 nic=0;
		#50 nic=1;
		#50 nic=0;
		#50 nic=1;
		#50 nic=0;
		
		#50 obj1=1;
		#50 obj1=0;
		#50 ch=1;
		#50 ch=0;
		
		#50 nic=1;
		#50 nic=0;
		#50 dim=1;
		#50 dim=0;
		#50 obj2=1;
		#50 obj2=0;
		

	end
	
	always begin
	#1 clk=~clk;
	end
      
endmodule

