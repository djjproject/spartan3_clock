`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:38:45 10/27/2014 
// Design Name: 
// Module Name:    bit8updown 
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
module bit8updown(data,endata,clk,clken,reset,updown,countout
    );
input clk,clken,reset,updown,endata;
input [8:0]data;
output reg [8:0]countout;

initial begin
	countout = 8'b00000000;
end

reg clkt1,clkt2,clkt;

always @(posedge clk) begin
clkt1<=clken;
end

always @(posedge clk) begin
clkt2<=clkt1;
end

always @(posedge clk) begin
clkt<=(clkt1&(~clkt2));
end

always @(posedge clkt or negedge reset) begin
	if(!reset) countout<=8'b0;
	else if (endata) countout<=data;
	else if (updown) countout<=countout+1;
	else if (!updown) countout<=countout-1;
	else countout<=countout;
end

endmodule
