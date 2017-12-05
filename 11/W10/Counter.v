`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:04:30 11/09/2014 
// Design Name: 
// Module Name:    Counter 
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
module Counter(
	output reg[6:0] out,
	input plus,
	input minus,
	input clk
    );
	
	reg btn_push;
	
	initial begin out=6'd41; end
	
	always @(posedge clk) begin
		if(~plus&~minus) begin
			out=out;
			btn_push=1'b0;
		end
		else if((plus&~minus)&~btn_push)
		begin
			if(out==7'd99) out=7'd0;
			else out=out+1;
			btn_push=1'b1;
		end
		else if((~plus&minus)&~btn_push)
		begin
			if(out==7'd0) out=7'd99;
			else out=out-1;
			btn_push=1'b1;
		end
		else 
		begin 
			out=out;
			btn_push=1'b1;
		end
	end

endmodule
