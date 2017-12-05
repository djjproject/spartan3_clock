`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:28 10/16/2014 
// Design Name: 
// Module Name:    spio4 
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
module spio4(clk,clear,datain,q
    );
input clk, clear;
input datain;
output reg [3:0] q;

always @(negedge clear or posedge clk)
begin
	if(!clear) q = 4'b0000;
	else
	begin
		q[2:0] = q[3:1];
		q[3] = datain;
	end
end


endmodule
