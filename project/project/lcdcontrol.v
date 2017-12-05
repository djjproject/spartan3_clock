`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:32:41 11/24/2014 
// Design Name: 
// Module Name:    lcdcontrol 
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
module lcdcontrol(reset,clk,clockdata,ampm,alarm,data,lcddata,lcdrs,lcdrw,lcde,poweron);

input clk,reset;
input alarm; // 알람 적용 버스 스위치 인풋
input [119:0] data; // LCD 2번째 줄 15칸 데이터 120비트
input [23:0] clockdata; // LCD 1번째 시간 데이터
input [1:0] ampm; // AM인지 PM인지 인풋을 받음 (하나는 AMPM 을 켠 버스 스위치, 하나는 isam 비트)
input poweron; // 초기에 이 버튼을 눌러야 LCD 가 켜진다.
output reg [7:0] lcddata; // LCD 아웃풋
output reg lcdrs,lcdrw; // LCD 아웃풋
output lcde; // LCD 클럭 아웃풋 

reg [3:0] state; // LCD에 관한 State 설정
reg [3:0] hour1,hour2; // 24시간 에서 12시간제 표시로 전환하기 위한 임시 비트



// 각기 스테이트를 편하게 작성하기 위한 파라미터
parameter	delay = 4'd0,
				functionset = 4'd1,
				entrymode = 4'd2,
				disponoff = 4'd3,
				line1 = 4'd4,
				line2 = 4'd5,
				delayt = 4'd6,
				cleardisp = 4'd7,
				wating=4'd10,
				dampmon = 4'd11,
				dampmoff = 4'd12;

integer cnt;
// 스테이트를 왔다갔다 하기 위한 카운트 변수


assign lcde = clk;
// 클럭 어싸인 
// 실제로 교안에는 LCD 클럭이 100hz 이지만 실제로 1Khz 를 줘도 문제는 없었고. LCD의 데이터 업데이트가 빠르게 되는 결과를 얻음

// AMPM 결정, BCD 코드로는 18시 20시 부터 에러가 생겨서 if 문으로 분리
always @(posedge clk)
	begin
		if (ampm == 2'b10 | ampm == 2'b11)
			begin
				if (clockdata[23:20] >= 4'b0001 && clockdata[19:16] >= 4'b0011)
					begin
						hour1 = clockdata[23:20] - 4'b0001;
						hour2 = clockdata[19:16] - 4'b0010;
					end
				else if (clockdata[23:20] >= 4'b0010)
					begin
						if (clockdata[19:16] == 4'b0000) 
							begin
								hour2 = 4'b1000;
								hour1 = clockdata[23:20] - 4'b0010;
							end
						else if (clockdata[19:16] == 4'b0001) 
							begin
								hour2 = 4'b1001;
								hour1 = clockdata[23:20] - 4'b0010;
							end
						else if (clockdata[19:16] == 4'b0010)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0000;
							end
						else if (clockdata[19:16] == 4'b0011)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0001;
							end
						else if (clockdata[19:16] == 4'b0100)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0010;
							end
					end
				else 
					begin
						hour1 = clockdata[23:20];
						hour2 = clockdata[19:16];
					end
			end
		else 
			begin
				hour1 = clockdata[23:20];
				hour2 = clockdata[19:16];
			end
	end

		


// State 변환 구문				
always @(negedge reset or posedge clk)
begin
	if (!reset) state = delay;
	else 
		begin
			case (state)
				delay 		: if (cnt == 70 && poweron == 1'b1) state = functionset; // 파워 온 구문
				functionset : if (cnt == 30) state = disponoff;
				disponoff 	: if (cnt == 30) state = entrymode;
				entrymode 	: if (cnt == 20) state = line1;
				line1			: if (cnt == 20) state = line2;
				line2 		: if (cnt == 20) state = line1;
				default 		: state = delay;
			endcase
		end
end


always @ (negedge reset or posedge clk)
begin
	if (!reset) cnt = 0;
	else
		begin
			case (state)
				delay 		: if (cnt >= 70) cnt = 0; else cnt = cnt + 1;
				functionset : if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				disponoff 	: if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				entrymode	: if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				line1			: if (cnt >= 20) cnt = 0; else cnt = cnt + 1;
				line2			: if (cnt >= 20) cnt = 0; else cnt = cnt + 1;
				default		: cnt = 0;
			endcase
		end
end

always @ (negedge reset or posedge clk)
begin
	if (!reset) 
		begin
			lcdrs = 1'b1;
			lcdrw = 1'b1;
			lcddata = 8'b00000000;
		end
	else
		begin
			case (state)
				functionset :
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00111100;
					end
				disponoff 	:
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00001100;
					end
				entrymode	:
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00000110;
					end
				line1			:
					begin
						lcdrw = 1'b0;
						
						case (cnt)
							0  : 
								begin
									lcdrs = 1'b0;
									lcddata = 8'b10000000; // 시작번지
								end
							1  : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20; // 공백
								end
							2  :
								begin
									lcdrs = 1'b1;
									if (alarm) lcddata = 8'h41; // 알람이 활성화 되었을 경우 A 라고 표시함
									else lcddata = 8'h20; 
								end
							3  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							4  :
								begin
									lcdrs = 1'b1;
									if 		(ampm == 2'b11) lcddata = 8'h41;
									else if 	(ampm == 2'b10) lcddata = 8'h50;
									else 		lcddata = 8'h20; // AMPM 을 표시함
								end
							5  :
								begin
									lcdrs = 1'b1;
									if			(ampm == 2'b10 | ampm == 2'b11) lcddata = 8'h4D;
									else		lcddata = 8'h20; // AMPM 을 표시함
								end
							6  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							7  :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,hour1}; // 24시간 변환 혹은 12시간으로 변환된 시간값 출력
								end
							8  : 
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,hour2}; // 위와 동일
								end
							9  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h3A;
								end
							10	:
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[15:12]}; // 분 표시
								end
							11 :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[11:8]};
								end
							12 :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h3A;
								end
							13 : 
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[7:4]}; // 초 표시
								end
							14 :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[3:0]};
								end
							default : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'b00100000;
								end
						endcase
					end
				line2			:
					begin
						lcdrw = 1'b0;
						
						case (cnt) 
							0 	:
								begin
									lcdrs = 1'b0; // 시작번지 두번째 첫칸 지정
									lcddata = 8'b11000000;
								end
							1	:
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							2	:
								begin
									lcdrs = 1'b1;
									lcddata = data[119:112]; // 입력된 120비트 데이터 순차 출력
								end
							3 	:
								begin
									lcdrs = 1'b1;
									lcddata = data[111:104];
								end
							4	:
								begin
									lcdrs = 1'b1;
									lcddata = data[103:96];
								end
							5	:
								begin
									lcdrs = 1'b1;
									lcddata = data[95:88];
								end
							6	:
								begin
									lcdrs = 1'b1;
									lcddata = data[87:80];
								end
							7	:
								begin
									lcdrs = 1'b1;
									lcddata = data[79:72];
								end
							8	:
								begin
									lcdrs = 1'b1;
									lcddata = data[71:64];
								end
							9	:
								begin
									lcdrs = 1'b1;
									lcddata = data[63:56];
								end
							10	:
								begin
									lcdrs = 1'b1;
									lcddata = data[55:48];
								end
							11	:
								begin
									lcdrs = 1'b1;
									lcddata = data[47:40];
								end
							12 :
								begin
									lcdrs = 1'b1;
									lcddata = data[39:32];
								end
							13 :
								begin
									lcdrs = 1'b1;
									lcddata = data[31:24];
								end
							14 :
								begin
									lcdrs = 1'b1;
									lcddata = data[23:16];
								end
							15	:
								begin
									lcdrs = 1'b1;
									lcddata = data[15:8];
								end
							16 :
								begin
									lcdrs = 1'b1;
									lcddata = data[7:0];
								end
							default : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'b00100000;
								end
						endcase
					end
			endcase
		end
end
		
endmodule
