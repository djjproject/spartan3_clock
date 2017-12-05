`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:29 12/03/2014 
// Design Name: 
// Module Name:    menu 
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
module menu(clk,reset,menu,back,enter,data,date,state,indd,inmm,inahour,inamin,inworld,hour,dmin,rdata,serialen);

input clk,reset;
input menu,back,enter; // 메뉴 버튼 입력
input [2:0] date; // 요일 변수 입력
input [2:0] inworld; // 세계시간 변수 입력
input [7:0] indd,inmm,inahour,inamin; // 월일 입력, 알람 시간 입력
input [7:0] dmin; // 분 입력 , 세계시간의 분을 결정
input [5:0] hour; // 시간 입력 , 세계시간을 위한 입력
input [47:0] rdata; // 시리얼 데이터의 입력
input serialen; // 시리얼 동작 입력

output reg [119:0]data; // LCD 두번쨰 라인 출력
output reg [3:0] state; // 메뉴 스테이트 변수, 다른 곳에서 같은 스테이트에 동작하도록 연동용 아웃풋


reg [5:0] whour; // 세계시간
reg en; // 원샷 전용 en 
wire [7:0]bcd; // 세계시간 4비트 BCD 전환 WIRE

// 스테이트 구분
parameter 	normal = 4'd0,
				alarmmenu = 4'd1,
				alarmset = 4'd2,
				stopwatch = 4'd3,
				stopwatchset = 4'd4,
				mmdd = 4'd5,
				mmddset = 4'd6,
				worldtime = 4'd7,
				worldtimein = 4'd8,
				serialsync = 4'd9,
				serialset = 4'd10;
				
bcd_converter_w r1(bcd,whour,clk);
// BCD 컨버터 리비전1


// LCD 문자 정의 

`define n0 8'h30
`define n1 8'h31
`define n2 8'h32
`define n3 8'h33
`define n4 8'h34
`define n5 8'h35
`define n6 8'h36
`define n7 8'h37
`define n8 8'h38
`define n9 8'h39
`define col 8'h3A
`define space 8'h20
`define A 8'h41
`define B 8'h42
`define C 8'h43
`define D 8'h44
`define E 8'h45
`define F 8'h46
`define G 8'h47
`define H 8'h48
`define I 8'h49
`define J 8'h4A
`define K 8'h4B
`define L 8'h4C
`define M 8'h4D
`define N 8'h4E
`define O 8'h4F
`define P 8'h50
`define Q 8'h51
`define R 8'h52
`define S 8'h53
`define T 8'h54
`define U 8'h55
`define V 8'h56
`define W 8'h57
`define X 8'h58
`define Y 8'h59
`define Z 8'h5A

`define a 8'h61
`define b 8'h62
`define c 8'h63
`define d 8'h64
`define e 8'h65
`define f 8'h66
`define g 8'h67
`define h 8'h68
`define i 8'h69
`define j 8'h6A
`define k 8'h6B
`define l 8'h6C
`define m 8'h6D
`define n 8'h6E
`define o 8'h6F
`define p 8'h70
`define q 8'h71
`define r 8'h72
`define s 8'h73
`define t 8'h74
`define u 8'h75
`define v 8'h76
`define w 8'h77
`define x 8'h78
`define y 8'h79
`define z 8'h7A

initial begin 
	data = {`space,`space,`space,`space,`space,`space,`space,`space,`space,`space,`space,`space,`space,`space,`space};
end


// 원샷 모듈
always @(posedge clk) en = menu|enter|back;


// 버튼에 따른 스테이트 이동 모듈 
always @(posedge clk or negedge reset)
	begin
		if (!reset) state = normal;
		else 
			begin
				case (state) 
					normal	:
							if (menu&~en) state = alarmmenu; // 일반 상태에서 메뉴를 누르면 메뉴가 표시됨
					alarmmenu	:
						begin
							if (menu&~en) state = stopwatch; // 메뉴를 누르면 다음메뉴
							else if (enter&~en) state = alarmset; // 엔터를 누르면 알람설정 모드
							else if (back&~en) state = normal; // 백버튼을 누르면 노말 스테이트 (이하 동일)
						end
					alarmset		:
							if (back&~en) state = alarmmenu;
					stopwatch	:
						begin
							if (enter&~en) state = stopwatchset;
							else if (menu&~en) state = mmdd;
							else if (back&~en) state = normal;
						end
					stopwatchset	: 
							if (back&~en) state = stopwatch;
					mmdd			:
						begin
							if (enter&~en) state = mmddset;
							else if (menu&~en) state = worldtime;
							else if (back&~en) state = normal;
						end
					mmddset		:
							if (back&~en) state = mmdd;
					worldtime	:
						begin
							if (enter&~en) state = worldtimein;
							else if (menu&~en) state = serialsync;
							else if (back&~en) state = normal;
						end
					worldtimein	:
						if (back&~en) state = worldtime;
					serialsync	:
						begin
							if (enter&~en) state = serialset;
							else if (menu&~en) state = normal;
							else if (back&~en) state = normal;
						end
					serialset	:
						if (back&~en) state = serialsync;
					default : state = normal;
				endcase
			end
	end

