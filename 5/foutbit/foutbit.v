`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:43 09/26/2014 
// Design Name: 
// Module Name:    foutbit 
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
module foutbit(cin, a0, b0, a1, b1, a2, b2, a3, b3, cout, s0, s1, s2, s3
    );

input cin, a0, b0, a1, b1, a2, b2, a3, b3;
output cout, s0, s1, s2, s3;
wire c1, c2, c3;

full g1(a0, b0, cin, s0, c1);
full g2(a1, b1, c1, s1, c2);
fullb g3(a2, b2, c2, s2, c3);
fullb g4(a3, b3, c3, s3, cout);

endmodule
