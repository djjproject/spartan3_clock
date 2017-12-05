`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:23 11/24/2014 
// Design Name: 
// Module Name:    clockdivider 
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
module clockdivider(clk,en100hz,en1hz,en2hz,clk_out);

input clk;
input en100hz;
input en1hz;
input en2hz;
output reg clk_out;

integer count;

always @(posedge clk) 
begin
	if (en100hz) 
		begin
			if (count>=4)
				begin
					count=0;
					clk_out=~clk_out;
				end
			else count=count+1;
		end
	else if (en1hz) 
		begin 
			if (count>=499)
				begin
					count=0;
					clk_out=~clk_out;
				end
			else count=count+1;
		end
	else if (en2hz) 
		begin 
			if (count>=249)
				begin
					count=0;
					clk_out=~clk_out;
				end
			else count=count+1;
		end
	else count=count;
end


endmodule
