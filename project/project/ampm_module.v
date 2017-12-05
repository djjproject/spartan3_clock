`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:51 12/04/2014 
// Design Name: 
// Module Name:    ampm_module 
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
module ampm_module(clk,reset,hour,isam);

input clk,reset;
input [5:0] hour;
output reg isam;

// 12시간 보다 크면 isam = 1, 작으면 0 으로 결정
always @(posedge clk or negedge reset)
	begin
		if (!reset) isam=0;
		else if (hour >= 12) isam = 0;
		else if (hour < 12) isam = 1;
		else isam = isam;
	end

endmodule
