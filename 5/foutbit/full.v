`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:17 09/26/2014 
// Design Name: 
// Module Name:    full 
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
module full(a, b, cin, sum, cout
    );

input a, b, cin;
output sum, cout;
wire s1, c1, c2;

xor g1(s1, a, b);
and g2(c1, a, b);
and g3(c2, s1, cin);
xor g4(sum, s1, cin);
or g5(cout, c1, c2);

endmodule
