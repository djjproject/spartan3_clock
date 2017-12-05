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

input clk,clk1mhz,reset; // Ŭ�� 1K, Ŭ�� 1m, ����
input bhour,bmin,bsec,day; // �ð��� ��, ��, ������ �����ϴ� ��ư
input b1,b2,b3; // �޴������� ��� ��ư
input alarmon,menu,enter,back,ampmon,stop; //�˶�, �޴�, ����, ��, AMPM ǥ��, �ð� ����
input poweron; // LCD�� �Ѵ� ��ư
input rxd; // �ø��� ��� �޴� ��
output txd; // �ø��� ��� ������ ��
output lcdrs,lcdrw,lcde; // LCD
output [7:0] lcddata; // LCD
output [3:0] com; // Array Segment
output [7:0] dataa; // Array Segment
output [7:0] dataone; // 7segment
output piezoout; // �ǿ���
output [15:0] led; // LED 16��Ʈ


// ��Ⱓ ������ ���� wire

wire oneday; // �Ϸ簡 ������ ��Ʈ
wire isam; // AM ���� ��Ÿ���� ��Ʈ
wire [119:0]data; // LCD �ϴ� 15ĭ ������ 120��Ʈ
wire [7:0]dhour,dmin,dsec; // 8��Ʈ�� �ð� ������
wire [5:0]hour,min,sec; // 6��Ʈ�� �ð� ������
wire [2:0]date; // ��
wire [3:0]state; // menu ����� ���� �޴� ���¸� �ְ� �޴� 4��Ʈ ������

wire [7:0] inmm,indd,inahour,inamin;  // �ް� ��¥ (4��Ʈ + 4��Ʈ BCD) ,�˶� 8��Ʈ (4��Ʈ + 4��Ʈ BCD)
wire [5:0] mm,dd; // 6��Ʈ �ް� ��¥
wire [5:0] ahour,amin; // 6��Ʈ �˶� �ð��� ��
wire piezo; // �ǿ����� ����ϱ����� ��Ʈ
wire [2:0] inworld; // 3��Ʈ�� ����ð� ����Ʈ ��Ʈ
wire [3:0] mms; // ��ž��ġ�� ms ī����
wire [47:0] rdata; // �ø��� ������� ���� 1���� ������
wire serialen; // �ø��� �ð� ���߱� ���� ������
wire [5:0] shour,smin,ssec; // �ø���� ���� �ð��� 6��Ʈ�� ��ȯ�� ������

timer p1(clk,reset,hour,min,sec,bhour,bmin,bsec,stop,oneday,shour,smin,ssec,serialen);  // �ð��� ī��Ʈ �ϴ� ���
// 6��Ʈ�� ���� �ð� ��°�, 3���� �ð� ���� ��ư�Է�, �ð��� ���ߴ� ��ư, �Ϸ簡 �Ѿ�� �ƿ�ǲ ��Ʈ

lcdcontrol p2(reset,clk,{dhour,dmin,dsec},{ampmon,isam},alarmon,data,lcddata,lcdrs,lcdrw,lcde,poweron); // LCD ��Ʈ�� ��� (������ �ð赥����, �Ʒ����� 120��Ʈ ������)
// BCD �������� �� �� 2�ڸ� 8��Ʈ �����͸� 3��, ampm ��ư, am ���� ��Ÿ���� ������, �˶� ��Ʈ, 120��Ʈ�� 2��° �� ������, �ƿ�ǲ���� lcd���� ���, �Ŀ� �� ��ư ��Ʈ

bcd_converter p3(dhour,hour,clk); // 6��Ʈ �ð��� 4��Ʈ + 4��Ʈ 2�ڸ� BCD �ڵ�� ��ȯ
bcd_converter p4(dmin,min,clk); // 6��Ʈ ���� 4��Ʈ + 4��Ʈ 2�ڸ� BCD �ڵ�� ��ȯ
bcd_converter p5(dsec,sec,clk); // 6��Ʈ �ʸ� 4��Ʈ + 4��Ʈ 2�ڸ� BCD �ڵ�� ��ȯ

menu p6(clk,reset,menu,back,enter,data,date,state,indd,inmm,inahour,inamin,inworld,hour,dmin,rdata,serialen); // LCD �ι�° ����� ��ü������ ����ϴ� ���
// 3���� ��ư�� �ް� LCD�� 120��Ʈ ���, ��¥�� ���� 3��Ʈ ����Ʈ ��Ʈ, �׸��� �ް� ���� �Է� ��Ʈ, �˶� �ð� �Էº�Ʈ, ����ð� �Է� ��Ʈ, �ø��� ������ �Է� ��Ʈ

ampm_module p7(clk,reset,hour,isam); // AM PM �� �����ϴ� ���

day_counter p8(clk,reset,day,date,oneday); // 7���� ī��Ʈ �ϴ� ���

piezo p9(clk1mhz,reset,piezo,piezoout,led); // �˶����� �ǿ����� ��Ʈ��

mon_day_counter p10(clk,reset,oneday,b1,b2,b3,state,mm,dd); // ���� ������ ī��Ʈ�ϴ� ���

bcd_converter p11(inmm,mm,clk); // ���� BCD ������
bcd_converter p12(indd,dd,clk); // ���� BCD ������

alarm p13(clk,reset,alarmon,hour,min,b1,b2,b3,state,ahour,amin,piezo); // �˶� ���

bcd_converter p14(inahour,ahour,clk); // �˶� �ð��� ���� BCD�� ������
bcd_converter p15(inamin,amin,clk); // �˸� �ð��� ���� BCD�� ������

stopwatch p16(clk,reset,b1,b2,b3,state,com,dataa,mms); // ��ž��ġ ���

bcd_one_segment p17(mms,dot,dataone); // ��ž��ġ�� �и���ũ�� ���ؼ� 7-Segment ���� ���

worldclock p18(clk,reset,state,b1,b2,b3,inworld); // ����ð� ���
uart_module p19(clk1mhz,reset,rxd,rdata,state,serialen); // �ø��� ��� Receive ���
// uart_module_tx p23(clk1mhz,reset,txd,state);  TX ��� ���� ����.

// BCD �ڵ带 6��Ʈ�� ���̳ʸ� �ڵ�� ��ȯ��.
bcd_binary_converter p20(clk,reset,{rdata[3:0],rdata[11:8]},shour); // �ø��� �Է� ������ �ð�
bcd_binary_converter p21(clk,reset,{rdata[19:16],rdata[27:24]},smin); // �ø��� �Է� ������ �� 
bcd_binary_converter p22(clk,reset,{rdata[35:32],rdata[43:40]},ssec); // �ø��� �Է� ������ ��

endmodule
