`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:29:17 11/24/2014 
// Design Name: 
// Module Name:    alarm 
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
module alarm(clk,reset,alarmon,hour,min,b1,b2,b3,state,ahour,amin,piezo);

input clk,reset,alarmon;
input b1,b2,b3; // �˶����� ��ư 3�� (�������� ���)
input [5:0] hour,min; // ����ð��� ����
input [3:0] state; // �˶� ����������� üũ�� 4��Ʈ
output reg [5:0] ahour,amin; // ���� ������ �˶����� ���
output reg piezo; // piezo �� ����ϰ��ϴ� ���

reg en;

initial begin
	ahour = 5'd7;
	amin = 5'd0;
end
// �⺻������ 7�÷� ����



always @(posedge clk) en = b1|b2|b3;
// ���� ��

always @(posedge clk or negedge reset)
	begin
		if(!reset) 
			begin
				ahour = 6'd7;
				amin = 6'd0;
			end
		else if (state == 4'd2) // �˶����� ����϶�
			begin
				if (ahour == 6'd24) ahour = 0; // 24�ð��̸� 0���� �ʱ�ȭ
				else if (amin == 6'd60) amin = 0; // 60���̸� 0���� �ʱ�ȭ
				else if (b1&~en) ahour = ahour + 1; // ��ư�� ���ؼ� ����
				else if (b2&~en) amin = amin + 1;
			end
		else 
			begin
				ahour = ahour;
				amin = amin;
			end
	end
	
always @(posedge clk)
	begin
		if (alarmon)
			begin
				if ((hour == ahour) && (min == amin)) piezo = 1; // ����ð��� ������ �ð����� ������ �ǿ��� 1 �ƿ�
				else piezo = 0;
			end
		else piezo = 1'b0;
	end
				

endmodule
