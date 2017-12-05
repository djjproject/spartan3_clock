`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:51 10/06/2014 
// Design Name: 
// Module Name:    onebit_sub 
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
module onebit_sub(borrow,a,b,d,borrowout
    );

input borrow,a,b;
output d,borrowout;

wire out1,out2,out3;

xor g1 (out1,a,b);
xor g2 (d,out1,borrow);
and g3 (out2,~a,b);
and g4 (out3,~out1,borrow);
xor g5 (borrowout,out2,out3);


endmodule
