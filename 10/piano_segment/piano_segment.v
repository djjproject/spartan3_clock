`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:48 11/03/2014 
// Design Name: 
// Module Name:    piano_segment 
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
module piano_segment(clk,reset,piezo,a,b,c,d,e,f,g,ha,sa,sb,sc,sd,se,sf,sg
    );
input clk,reset;
input a,b,c,d,e,f,g,ha;
output piezo;
output sa,sb,sc,sd,se,sf,sg;

wire [3:0] bcd;
assign bcd[3]=ha;
assign bcd[2]=d^e^f^g;
assign bcd[1]=b^c^f^g;
assign bcd[0]=a^c^d^e^g;

piano n1 (clk,reset,a,b,c,d,e,f,g,ha,piezo);
segment n2 (bcd,sa,sb,sc,sd,se,sf,sg);

endmodule
