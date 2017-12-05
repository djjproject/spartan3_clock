`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:12 10/18/2014 
// Design Name: 
// Module Name:    excess4bit 
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
module excess4bit(clk,x,z
    );
input x,clk;
output reg [3:0] z;
reg [3:0] q;
reg [1:0] clk2;

always @(posedge clk) 
begin
	q[2:0] = q[3:1];
	q[3] = x;
	clk2 = clk2+1;
	if (clk2 == 2'b11) z = q+4'b0011;
	else z = 4'b0000;
end

endmodule