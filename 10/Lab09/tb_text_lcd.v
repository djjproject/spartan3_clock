`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:40:12 11/07/2014
// Design Name:   text_lcd
// Module Name:   D:/11/Ji_Hyunwook/Xilinx/Projects/Lab09/tb_text_lcd.v
// Project Name:  Lab09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: text_lcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_text_lcd;

	// Inputs
	reg clk_100khz;
	reg reset;
	reg cs_right;
	reg cs_left;
	reg cs_up;
	reg cs_down;
	reg cs_home;
	reg [3:0] cnt_high;
	reg [3:0] cnt_low;

	// Outputs
	wire lcd_e;
	wire lcd_rs;
	wire lcd_rw;
	wire [7:0] lcd_data;
	

	// Instantiate the Unit Under Test (UUT)
	text_lcd uut (
		.clk_100khz(clk_100khz), 
		.reset(reset), 
		.cs_right(cs_right), 
		.cs_left(cs_left), 
		.cs_up(cs_up), 
		.cs_down(cs_down), 
		.cs_home(cs_home), 
		.cnt_high(cnt_high), 
		.cnt_low(cnt_low), 
		.lcd_e(lcd_e), 
		.lcd_rs(lcd_rs), 
		.lcd_rw(lcd_rw), 
		.lcd_data(lcd_data)
	);
	
	initial begin
		clk_100khz = 0;
		
		forever begin
			#5 clk_100khz = ~clk_100khz;
		end
	end
	
	initial begin
		reset	= 1; #5
		reset	= 0; #5
		reset	= 1;
	end
	
	initial begin
		{cnt_high, cnt_low} = 8'h39;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#55445;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b10000;
		#100;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#280;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00010;
		#100;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#280;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b01000;
		#100;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#280;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00100;
		#100;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#280;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b10000;
		#100;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00000;
		#280;
		{cs_right, cs_left, cs_up, cs_down, cs_home} = 5'b00001;
		
	end
      
endmodule

