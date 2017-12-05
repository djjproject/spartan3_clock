`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:22:47 10/02/2014 
// Design Name: 
// Module Name:    four_bit_adder 
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
module four_bit_adder(a,b,s,cout
    );
input [3:0] a,b;
output [3:0] s;
output cout;

reg [3:0] sreg;
reg creg;

assign s=sreg;
assign cout=creg;

always @(a or b)
begin
	sreg=a+b;
	if ((a+b)>5'b01111) creg=1;
	else creg=0;
end

endmodule
