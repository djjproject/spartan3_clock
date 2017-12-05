`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:39:35 10/27/2014 
// Design Name: 
// Module Name:    bit4upcounter 
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
module bit4upcounter(clk,reset,load,loaden,countout,clken,up
    );
input clk,clken,loaden,reset,up;
input [3:0] load;
output reg [3:0] countout;

reg clkent,clkent1,clkent2;

always @(posedge clkent or negedge reset) begin
	if(!reset) countout<=4'b0000;
	else if (loaden) countout<=load;
	else if (up) countout<=countout+1;
	else countout<=countout;
end

always @(posedge clk) begin
	clkent1 <= clken;
end

always @(posedge clk) begin
	clkent2 <= clkent1;
end

always @(posedge clk) begin
	clkent <=(clkent1&(~clkent2));
end

endmodule
