`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:03 12/01/2014 
// Design Name: 
// Module Name:    day_counter 
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
module day_counter(clk,reset,day,date,oneday);

input clk,reset,day; // day �� �ø��� ��ư�� �Է��� ����
output reg [2:0] date;
input oneday; // �Ϸ簡 �Ѿ�� Ÿ�̸� ��⿡�� 1�� �Ѿ��

reg en;


integer count;

always @(posedge clk) en = day|oneday;
// oneday �� ���ؼ� ���� ����	

always @(posedge clk or negedge reset)
	begin
		if(!reset) count=0;
		else if (count == 7) count = 0;
		else if (day&~en) count = count + 1; // day�� ������ ī��Ʈ ���� �ö�
		else if (oneday&~en) count = count + 1; // �Ϸ簡 �Ѿ ��Ʈ�� �Ѿ���� �Ϸ縦 �ѱ�
		else count = count;
	end

// �Ѿ ī��Ʈ ���� ���ؼ� ��¥ ���� ����Ʈ ��Ʈ�� �����ϴ� �κ�
always @(posedge clk)
	begin
		case(count)
			0	: date = 3'd0;
			1	: date = 3'd1;
			2	: date = 3'd2;
			3	: date = 3'd3;
			4	: date = 3'd4;
			5	: date = 3'd5;
			6	: date = 3'd6;
		endcase
	end

endmodule
