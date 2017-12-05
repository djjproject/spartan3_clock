`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:05:02 10/09/2014 
// Design Name: 
// Module Name:    mux41 
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
module mux41(a,b,c,d,s,z
    );
input a,b,c,d;
input [1:0] s;
output reg z;

always @(a,b,c,d,s)
begin
	case (s)
		2'b00 : z=a;
		2'b01 : z=b;
		2'b10 : z=c;
		2'b11 : z=d;
	endcase
end

endmodule
