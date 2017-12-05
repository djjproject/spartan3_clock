`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:53:48 10/02/2014 
// Design Name: 
// Module Name:    onebit_comparator 
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
module onebit_comparator(a,b,agb,eg,alb
    );
input a,b;
output agb,eg,alb;

assign eg = (a&b)|(~a&~b);
assign agb = (a&~b);
assign alb = (~a&b);

endmodule
