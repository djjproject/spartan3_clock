// Verilog test fixture created from schematic D:\xilinx\fourbitripplecarryadder\fourbitadder.sch - Sun Sep 21 16:35:42 2014

`timescale 1ns / 1ps

module fourbitadder_fourbitadder_sch_tb();

// Inputs
   reg A3;
   reg B3;
   reg A1;
   reg B1;
   reg B2;
   reg A2;
   reg C_in;
   reg A0;
   reg B0;

// Output
   wire C_out;
   wire S3;
   wire S2;
   wire S1;
   wire S0;

// Bidirs

// Instantiate the UUT
   fourbitadder UUT (
		.C_out(C_out), 
		.S3(S3), 
		.S2(S2), 
		.S1(S1), 
		.S0(S0), 
		.A3(A3), 
		.B3(B3), 
		.A1(A1), 
		.B1(B1), 
		.B2(B2), 
		.A2(A2), 
		.C_in(C_in), 
		.A0(A0), 
		.B0(B0)
   );
// Initialize Inputs
//   `ifdef auto_init
      initial begin
		
		A0 = 0; //5
		A1 = 1;
		A2 = 0;
		A3 = 1;
		B0 = 0; //7
		B1 = 1;
		B2 = 1;
		B3 = 1;
		C_in = 0;
		
		#100
		
		A0 = 1; //1111
		A1 = 1;
		A2 = 1;
		A3 = 1;
		B0 = 1; //1010
		B1 = 0;
		B2 = 1;
		B3 = 0;
		C_in = 1;
		
		#100
		
		A0 = 1; //1111
		A1 = 1;
		A2 = 1;
		A3 = 1;
		B0 = 1; //1111
		B1 = 1;
		B2 = 1;
		B3 = 1;
		C_in = 1;
		
		end
//   `endif
endmodule
