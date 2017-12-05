`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:39 11/03/2014 
// Design Name: 
// Module Name:    dynamic_segment 
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
module dynamic_segment(clk,reset,com,data
    );
input clk,reset;
output reg[3:0] com;
output reg[7:0] data;

initial begin 
data = 8'b00000000;
com = 4'b0000;
end

integer scan;

always @(posedge clk or negedge reset) begin
if(!reset) scan=0;
else 
	begin 
		if(scan>4) scan=1;
		else scan = scan+1;
	end
end

always @(posedge clk) begin
case(scan)
	1 : begin com=4'b0111; data=8'b01100000; end
	2 : begin com=4'b1011; data=8'b11011010; end
	3 : begin com=4'b1101; data=8'b11110010; end
	4 : begin com=4'b1110; data=8'b01100110; end
	default : begin com=4'b1111; data=8'b00000000; end
endcase
end

endmodule
