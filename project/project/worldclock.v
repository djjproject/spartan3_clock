`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:42 12/06/2014 
// Design Name: 
// Module Name:    worldclock 
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
module worldclock(clk,reset,state,b1,b2,b3,inworld);

input clk,reset,b1,b2,b3;
input [3:0] state;
output reg [2:0] inworld; // ����ð� �� ���� ����Ʈ �ϴ� ��Ʈ

reg en;

always @(posedge clk) en = b1|b2|b3;
// ���� ���

always @(posedge clk or negedge reset) 
	begin
		if(!reset)
			inworld = 4'd0;
		else if (state == 4'd8) // ����ð� ������Ʈ ���� Ȯ��
			begin
				if (inworld == 3'd4) inworld = 3'd0; // ���� 4�������� 4���Ǹ� 0���� �ʱ�ȭ
				else if (b1&~en)
					inworld = inworld + 1;
				else 
					inworld = inworld;
			end
		else inworld = inworld;
	end



endmodule
