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
input b1,b2,b3; // �پ��� ����� ���� ��ư 3�� �Է�
input [3:0] state1; // �޴� ��⿡�� �޴� ������Ʈ ��
output [3:0] com; // 4 FND �� COM ��Ʈ 
output [7:0] arraydata; // 4 FND �� �Ѱ� ��°� 
output [3:0] mms; // �и� ������ ��

reg[5:0] min,sec; 
reg[3:0] mms;
reg en;
reg[3:0] state;

wire[3:0]min10,min1,sec10,sec1;

integer cnt;

parameter 	stop = 4'd0,
				startcount = 4'd1,
				resetcount = 4'd2;
// ������Ʈ�� ������

// BCD ������ ������1 ����� ����ؼ� 10�ڸ��� 1�ڸ��� ������
num_divider s1(min,min10,min1);
num_divider s2(sec,sec10,sec1); 
dynamic_segment s3(clk,reset,{min10,min1,sec10,sec1},com,arraydata);
// �ð����� ���̳��� ��ũ��Ʈ ��⿡ ����
 
always @(posedge clk) en = b1|b2|b3;
// ���� ���

always @(posedge clk or negedge reset)
	begin
		if(!reset) state = stop; // �⺻������ stop ������Ʈ
		else if (state1 == 4'd4)
			begin
				case (state)
					stop :
						if(b1&~en) state = startcount; // b1 ��ư�� ������ ī��Ʈ ����
						else if (b2&~en) state = resetcount; // b2 ��ư�� ������ ī��Ʈ ����
					startcount :
						if(b1&~en) state = stop;
						else if (b2&~en) state = resetcount;
					resetcount :
						if(b1&~en) state = startcount;
					default : 
						state = stop; // �⺻������ stop ������Ʈ
				endcase
			end
		else state = state;
	end
	
// Ÿ�̸� ���� ���� ����					
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
// cnt ������ ������� �и���ũ ����						
		

endmodule