always @(posedge clk)
	begin
		case (state)
			normal :  
				begin // 노말 상태에서는 date 변수를 통해 요일을 표시하고 날짜를 표시하며, 내이름 도정진 출력
					case (date)
						3'd0 : data <= {`M,`O,`N,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd1 : data <= {`T,`U,`E,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd2 : data <= {`W,`E,`D,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd3 : data <= {`T,`U,`S,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd4 : data <= {`F,`R,`I,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd5 : data <= {`S,`A,`T,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
						3'd6 : data <= {`S,`U,`N,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D,`space,`D,`J,`J};
					endcase
				end
			alarmmenu	:
				data <= {`A,`L,`A,`R,`M,`S,`E,`T,`space,`space,`E,`N,`T,`E,`R};
			alarmset		:
				data <= {`A,`L,`A,`R,`M,`T,`I,`M,`E,`space,4'b0011,inahour[7:4],4'b0011,inahour[3:0],`col,4'b0011,inamin[7:4],4'b0011,inamin[3:0]};
			stopwatch	:
				data <= {`S,`T,`O,`P,`W,`A,`T,`C,`H,`space,`E,`N,`T,`E,`R};
			stopwatchset	:
				data <= {`S,`W,`space,`space,`S,`T,`A,`R,`T,`space,`R,`E,`S,`E,`T};
			mmdd			:
				data <= {`M,`O,`N,`space,`D,`A,`Y,`space,`space,`space,`E,`N,`T,`E,`R};
			mmddset		: // 받은 BCD컨버팅 된 월일 데이터 출력
				data <= {`D,`A,`T,`E,`S,`E,`T,`space,4'b0011,inmm[7:4],4'b0011,inmm[3:0],`M,`space,4'b0011,indd[7:4],4'b0011,indd[3:0],`D};
			worldtime	:
				data <= {`W,`O,`L,`D,`T,`I,`M,`E,`space,`space,`E,`N,`T,`E,`R};
			worldtimein	:
				begin
					case (inworld) // 세계시간 셀렉트 비트에 따라 문자와 시간 출력
						3'd0	: data <= {`L,`O,`N,`D,`O,`N,`space,`space,`space,`space,4'b0011,bcd[7:4],4'b0011,bcd[3:0],`col,4'b0011,dmin[7:4],4'b0011,dmin[3:0]};
						3'd1	: data <= {`H,`O,`N,`G,`K,`O,`N,`G,`space,`space,4'b0011,bcd[7:4],4'b0011,bcd[3:0],`col,4'b0011,dmin[7:4],4'b0011,dmin[3:0]};
						3'd2	: data <= {`S,`Y,`D,`N,`E,`Y,`space,`space,`space,`space,4'b0011,bcd[7:4],4'b0011,bcd[3:0],`col,4'b0011,dmin[7:4],4'b0011,dmin[3:0]};
						3'd3	: data <= {`N,`E,`W,`Y,`O,`R,`K,`space,`space,`space,4'b0011,bcd[7:4],4'b0011,bcd[3:0],`col,4'b0011,dmin[7:4],4'b0011,dmin[3:0]};
					endcase
				end
			serialsync	:
				data <= {`S,`E,`R,`I,`A,`L,`space,`space,`space,`space,`E,`N,`T,`E,`R};
			serialset	:
				begin // 시리얼이 적용하는 ENTER 비트가 들어오면 serialen 이 1이되고 문자 출력상태가 바뀜
					if (serialen) data <= {`S,`U,`C,`C,`E,`S,`S,`space,`S,`E,`T,`space,`space,`space,`space};
					else data <= {`S,`Y,`N,`C,`space,rdata[7:0],rdata[15:8],`col,rdata[23:16],rdata[31:24],`col,rdata[39:32],rdata[47:40],`space,`space};
				end	
		endcase
	end

// 세계시간 모듈
always @(posedge clk)
	begin
		case (inworld)
			3'd0	: //LONDON
				begin
					if (hour < 6'd9)
						begin
							case (hour)
								6'd8	: whour = 6'd22;
								6'd7	: whour = 6'd21;
								6'd6	: whour = 6'd20;
								6'd5	: whour = 6'd19;
								6'd4	: whour = 6'd18;
								6'd3	: whour = 6'd17;
								6'd2	: whour = 6'd16;
								6'd1	: whour = 6'd15;
								6'd0	: whour = 6'd14;
							endcase
						end
					else whour = hour - 6'd9;			
				end
			3'd1	: // HONGKONG
				begin
					if (hour < 6'd1) whour = 6'd24;
					else whour = hour - 6'd1;			
				end
			3'd2	: //SYDNEY
				begin 
					if (hour > 6'd23) whour = 6'd0;
					else whour = hour + 6'd1;
				end
			3'd3	: // NEWYORK
				begin
					if (hour < 6'd14) 
						begin
							case (hour)
								6'd13	: whour = 6'd23;
								6'd12	: whour = 6'd22;
								6'd11	: whour = 6'd21;
								6'd10	: whour = 6'd20;
								6'd9	: whour = 6'd19;
								6'd8	: whour = 6'd18;
								6'd7	: whour = 6'd17;
								6'd6	: whour = 6'd16;
								6'd5	: whour = 6'd15;
								6'd4	: whour = 6'd14;
								6'd3	: whour = 6'd13;
								6'd2	: whour = 6'd12;
								6'd1	: whour = 6'd11;
								6'd0	: whour = 6'd10;
							endcase
						end
					else whour = hour - 6'd14;
				end
		endcase
	end
												

endmodule
