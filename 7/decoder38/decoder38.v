`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:55:53 10/09/2014 
// Design Name: 
// Module Name:    decoder38 
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
module decoder38(a,b,c,o
    );
input a,b,c;
output reg [7:0] o;

always @(a or b or c)
begin
	case ({a,b,c})
		3'b000 : o=8'b00000001;
		3'b001 : o=8'b00000010;
		3'b010 : o=8'b00000100;
		3'b011 : o=8'b00001000;
		3'b100 : o=8'b00010000;
		3'b101 : o=8'b00100000;
		3'b110 : o=8'b01000000;
		default : o=8'b10000000;
	endcase
end

	

endmodule
