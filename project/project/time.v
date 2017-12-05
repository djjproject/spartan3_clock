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
input stop; // ��ž ��ư
input bhour,bmin,bsec; // �ð� �� �� �� �ø��� ��ư
input [5:0] shour,smin,ssec; // �ø��� ��ǲ
input serialen; // �ø��� ���� ��ǲ
output reg [5:0] hour,min,sec; // �ð���� 6��Ʈ
output reg oneday; // �Ϸ簡 �Ѿ�� �ƿ�ǲ
reg button; // ������ ���� ���� ����
integer cnt; // 1�ʸ� ���� ī��Ʈ ����
reg state; // ��ư�� ������ ī��Ʈ�� �ǰ� ���߰� �����ϴ� ������Ʈ ����

parameter 	startcount = 1'b0,
				stopcount = 1'b1;
// ������Ʈ �Ķ����


always @(posedge clk) 
	begin
		button = bhour|bsec|bmin|stop;
	end
// ���� ����
	

always @(posedge clk or negedge reset)
	begin
		if (!reset) state = startcount;
		else if (stop&~button) state = state + 1;
		else state = state;
	end
// ��ư�� ������ ������Ʈ�� 2������ �Դٰ��� �ϰ� ������


always @(negedge reset or posedge clk)
	begin
		if(!reset) // �ʱⰪ ���� ����
			begin
				cnt = 0;
				sec = 6'd0;
				hour = 6'd0;
				min = 6'd0;
			end
		else
			begin
				if(cnt==999) // Ŭ���� 1Khz ������ 999���� ���� 1���̴�.
					begin
						cnt = 0;
						if(sec == 6'd59) // �ʰ� 59�� �Ǹ�
							begin
								sec = 6'd0; // 0���� �ʱ�ȭ �ϰ�
								if(min == 6'd59) // ���� 59���̸�
									begin
										min = 6'd0; // 0���� �ʱ�ȭ �ϰ�
										if(hour == 6'd23) // �ð��� 23���̸�
											begin
												hour = 6'd0; // �ð��� 0�÷� �ʱ�ȭ
												oneday = 1'b1; // �Ϸ簡 �Ѿ�� ����
											end
										else 
											begin
												hour = hour + 1; // �׳��� �ð��� �Ѿ��. 
												oneday = 1'b0; // �Ϲ����� ��� �Ϸ� �ƿ�ǲ�� 0���� ����
											end
									end
								else min = min + 1; // �Ϲ����� ��� ���� �ö�
							end
						else sec = sec + 1; // �Ϲ����� ��� �ʴ� �ö�
					end
				else if (bhour & ~button)  // �ð� �ø��� ��ư�� ������
					begin
						if(hour == 6'd23) hour = 6'd0; // 23���ϋ� 0���� �ʱ�ȭ �ϰ�
						else hour = hour + 1; // �ƴҶ��� �ð��� 1�� �ø���.
					end
				else if (bmin & ~button) // �� ��ư�� ������
					begin
						if(min == 6'd59) min = 6'd0; // 59���϶� ���� 0���� �ʱ�ȭ �ϰ�
						else min = min + 1; // �ƴҰ�� ���� 1�� �ø�
					end
				else if (bsec & ~button) // �ʹ�ư�� ������
					begin
						if(sec == 6'd59) sec = 6'd0; // 59�� ���� ���� 0���� �ʱ�ȭ
						else sec = sec + 1; // �ƴҰ�� 1�� �ø�
					end
				else if (serialen) // �ø��� ���� ������ 1�� �Ǹ�
					begin
						hour = shour; // ���� ���� �ø��� �����ͷ� �� �ð� ���� �ʱ�ȭ��
						min = smin;
						sec = ssec;
					end
				else 
					begin
						if (state == stopcount) // ������Ʈ�� stopcount �ϋ�
							cnt = cnt;  // cnt �� ����
						else cnt = cnt + 1; // �ƴҰ�� +1 �� ��
					end
			end
	end

endmodule
