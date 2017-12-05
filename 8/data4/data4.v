`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:09 10/16/2014 
// Design Name: 
// Module Name:    data4 
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
module data4(datain, clk1, clk2, a, b
    );
input [3:0] datain;
input clk1,clk2;
output reg [3:0] a,b;

always @(posedge clk1) 
begin
a=datain;
end

always @(posedge clk2)
begin
b=a;
end

endmodule
