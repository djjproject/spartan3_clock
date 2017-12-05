`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:24:02 12/01/2014 
// Design Name: 
// Module Name:    buttun_converter 
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
module button_converter(bhour,bmin,bsec,hour,min,sec,clk,reset,ihour,imin,isec);

input bhour,bmin,bsec,clk,reset;
input [5:0] ihour,imin,isec;
output reg [5:0] hour,min,sec;

reg en;




always @(posedge clk) en = bhour|bmin|bsec;

always @(posedge clk or negedge reset)
	begin
		if (!reset) hour = 0;
		else if (bhour&~en)
			begin
				if (hour == 6'd24) hour = 6'd0;
				else hour = hour + 1;
			end
		else hour = hour;
	end

always @(posedge clk or negedge reset)
	begin
		if (!reset) min = 0;
		else if (bmin&~en)
			begin
				if (min == 6'd59) min = 6'd0;
				else min = min + 1;
			end
		else min = min;
	end

always @(posedge clk or negedge reset)
	begin
		if (!reset) sec = 0;
		else if (bsec&~en)
			begin
				if (sec == 6'd59) sec = 6'd0;
				else sec = sec + 1;
			end
		else sec = sec;
	end
			
endmodule
