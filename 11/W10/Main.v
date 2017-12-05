`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:09:02 11/10/2014 
// Design Name: 
// Module Name:    Main 
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
module Main(
	output lcdrs, 
	output lcdrw, 
	output lcde,
	output [7:0] lcddata,
	input clk,
	input resetn,
	input [6:0] ctl,
	
	
	output reg[2:0] lcdctl,
	output [3:0] state,
	output [7:0]lcddata2
    );

	//reg[2:0] lcdctl;
	
	parameter [6:0]	Cursor_Up   = 7'b1000000,
							Cursor_Left = 7'b0100000,
							Cursor_Home = 7'b0010000,
							Cursor_Right= 7'b0001000,
							Cursor_Down = 7'b0000100,
							Number_Up   = 7'b0000010,
							Number_Down = 7'b0000001,
							Wating      = 7'b0000000;
	always @(posedge clk)
	begin
		case(ctl)
			Cursor_Up   : lcdctl=3'b010; //up
			Cursor_Left : lcdctl=3'b100; //left
			Cursor_Home : lcdctl=3'b001; //home
			Cursor_Right: lcdctl=3'b101; //right
			Cursor_Down : lcdctl=3'b011; //down
			Number_Up   : lcdctl=3'b110; //count_up
			Number_Down : lcdctl=3'b111; //count_down
			Wating      : lcdctl=3'b000; //wating
			default     : lcdctl=3'b000; //wating
		endcase		
	end
	
	LCD lcd(resetn, clk, lcde, lcdrs, lcdrw, lcddata, lcdctl,state);	
	//LCD_first lcd(resetn, clk, lcde, lcdrs, lcdrw, lcddata);	
	assign lcddata2=lcddata;
	 
endmodule
