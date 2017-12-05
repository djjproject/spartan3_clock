`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:05 11/02/2014 
// Design Name: 
// Module Name:    segment 
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
module segment(bcd,a,b,c,d,e,f,g);
input [3:0] bcd;
output reg a,b,c,d,e,f,g;

always @ (bcd) begin
case (bcd)
	4'b0000 : {a,b,c,d,e,f,g} = 7'b1111110;
	4'b0001 : {a,b,c,d,e,f,g} = 7'b0110000;
	4'b0010 : {a,b,c,d,e,f,g} = 7'b1101101;
	4'b0011 : {a,b,c,d,e,f,g} = 7'b1111001;
	4'b0100 : {a,b,c,d,e,f,g} = 7'b0110011;
	4'b0101 : {a,b,c,d,e,f,g} = 7'b1011011;
	4'b0110 : {a,b,c,d,e,f,g} = 7'b1011111;
	4'b0111 : {a,b,c,d,e,f,g} = 7'b1110000;
	4'b1000 : {a,b,c,d,e,f,g} = 7'b1111111;
	4'b1001 : {a,b,c,d,e,f,g} = 7'b1111011;
	default : {a,b,c,d,e,f,g} = 7'b0000000;
endcase
end



endmodule
