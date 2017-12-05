`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:16:00 10/02/2014 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a,b,cin,s,cout
    );
input a,b,cin;
output s,cout;

wire s1,c1,c2;

half_adder ha1 (.a(a),.b(b),.s(s1),.c(c1));
half_adder ha2 (.a(s1),.b(cin),.s(s),.c(c2));

assign cout=c1|c2;


endmodule
