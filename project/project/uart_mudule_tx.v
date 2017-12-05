`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:53 12/07/2014 
// Design Name: 
// Module Name:    uart_mudule_tx 
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
module uart_module_tx(clk1mhz,reset,txd,state);

input clk1mhz,reset;
input [3:0] state;

output reg txd;

reg [3:0]dcount;

parameter 	d1_cnt_value = 103,
				d1_cnt_half = 51;

reg start;
integer st_cnt,r_cnt;
integer rdata_cnt;

always @(negedge reset or posedge clk1mhz)
	begin
		if(!reset)
			begin
				start = 0;
				st_cnt = 0;
				rdata_cnt = 0;
			end
		else if (state == 4'd10)
			begin
				if (start==0)
					begin
						if(st_cnt>=d1_cnt_half)
							begin
								start = 1;
								st_cnt = 0;
							end
						else
							begin
								start = 0;
								st_cnt = st_cnt + 1;
							end
					end
				else if (start == 1)
					if(r_cnt >= d1_cnt_value)
						begin
							r_cnt = 0;
							if(rdata_cnt>=8)
								begin
									rdata_cnt = 0;
									start = 0;
								end
							else
								begin
									rdata_cnt = rdata_cnt + 1;
									start = 1;
								end
						end
				else r_cnt = r_cnt + 1;
			end
	end

always @(negedge reset or posedge clk1mhz)
	begin
		if(!reset) txd = 0;
		else if (dcount == 4'd5) txd = 0;
		else if (state = 4'd10) txd = 1;
		else if ((r_cnt == d1_cnt_value)&(state==4'd10))
			case (dcount)
				0	:
					case (rdata_cnt)
						0	: txd = 1;
						1	: txd = 1;
						2	: txd = 0;
						3	: txd = 0;
						4	: txd = 1;
						5	: txd = 0;
						6	: txd = 1;
						7	: txd = 0;
						default	: txd=txd;
					endcase
				1	:
					case (rdata_cnt)
						0	: txd = 1;
						1	: txd = 0;
						2	: txd = 1;
						3	: txd = 0;
						4	: txd = 0;
						5	: txd = 0;
						6	: txd = 1;
						7	: txd = 0;
						default	: txd=txd;
					endcase
				2	:
					case (rdata_cnt)
						0	: txd = 1;
						1	: txd = 1;
						2	: txd = 0;
						3	: txd = 0;
						4	: txd = 1;
						5	: txd = 0;
						6	: txd = 1;
						7	: txd = 0;
						default	: txd=txd;
					endcase
				3	:
					case (rdata_cnt)
						0	: txd = 0;
						1	: txd = 0;
						2	: txd = 1;
						3	: txd = 0;
						4	: txd = 1;
						5	: txd = 0;
						6	: txd = 1;
						7	: txd = 0;
						default	: txd=txd;
					endcase
				4	:
					case (rdata_cnt)
						0	: txd = 0;
						1	: txd = 1;
						2	: txd = 0;
						3	: txd = 1;
						4	: txd = 1;
						5	: txd = 1;
						6	: txd = 1;
						7	: txd = 0;
						default	: txd=txd;
					endcase
				default txd = txd;
			endcase
		else if (state==4'd9)
			begin
				txd = 0;
			end
	end
	

always @(posedge clk1mhz or negedge reset)
	begin
		if(!reset)
			dcount = 0;
		else if (state == 4'd9)
				dcount = 0;
		else if (dcount == 4'd5)
				dcount = dcount;
		else 
			dcount = dcount+1;
	end
endmodule