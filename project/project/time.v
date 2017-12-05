`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:33:08 12/01/2014 
// Design Name: 
// Module Name:    time 
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
module timer(clk,reset,hour,min,sec,bhour,bmin,bsec,stop,oneday,shour,smin,ssec,serialen);

input clk,reset;
input stop; // 스탑 버튼
input bhour,bmin,bsec; // 시간 분 초 를 올리는 버튼
input [5:0] shour,smin,ssec; // 시리얼 인풋
input serialen; // 시리얼 적용 인풋
output reg [5:0] hour,min,sec; // 시간출력 6비트
output reg oneday; // 하루가 넘어가는 아웃풋
reg button; // 원샷을 위한 레그 변수
integer cnt; // 1초를 세는 카운트 변수
reg state; // 버튼을 누르면 카운트가 되고 멈추고를 결정하는 스테이트 변수

parameter 	startcount = 1'b0,
				stopcount = 1'b1;
// 스테이트 파라미터


always @(posedge clk) 
	begin
		button = bhour|bsec|bmin|stop;
	end
// 원샷 구문
	

always @(posedge clk or negedge reset)
	begin
		if (!reset) state = startcount;
		else if (stop&~button) state = state + 1;
		else state = state;
	end
// 버튼을 누르면 스테이트가 2가지를 왔다갔다 하게 설정함


always @(negedge reset or posedge clk)
	begin
		if(!reset) // 초기값 리셋 설정
			begin
				cnt = 0;
				sec = 6'd0;
				hour = 6'd0;
				min = 6'd0;
			end
		else
			begin
				if(cnt==999) // 클럭이 1Khz 임으로 999까지 세면 1초이다.
					begin
						cnt = 0;
						if(sec == 6'd59) // 초가 59가 되면
							begin
								sec = 6'd0; // 0으로 초기화 하고
								if(min == 6'd59) // 분이 59분이면
									begin
										min = 6'd0; // 0으로 초기화 하고
										if(hour == 6'd23) // 시간이 23시이면
											begin
												hour = 6'd0; // 시간을 0시로 초기화
												oneday = 1'b1; // 하루가 넘어가게 설정
											end
										else 
											begin
												hour = hour + 1; // 그냥은 시간이 넘어간다. 
												oneday = 1'b0; // 일반적일 경우 하루 아웃풋은 0으로 설정
											end
									end
								else min = min + 1; // 일반적인 경우 분은 올라감
							end
						else sec = sec + 1; // 일반적인 경우 초는 올라감
					end
				else if (bhour & ~button)  // 시간 올리는 버튼을 누르면
					begin
						if(hour == 6'd23) hour = 6'd0; // 23시일떄 0으로 초기화 하고
						else hour = hour + 1; // 아닐때는 시간을 1씩 올린다.
					end
				else if (bmin & ~button) // 분 버튼을 누르면
					begin
						if(min == 6'd59) min = 6'd0; // 59분일때 분을 0으로 초기화 하고
						else min = min + 1; // 아닐경우 분을 1을 올림
					end
				else if (bsec & ~button) // 초버튼이 눌리면
					begin
						if(sec == 6'd59) sec = 6'd0; // 59초 까지 가면 0으로 초기화
						else sec = sec + 1; // 아닐경우 1을 올림
					end
				else if (serialen) // 시리얼 적용 변수가 1이 되면
					begin
						hour = shour; // 각각 받은 시리얼 데이터로 현 시간 값을 초기화함
						min = smin;
						sec = ssec;
					end
				else 
					begin
						if (state == stopcount) // 스테이트가 stopcount 일떄
							cnt = cnt;  // cnt 는 정지
						else cnt = cnt + 1; // 아닐경우 +1 을 함
					end
			end
	end

endmodule
