`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:09:49 10/02/2014 
// Design Name: 
// Module Name:    half_adder 
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
module half_adder(a,b,s,c
    );
input a,b;
output s,c;

reg sreg, creg;

assign s = sreg;
assign c = creg;

always @(a or b) 
begin
	if (a==b) sreg=0;
	else sreg=1;
	if (a==1 && b==1) creg=1;
	else creg=0;
end

endmodule
