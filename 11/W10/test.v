`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:36:14 11/09/2014 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(output [3:0] out1, output[3:0] out2, input plus, input minus, input clk);
	wire [6:0] w;
	Counter C(w,plus,minus,clk);
	BCD_Converter B({out1,out2},w,clk);

endmodule
