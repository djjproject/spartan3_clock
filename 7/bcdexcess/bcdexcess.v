`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:27 10/13/2014 
// Design Name: 
// Module Name:    bcdexcess 
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
module bcdexcess(a,q
    );
input [7:0] a;
output [7:0] q;

assign q=a+8'b00110011;


endmodule
