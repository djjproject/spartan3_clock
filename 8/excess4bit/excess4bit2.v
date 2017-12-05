`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:27 10/18/2014 
// Design Name: 
// Module Name:    excess4bit2 
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
module excess4bit2(clk,reset,x,z
    );
input x,clk,reset;
output reg [3:0] z;
reg [3:0] q;
reg [1:0] count;

always @(posedge clk) 
begin
   if (~reset) count <= 2'd3;
	else begin 
		if (count == 2'd3) count <= 2'd0;
	end
end

always @(posedge clk) 
begin
	if (~reset) q <=4'd0;
	else q <= {x,q[3:1]};
	
end

assign 

endmodule
