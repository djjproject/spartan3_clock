// Verilog test fixture created from schematic D:\xilinx\fulladder\fulladder.sch - Sun Sep 21 15:45:40 2014

`timescale 1ns / 1ps

module fulladder_fulladder_sch_tb();

// Inputs
   reg C_in;
   reg A;
   reg B;

// Output
   wire C_out;
   wire S;

// Bidirs

// Instantiate the UUT
   fulladder UUT (
		.C_in(C_in), 
		.C_out(C_out), 
		.S(S), 
		.A(A), 
		.B(B)
   );
// Initialize Inputs
//   `ifdef auto_init
       initial begin
		C_in = 0;
		A = 0;
		B = 0;
		#100
		C_in = 1;
		A = 0;
		B = 0;
		#100
		C_in = 0;
		A = 1;
		B = 0;
		#100
		C_in = 1;
		A = 1;
		B = 0;
		#100
		C_in = 0;
		A = 0;
		B = 1;
		#100
		C_in = 1;
		A = 0;
		B = 1;
		#100
		C_in = 0;
		A = 1;
		B = 1;
		#100
		C_in = 1;
		A = 1;
		B = 1;
		
		end
//   `endif
endmodule
