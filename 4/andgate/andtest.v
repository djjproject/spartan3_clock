// Verilog test fixture created from schematic D:\xilinx\andgate\andgate.sch - Sat Sep 20 22:25:42 2014

`timescale 1ns / 1ps

module andgate_andgate_sch_tb();

// Inputs
   reg a;
   reg b;

// Output
   wire x;

// Bidirs

// Instantiate the UUT
   andgate UUT (
		.a(a), 
		.b(b), 
		.x(x)
   );
// Initialize Inputs
 //  `ifdef auto_init
       initial begin
		a = 0;
		b = 0;
		#100
		a = 1;
		b = 0;
		#100
		a = 1;
		b = 1;
		#100
		a = 0;
		b = 1;
		 end
 //  `endif
endmodule
