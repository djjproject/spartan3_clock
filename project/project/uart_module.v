`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:25 12/06/2014 
// Design Name: 
// Module Name:    uart_module 
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
module uart_module(clk1mhz,reset,rxd,rs232_data,state,serialen);

input clk1mhz,reset;
input rxd; // RX 핀 입력
input [3:0] state; // 스테이트 체크
output reg [47:0] rs232_data; // 총 6번을 걸쳐 받은 데이터 출력 8비트 아스키 코드
output reg serialen; // 시리얼로 받은 데이터가 시간값과 동기화 될 타임을 결정

reg [47:0] rdata;
reg [3:0] dcount; // 7번을 카운트 하는 변수
reg en,en1,en2,en3,en4,en5,en6; // 원샷변수
reg [7:0] enterbit; // enter가 입력되었는지 확인하는 비트

parameter 	d1_cnt_value = 103,
				d1_cnt_half = 51;

reg start;
integer st_cnt,r_cnt;
integer rdata_cnt;

// UART Example 참고 9600 BPS 로 속도를 맞춤
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
				if ((start==0)&(rxd==0))
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
		if(!reset)
			begin
				rdata = 0;
				rs232_data = 0;
			end
		else if ((r_cnt == d1_cnt_value)&(state==4'd10)) // state 와 9600bps 를 맞춘다
			case (dcount)
				0	:
					case (rdata_cnt) // 첫번째 
						0	: rdata[0] = rxd;
						1	: rdata[1] = rxd;
						2	: rdata[2] = rxd;
						3	: rdata[3] = rxd;
						4	: rdata[4] = rxd;
						5	: rdata[5] = rxd;
						6	: rdata[6] = rxd;
						7	: rdata[7] = rxd;
						default	: rdata = rdata;
					endcase
				1	:
					case (rdata_cnt) // 두번째
						0	: rdata[8] = rxd;
						1	: rdata[9] = rxd;
						2	: rdata[10] = rxd;
						3	: rdata[11] = rxd;
						4	: rdata[12] = rxd;
						5	: rdata[13] = rxd;
						6	: rdata[14] = rxd;
						7	: rdata[15] = rxd;
						default	: rdata = rdata;
					endcase
				2	:
					case (rdata_cnt) // 세번째
						0	: rdata[16] = rxd;
						1	: rdata[17] = rxd;
						2	: rdata[18] = rxd;
						3	: rdata[19] = rxd;
						4	: rdata[20] = rxd;
						5	: rdata[21] = rxd;
						6	: rdata[22] = rxd;
						7	: rdata[23] = rxd;
						default	: rdata = rdata;
					endcase
				3	:
					case (rdata_cnt) // 네번째
						0	: rdata[24] = rxd;
						1	: rdata[25] = rxd;
						2	: rdata[26] = rxd;
						3	: rdata[27] = rxd;
						4	: rdata[28] = rxd;
						5	: rdata[29] = rxd;
						6	: rdata[30] = rxd;
						7	: rdata[31] = rxd;
						default	: rdata = rdata;
					endcase
				4	:
					case (rdata_cnt) // 다섯번째
						0	: rdata[32] = rxd;
						1	: rdata[33] = rxd;
						2	: rdata[34] = rxd;
						3	: rdata[35] = rxd;
						4	: rdata[36] = rxd;
						5	: rdata[37] = rxd;
						6	: rdata[38] = rxd;
						7	: rdata[39] = rxd;
						default	: rdata = rdata;
					endcase
				5	:
					case (rdata_cnt) // 여섯번째
						0	: rdata[40] = rxd;
						1	: rdata[41] = rxd;
						2	: rdata[42] = rxd;
						3	: rdata[43] = rxd;
						4	: rdata[44] = rxd;
						5	: rdata[45] = rxd;
						6	: rdata[46] = rxd;
						7	: rdata[47] = rxd;
						default	: rdata = rdata;
					endcase
				6	:
					case (rdata_cnt) // 마지막으로 ENTER 가 입력되었는지 확인하는 부분
						0	: enterbit[0] = rxd;
						1	: enterbit[1] = rxd;
						2	: enterbit[2] = rxd;
						3	: enterbit[3] = rxd;
						4	: enterbit[4] = rxd;
						5	: enterbit[5] = rxd;
						6	: enterbit[6] = rxd;
						7	: enterbit[7] = rxd;
						default : enterbit = enterbit;
					endcase
				default rdata = rdata;
			endcase
		else if (state==4'd9) // 설정 모드가 아니라 메뉴로 나왔을 경우
			begin
				rdata = 47'd0; // 받은 데이터 초기화
				rs232_data = rdata; 
				enterbit = 8'd0; // 초기화
			end
		else if (rdata_cnt == 8)
			rs232_data = rdata; // 8비트를 모두 받을때 마다 값을 동기홯 한다.
	end
	
always @(posedge clk1mhz) 
	begin
		en = (rdata[7:4]==4'b0011);
		en1 = (rdata[15:12]==4'b0011);
		en2 = (rdata[23:20]==4'b0011);
		en3 = (rdata[31:28]==4'b0011);
		en4 = (rdata[39:36]==4'b0011);
		en5 = (rdata[47:44]==4'b0011);
		en6 = (enterbit == 8'b00001101);
	end
// 일단 숫자 입력만 받음으로 앞자리 0011 인 것과 원샷 블럭을 작성함

always @(posedge clk1mhz or negedge reset)
	begin
		if(!reset)
			dcount = 0;
		else if (state == 4'd9) // 스테이트가 메뉴 모드일때 값을 초기화
			begin
				dcount = 0;
				serialen = 0;
			end
		else if (dcount == 4'd7) // 받을 문자수는 7개 임으로 7에서 0으로 초기화
				dcount = 0;
		else if ((rdata[7:4]==4'b0011)&~en)  // 각각 원샷을 적용한 상태에서 아래로 내려가면서 IF 문 실행
			dcount = dcount + 1;
		else if ((rdata[15:12]==4'b0011)&~en1)
			dcount = dcount + 1;
		else if ((rdata[23:20]==4'b0011)&~en2)
			dcount = dcount + 1;
		else if ((rdata[31:28]==4'b0011)&~en3)
			dcount = dcount + 1;
		else if ((rdata[39:36]==4'b0011)&~en4)
			dcount = dcount + 1;
		else if ((rdata[47:44]==4'b0011)&~en5)
			dcount = dcount + 1;
		else if ((enterbit == 8'b00001101)&~en6) // 아스키 코드로 LR (줄바꿈,엔터) 코드는 00001101 이다. 
			begin
				dcount = dcount + 1;
				serialen = 1;  // 엔터를 눌렀음으로 시리얼이 적용 비트 1로 초기화 한다.
			end
		else 
			dcount = dcount;
	end
endmodule
