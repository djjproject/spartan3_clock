`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:27 09/26/2014 
// Design Name: 
// Module Name:    fullb 
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
module fullb(a, b, cin, sum, cout
    );

input a, b, cin;
output sum, cout;

assign sum = a ^ b ^ cin;
assign cout = (a&b)|(a&cin)|(b&cin);

endmodule
