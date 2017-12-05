`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:12 11/10/2014 
// Design Name: 
// Module Name:    top 
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
module top(	clk, reset, 
				cs_right, cs_left, cs_up, cs_down, cs_home, 
				up, down, 
				lcd_e, lcd_rs, lcd_rw, lcd_data
			);
			
	input							clk;
	input							reset;
	input							cs_right;
	input							cs_left;
	input							cs_up;
	input							cs_down;
	input							cs_home;
	input							up;
	input							down;
	
	output						lcd_e;
	output						lcd_rs;
	output						lcd_rw;
	output		[7 : 0]		lcd_data;
	
	
	wire			[3 : 0]		cnt_high;
	wire			[3 : 0]		cnt_low;
	wire							clk_100khz;
	
	clk_divisor 			CLKDIV	(clk, reset, clk_100khz);
	counter_bcd_updown	CNTBCD	(clk_100khz, reset, up, down, {cnt_high, cnt_low});
	text_lcd					TXTLCD	(clk_100khz, reset, 
											 cs_right, cs_left, cs_up, cs_down, cs_home, 
											 up, down,
											 cnt_high, cnt_low, 
											 lcd_e, lcd_rs, lcd_rw, lcd_data);

endmodule
