`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:10 09/26/2014 
// Design Name: 
// Module Name:    fourgate 
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
module fourgate(a, b, cin, cout, sum
    );

input [3:0] a;
input [3:0] b;
input cin;

output [3:0] sum;
output cout;


assign {cout, sum} = a + b + cin;



endmodule
