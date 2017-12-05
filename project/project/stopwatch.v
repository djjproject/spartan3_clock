`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:23 12/05/2014 
// Design Name: 
// Module Name:    stopwatch 
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
module stopwatch(clk,reset,b1,b2,b3,state1,com,arraydata,mms);

input clk,reset;
input b1,b2,b3; // 다양한 기능을 가진 버튼 3개 입력
input [3:0] state1; // 메뉴 모듈에서 받는 스테이트 값
output [3:0] com; // 4 FND 의 COM 포트 
output [7:0] arraydata; // 4 FND 의 한개 출력값 
output [3:0] mms; // 밀리 세컨드 값

reg[5:0] min,sec; 
reg[3:0] mms;
reg en;
reg[3:0] state;

wire[3:0]min10,min1,sec10,sec1;

integer cnt;

parameter 	stop = 4'd0,
				startcount = 4'd1,
				resetcount = 4'd2;
// 스테이트를 정의함

// BCD 컨버터 리비전1 모듈을 사용해서 10자리와 1자리를 구분함
num_divider s1(min,min10,min1);
num_divider s2(sec,sec10,sec1); 
dynamic_segment s3(clk,reset,{min10,min1,sec10,sec1},com,arraydata);
// 시간값을 다이나믹 세크먼트 모듈에 보냄
 
always @(posedge clk) en = b1|b2|b3;
// 원샷 모듈

always @(posedge clk or negedge reset)
	begin
		if(!reset) state = stop; // 기본적으로 stop 스테이트
		else if (state1 == 4'd4)
			begin
				case (state)
					stop :
						if(b1&~en) state = startcount; // b1 버튼을 누르면 카운트 시작
						else if (b2&~en) state = resetcount; // b2 버튼을 누르면 카운트 정지
					startcount :
						if(b1&~en) state = stop;
						else if (b2&~en) state = resetcount;
					resetcount :
						if(b1&~en) state = startcount;
					default : 
						state = stop; // 기본적으로 stop 스테이트
				endcase
			end
		else state = state;
	end
	
// 타이머 모듈과 같은 구성					
always @(posedge clk or negedge reset)
	begin
		if(!reset)
			begin
				sec = 6'd0;
				min = 6'd0;
			end
		else if (state1 == 4'd4)
			begin
				if (state == resetcount)
					begin
						min = 6'd0;
						sec = 6'd0;
					end
				else if (state == startcount)
					begin
						if(cnt == 999)
							begin
								cnt = 0;
								if(sec == 6'd59)
									begin
										sec = 6'd0;
										if(min == 6'd59) min = 6'd0;
										else min = min + 1;
									end
								else sec = sec + 1;
							end
						else cnt = cnt + 1;
					end
				else cnt = cnt;
			end
		else cnt = cnt;
	end
	
always @(posedge clk or negedge reset)
	begin
		if(!reset) mms = 4'd0;
		else if (mms == 4'd10) mms = 4'd0;
		else if (state == resetcount) mms = 4'd0;
		else if (cnt == 100 | cnt == 200 | cnt == 300 | cnt == 400 | cnt == 500 | cnt == 600 | cnt == 700 
								| cnt == 800 | cnt == 900 | cnt == 999)
				mms = mms + 1;
		else mms = mms;
	end
// cnt 변수를 기반으로 밀리세크 결정						
		

endmodule
