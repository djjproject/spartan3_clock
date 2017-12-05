`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:02:00 11/24/2014 
// Design Name: 
// Module Name:    clockmain 
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
module clockmain(clk,clk1mhz,reset,bhour,bmin,bsec,day,ampmon,stop,b1,b2,b3,alarmon,menu,enter,back,
lcdrs,lcdrw,lcde,lcddata,com,dataa,dataone,piezoout,poweron,led,rxd,txd);

input clk,clk1mhz,reset; // 클럭 1K, 클럭 1m, 리셋
input bhour,bmin,bsec,day; // 시간과 분, 초, 요일을 선택하는 버튼
input b1,b2,b3; // 메뉴에서의 기능 버튼
input alarmon,menu,enter,back,ampmon,stop; //알람, 메뉴, 엔터, 백, AMPM 표시, 시간 멈춤
input poweron; // LCD를 켜는 버튼
input rxd; // 시리얼 통신 받는 핀
output txd; // 시리얼 통신 보내는 핀
output lcdrs,lcdrw,lcde; // LCD
output [7:0] lcddata; // LCD
output [3:0] com; // Array Segment
output [7:0] dataa; // Array Segment
output [7:0] dataone; // 7segment
output piezoout; // 피에조
output [15:0] led; // LED 16비트


// 모듈간 데이터 전송 wire

wire oneday; // 하루가 지나는 비트
wire isam; // AM 인지 나타내는 비트
wire [119:0]data; // LCD 하단 15칸 데이터 120비트
wire [7:0]dhour,dmin,dsec; // 8비트의 시간 데이터
wire [5:0]hour,min,sec; // 6비트의 시간 데이터
wire [2:0]date; // 날
wire [3:0]state; // menu 모듈의 현재 메뉴 상태를 주고 받는 4비트 데이터

wire [7:0] inmm,indd,inahour,inamin;  // 달과 일짜 (4비트 + 4비트 BCD) ,알람 8비트 (4비트 + 4비트 BCD)
wire [5:0] mm,dd; // 6비트 달과 일짜
wire [5:0] ahour,amin; // 6비트 알람 시간과 분
wire piezo; // 피에조를 사용하기위한 비트
wire [2:0] inworld; // 3비트의 세계시간 셀렉트 비트
wire [3:0] mms; // 스탑와치의 ms 카운터
wire [47:0] rdata; // 시리얼 통신으로 받은 1글자 데이터
wire serialen; // 시리얼 시간 맞추기 적용 데이터
wire [5:0] shour,smin,ssec; // 시리얼로 받은 시간을 6비트로 변환한 데이터

timer p1(clk,reset,hour,min,sec,bhour,bmin,bsec,stop,oneday,shour,smin,ssec,serialen);  // 시간을 카운트 하는 모듈
// 6비트의 현재 시각 출력과, 3개의 시간 설정 버튼입력, 시간을 멈추는 버튼, 하루가 넘어가는 아웃풋 비트

lcdcontrol p2(reset,clk,{dhour,dmin,dsec},{ampmon,isam},alarmon,data,lcddata,lcdrs,lcdrw,lcde,poweron); // LCD 컨트롤 모듈 (윗줄은 시계데이터, 아랫줄은 120비트 데이터)
// BCD 컨버팅이 된 각 2자리 8비트 데이터를 3개, ampm 버튼, am 인지 나타내는 데이터, 알람 비트, 120비트의 2번째 줄 데이터, 아웃풋으로 lcd관련 출력, 파워 온 버튼 비트

bcd_converter p3(dhour,hour,clk); // 6비트 시간을 4비트 + 4비트 2자리 BCD 코드로 변환
bcd_converter p4(dmin,min,clk); // 6비트 분을 4비트 + 4비트 2자리 BCD 코드로 전환
bcd_converter p5(dsec,sec,clk); // 6비트 초를 4비트 + 4비트 2자리 BCD 코드로 전환

menu p6(clk,reset,menu,back,enter,data,date,state,indd,inmm,inahour,inamin,inworld,hour,dmin,rdata,serialen); // LCD 두번째 모듈을 전체적으로 담당하는 모듈
// 3개의 버튼을 받고 LCD의 120비트 출력, 날짜를 위해 3비트 셀렉트 비트, 그리고 달과 일자 입력 비트, 알람 시간 입력비트, 세계시간 입력 비트, 시리얼 데이터 입력 비트

ampm_module p7(clk,reset,hour,isam); // AM PM 을 결정하는 모듈

day_counter p8(clk,reset,day,date,oneday); // 7일을 카운트 하는 모듈

piezo p9(clk1mhz,reset,piezo,piezoout,led); // 알람음과 피에조를 컨트롤

mon_day_counter p10(clk,reset,oneday,b1,b2,b3,state,mm,dd); // 월과 요일을 카운트하는 모듈

bcd_converter p11(inmm,mm,clk); // 월을 BCD 컨버팅
bcd_converter p12(indd,dd,clk); // 일을 BCD 컨버팅

alarm p13(clk,reset,alarmon,hour,min,b1,b2,b3,state,ahour,amin,piezo); // 알람 모듈

bcd_converter p14(inahour,ahour,clk); // 알람 시계의 값을 BCD로 컨버팅
bcd_converter p15(inamin,amin,clk); // 알림 시계의 값을 BCD로 컨버팅

stopwatch p16(clk,reset,b1,b2,b3,state,com,dataa,mms); // 스탑와치 모듈

bcd_one_segment p17(mms,dot,dataone); // 스탑와치의 밀리세크에 대해서 7-Segment 동작 모듈

worldclock p18(clk,reset,state,b1,b2,b3,inworld); // 세계시간 모듈
uart_module p19(clk1mhz,reset,rxd,rdata,state,serialen); // 시리얼 통신 Receive 모듈
// uart_module_tx p23(clk1mhz,reset,txd,state);  TX 모듈 구현 실패.

// BCD 코드를 6비트의 바이너리 코드로 변환함.
bcd_binary_converter p20(clk,reset,{rdata[3:0],rdata[11:8]},shour); // 시리얼 입력 데이터 시간
bcd_binary_converter p21(clk,reset,{rdata[19:16],rdata[27:24]},smin); // 시리얼 입력 데이터 분 
bcd_binary_converter p22(clk,reset,{rdata[35:32],rdata[43:40]},ssec); // 시리얼 입력 데이터 초

endmodule
