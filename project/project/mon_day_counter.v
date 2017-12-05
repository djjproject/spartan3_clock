`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:28 12/05/2014 
// Design Name: 
// Module Name:    mon_day_counter 
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
module mon_day_counter(clk,reset,oneday,b1,b2,b3,state,mm,dd);

input clk,reset,oneday;
input b1,b2,b3;
input [3:0] state;
output reg [5:0] mm,dd;

reg en;

always @(posedge clk) en = b1|b2|b3|oneday;



always @(posedge clk or negedge reset)
	begin
		if(!reset)
			begin
				mm = 5'd1;
				dd = 5'd1;
			end 
		else if (state == 4'd6) // 스테이트 상태가 날짜 조정모드일때만 동작
			begin
				if (mm == 6'd1 && dd == 6'd32) // 각기 달과 날짜 설정
					begin
						mm = 6'd2;
						dd = 6'd1;
					end
				else if (mm == 6'd2 && dd == 6'd29)
					begin
						mm = 6'd3;
						dd = 6'd1;
					end
				else if (mm == 6'd3 && dd == 6'd32)
					begin
						mm = 6'd4;
						dd = 6'd1;
					end
				else if (mm == 6'd4 && dd == 6'd31)
					begin
						mm = 6'd5;
						dd = 6'd1;
					end
				else if (mm == 6'd5 && dd == 6'd32)
					begin
						mm = 6'd6;
						dd = 6'd1;
					end
				else if (mm == 6'd6 && dd == 6'd31)
					begin
						mm = 6'd7;
						dd = 6'd1;
					end
				else if (mm == 6'd7 && dd == 6'd32)
					begin
						mm = 6'd8;
						dd = 6'd1;
					end
				else if (mm == 6'd8 && dd == 6'd31)
					begin
						mm = 6'd9;
						dd = 6'd1;
					end
				else if (mm == 6'd9 && dd == 6'd32)
					begin
						mm = 6'd10;
						dd = 6'd1;
					end
				else if (mm == 6'd10 && dd == 6'd31)
					begin
						mm = 6'd11;
						dd = 6'd1;
					end
				else if (mm == 6'd11 && dd == 6'd31)
					begin
						mm = 6'd12;
						dd = 6'd1;
					end
				else if (mm == 6'd12 && dd == 6'd32)
					begin
						mm = 6'd1;
						dd = 6'd1;
					end
				else if (mm == 6'd13) mm = 6'd1; // 월이 13이면 1로 초기화
				else if (b1&~en) mm = mm + 1; // 버튼 입력에 대응
				else if (b2&~en) dd = dd + 1;
				else if (oneday&~en) dd = dd + 1;
				else 
					begin
						mm = mm;
						dd = dd;
					end
				end
		else 
			begin
				mm = mm;
				dd = dd;
			end
	end
		   




endmodule
