`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:22 11/07/2014 
// Design Name: 
// Module Name:    text_lcd 
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
module text_lcd(clk_100khz, reset, cs_right, cs_left, cs_up, cs_down, cs_home, up, down, cnt_high, cnt_low, lcd_e, lcd_rs, lcd_rw, lcd_data);

	//1. parameters
	///////////////////////////////////////////////////////////////////////////////
	parameter	INIT				= 4'd0,
					FUNCTION_SET	= 4'd1,
					DISP_ONOFF		= 4'd2,
					ENTRY_MODE		= 4'd3,
					LINE1				= 4'd4,
					LINE2				= 4'd5,
					DELAYT			= 4'd6,
					CURSOR_R			= 4'd7,
					CURSOR_L			= 4'd8,
					CURSOR_U			= 4'd9,
					CURSOR_D			= 4'd10,
					CURSOR_H			= 4'd11;
	///////////////////////////////////////////////////////////////////////////////
	
	//2. ports
	///////////////////////////////////////////////////////////////////////////////
	input							clk_100khz;
	input							reset;
	input							cs_right;
	input							cs_left;
	input							cs_up;
	input							cs_down;
	input							cs_home;
	input							up;
	input							down;
	input			[3 : 0]		cnt_high;
	input			[3 : 0]		cnt_low;
	output						lcd_e;
	output						lcd_rs;
	output						lcd_rw;
	output		[7 : 0]		lcd_data;
	///////////////////////////////////////////////////////////////////////////////
	
	//3. nets
	///////////////////////////////////////////////////////////////////////////////
	reg							lcd_e;
	reg			[6 : 0]		addr;
	reg			[9 : 0]		command;
	reg			[5 : 0]		cnt;
	reg			[3 : 0]		state;
	reg			[3 : 0]		next_state;
	wire							clk_100khz;
	wire			[12 : 0]		cnt_max;
	reg							cs_right_reg;
	reg							cs_left_reg;
	reg							cs_up_reg;
	reg							cs_down_reg;
	reg							cs_home_reg;
	reg							cs_right_trig;
	reg							cs_left_trig;
	reg							cs_up_trig;
	reg							cs_down_trig;
	reg							cs_home_trig;
	reg							up_reg;
	reg							down_reg;
	reg							up_trig;
	reg							down_trig;
	///////////////////////////////////////////////////////////////////////////////
	
	//4. implementation
	///////////////////////////////////////////////////////////////////////////////
	assign cnt_max		= (state == INIT)? 6'd55 : 
								(
									((state == FUNCTION_SET) || (state == ENTRY_MODE) || (state == DISP_ONOFF))? 6'd2 : 
									(
										((state == LINE1) || (state == LINE2))? 6'd40 : 6'd2
									)
								);
	
	always @(posedge clk_100khz)
		begin
			if(~reset)
				begin
					cs_right_reg	<= 1'b0;
					cs_left_reg		<= 1'b0;
					cs_up_reg		<= 1'b0;
					cs_down_reg		<= 1'b0;
					cs_home_reg		<= 1'b0;
					
					cs_right_trig	<= 1'b0;
					cs_left_trig	<= 1'b0;
					cs_up_trig		<= 1'b0;
					cs_down_trig	<= 1'b0;
					cs_home_trig	<= 1'b0;
					
					up_reg			<= 1'b0;
					down_reg			<= 1'b0;
					up_trig			<= 1'b0;
					down_trig		<= 1'b0;
				end
				
			else
				begin
					cs_right_reg	<= cs_right;
					cs_left_reg		<= cs_left;
					cs_up_reg		<= cs_up;
					cs_down_reg		<= cs_down;
					cs_home_reg		<= cs_home;
					up_reg			<= up;
					down_reg			<= down;
					
					cs_right_trig	<= cs_right & (~cs_right_reg);
					cs_left_trig	<= cs_left & (~cs_left_reg);
					cs_up_trig		<= cs_up & (~cs_up_reg);
					cs_down_trig	<= cs_down & (~cs_down_reg);
					cs_home_trig	<= cs_home & (~cs_home_reg);
					up_trig			<= up & (~up_reg);
					down_trig		<= down & (~down_reg);
				end
		end
		
	always @(posedge clk_100khz)
		begin
			if(~reset)
				cnt	<= 6'd0;
			
			else if(state == DELAYT)
				cnt	<= 6'd0;
				
			else
				begin
					if(cnt == cnt_max)
						cnt	<= 6'd0;
						
					else
						cnt	<= cnt + 1'b1;
				end
		end
	
	always @(posedge clk_100khz)
		begin
			if(~reset)
				state	<= INIT;
				
			else
				state	<= next_state;
		end
		
	always @(*)
		begin
			case(state)
				INIT				: next_state	<= (cnt == 6'd55)?	FUNCTION_SET	: INIT;
				FUNCTION_SET	: next_state	<= (cnt == 6'd2)?		DISP_ONOFF		: FUNCTION_SET;
				DISP_ONOFF		: next_state	<= (cnt == 6'd2)?		ENTRY_MODE		: DISP_ONOFF;
				ENTRY_MODE		: next_state	<= (cnt == 6'd2)?		LINE1				: ENTRY_MODE;
				LINE1				: next_state	<= (cnt == 6'd40)?		LINE2				: LINE1;
				LINE2				: next_state	<= (cnt == 6'd40)?		DELAYT			: LINE2;
				DELAYT			: next_state	<= (cs_right_trig)? CURSOR_R : 
															(
																(cs_left_trig)? CURSOR_L : 
																(
																	(cs_up_trig)? CURSOR_U : 
																	(
																		(cs_down_trig)? CURSOR_D : 
																		(
																			(cs_home_trig)? CURSOR_H :
																			(
																				(up_trig | down_trig)? LINE1 : DELAYT
																			)
																		)
																	)
																)
															); 
				CURSOR_R			: next_state	<= (cnt == 6'd2)?		LINE1				: CURSOR_R;
				CURSOR_L			: next_state	<= (cnt == 6'd2)?		LINE1				: CURSOR_L;
				CURSOR_U			: next_state	<= (cnt == 6'd2)?		LINE1				: CURSOR_U;
				CURSOR_D			: next_state	<= (cnt == 6'd2)?		LINE1				: CURSOR_D;
				CURSOR_H			: next_state	<= (cnt == 6'd2)?		LINE1				: CURSOR_H;
				default			: next_state	<= state;
			endcase
		end
		
	assign {lcd_rs, lcd_rw, lcd_data} = command;
	
	always @(*)
		begin
			case(state)
				INIT				: lcd_e	<= clk_100khz;
				FUNCTION_SET	: lcd_e	<= cnt[0];
				DISP_ONOFF		: lcd_e	<= cnt[0];
				ENTRY_MODE		: lcd_e	<= cnt[0];
				LINE1				: lcd_e	<= clk_100khz;
				LINE2				: lcd_e	<= clk_100khz;
				DELAYT			: lcd_e	<= clk_100khz;
				CURSOR_R			: lcd_e	<= cnt[0];
				CURSOR_L			: lcd_e	<= cnt[0];
				CURSOR_U			: lcd_e	<= cnt[0];
				CURSOR_D			: lcd_e	<= cnt[0];
				CURSOR_H			: lcd_e	<= cnt[0];
				default			: lcd_e	<= clk_100khz;
			endcase
		end
	
	always @(posedge clk_100khz)
		begin
			if(~reset)
				addr	<= 7'h00;
				
			else if(cnt == 13'd0)
				begin
					case(state)
						CURSOR_R	: addr	<= (addr[3 : 0] != 4'hF)? addr + 1'b1 : addr;
						CURSOR_L	: addr	<= (addr[3 : 0] != 4'h0)? addr - 1'b1 : addr;
						CURSOR_U	: addr	<= (addr[6 : 4] != 3'h0)? addr - 7'h40 : addr;
						CURSOR_D	: addr	<= (addr[6 : 4] != 3'h4)? addr + 7'h40 : addr;
						CURSOR_H	: addr	<= 8'h00;
						default	: addr	<= addr;
					endcase
				end
			
			else
				addr	<= addr;
		end
	
	always @(*)
		begin
			if(~reset)
				command	<= 10'h300;
				
			else
				begin
					case(state)
						INIT				: command	<= 10'h300;
						FUNCTION_SET	: command	<= 10'h03C;
						DISP_ONOFF		: command	<= 10'h00F;
						ENTRY_MODE		: command	<= 10'h006;
						LINE1				:
							begin
								case(cnt)
									13'd0		: command	<= 10'h080; //set DDRAM address to 01
									13'd1		: command	<= 10'h220; //set DDRAM address to 01
									13'd2		: command	<= 10'h232;	//2
									13'd3		: command	<= 10'h230; //0
									13'd4		: command	<= 10'h231; //1
									13'd5		: command	<= 10'h231; //1
									13'd6		: command	<= 10'h234; //4
									13'd7		: command	<= 10'h234; //4
									13'd8		: command	<= 10'h230; //0
									13'd9		: command	<= 10'h230; //0
									13'd10	: command	<= {6'h23, cnt_high};
									13'd11	: command	<= {6'h23, cnt_low};
									default	: command	<= 10'h220; //space
								endcase
							end
							
						LINE2				:
							begin
								case(cnt)
									13'd0		: command	<= 10'h0C0; //set DDRAM address to 41
									13'd1		: command	<= 10'h220; //
									13'd2		: command	<= 10'h24B; //K
									13'd3		: command	<= 10'h269; //i
									13'd4		: command	<= 10'h26D; //m
									13'd5		: command	<= 10'h220; //space
									13'd6		: command	<= 10'h248; //H
									13'd7		: command	<= 10'h279; //y
									13'd8		: command	<= 10'h275; //u
									13'd9		: command	<= 10'h26E; //n
									13'd10	: command	<= 10'h220; //space
									13'd11	: command	<= 10'h257; //W
									13'd12	: command	<= 10'h26F; //o
									13'd13	: command	<= 10'h26F; //o
									default	: command	<= 10'h220; //space
								endcase
							end
							
						DELAYT			: command	<= {3'b001, addr};
						CURSOR_R			: command	<= {3'b001, addr}; //cursor right
						CURSOR_L			: command	<= {3'b001, addr}; //cursor left
						CURSOR_U			: command	<= {3'b001, addr}; //cursor up
						CURSOR_D			: command	<= {3'b001, addr}; //cursor down
						CURSOR_H			: command	<= 10'h002;
						default			: command	<= 10'h300;		
					endcase
				end
		end
	///////////////////////////////////////////////////////////////////////////////

endmodule
