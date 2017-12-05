// Verilog test fixture created from schematic D:\xilinx\halfadder\halfadder.sch - Sun Sep 21 15:41:04 2014

`timescale 1ns / 1ps

module halfadder_halfadder_sch_tb();

// Inputs
   reg B;
   reg A;

// Output
   wire S;
   wire C;

// Bidirs

// Instantiate the UUT
   halfadder UUT (
		.B(B), 
		.S(S), 
		.C(C), 
		.A(A)
   );
// Initialize Inputs
//   `ifdef auto_init
      initial begin
		B = 0;
		A = 0;
		#100
		B = 1;
		A = 0;
		#100
		B = 0;
		A = 1;
		#100
		B = 1;
		A = 1;
		
		end
//   `endif
endmodule
