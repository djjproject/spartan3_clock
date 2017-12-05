`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:31:07 10/02/2014 
// Design Name: 
// Module Name:    fout_bit_adder_sub 
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
module fout_bit_adder_sub(a,b,as,c,s
    );
input [3:0] a,b;
input as;
output [3:0] s;
output c;

wire s1,s2,s3,s4;
wire c1,c2,c3;

xor g1 (s1,as,b[0]);
xor g2 (s2,as,b[1]);
xor g3 (s3,as,b[2]);
xor g4 (s4,as,b[3]);

full_adder adder1 (a[0],s1,as,s[0],c1);
full_adder adder2 (a[1],s2,c1,s[1],c2);
full_adder adder3 (a[2],s3,c2,s[2],c3);
full_adder adder4 (a[3],s4,c3,s[3],c);



endmodule
