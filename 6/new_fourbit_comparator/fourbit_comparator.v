`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:20:50 10/04/2014 
// Design Name: 
// Module Name:    fourbit_comparator 
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

module fourbit_comparator(a,b,eg,agb,alb);

input [3:0] a,b;
output eg,agb,alb;
wire e0,e1,e2,e3,al0,al1,al2,al3,bl0,bl1,bl2,bl3;

onebit_comparator oc1 (a[0],b[0],e0,al0,bl0);
onebit_comparator oc2 (a[1],b[1],e1,al1,bl1);
onebit_comparator oc3 (a[2],b[2],e2,al2,bl2);
onebit_comparator oc4 (a[3],b[3],e3,al3,bl3);

assign eg=(e0&e1&e2&e3);
assign agb=(al3|(al2&e3)|(al1&e3&e2)|(al0&e3&e2&e1));
assign alb=(bl3|(bl2&e3)|(bl1&e3&e2)|(bl0&e3&e2&e1));


endmodule
