`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:08:40 10/27/2014 
// Design Name: 
// Module Name:    moore 
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
module moore(rstn,x,y
    );
input rstn,x;
output reg[1:0] y;
reg[1:0] state;

parameter s0=2'b00, s1=2'b01, s2=2'b10;

always @ (negedge rstn or posedge x)
begin
	if(!rstn) state=s0;
	else
		case(state)
			s0 : state=s1;
			s1 : state=s2;
			s2 : state=s0;
			default : state=s0;
		endcase
end

always @(state)
begin
	case(state)
		s0 : y=2'b00;
		s1 : y=2'b01;
		s2 : y=2'b10;
		default : y=2'b11;
	endcase
end

endmodule
