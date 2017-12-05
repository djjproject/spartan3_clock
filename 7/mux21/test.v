`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:50:45 10/09/2014
// Design Name:   mux21
// Module Name:   C:/Xilinx/xilinx/7/mux21/test.v
// Project Name:  mux21
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux21
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
	reg [1:0] i;
	reg s;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	mux21 uut (
		.i(i), 
		.s(s), 
		.z(z)
	);

   initial begin
      // Initialize Inputs
      s <= 0;
      #500;
      s <= 1;
           end

      // Wait 100 ns for global reset to finish
      always begin
      i[0]<=0;
      #50;
      i[1]<=1;
      #50;
      end
      
      always begin
      i[0]<=1;
      #100;
      i[1]<=0;
      #100;
      end
        
      // Add stimulus here
      

endmodule

