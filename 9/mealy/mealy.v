`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:07:13 10/27/2014 
// Design Name: 
// Module Name:    mealy 
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
module mealy(rstn,x,y
    );
input rstn,x;
output reg[1:0] y;
reg state;

parameter s0=1'b0, s1=1'b1;

always @(negedge rstn or posedge x)
begin
	if(!rstn) state=s0;
	else
		case(state)
			s0 : state=s1;
			s1 : state=s0;
			default : state=s0;
		endcase
end

always @(state,x)
begin
	if((state==s0)&&(x==1'b1)) y=2'b10;
	if((state==s1)&&(x==1'b1)) y=2'b01;
	else y=2'b00;
end

endmodule
