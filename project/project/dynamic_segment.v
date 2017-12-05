`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:35 12/05/2014 
// Design Name: 
// Module Name:    dynamic_segment 
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
module dynamic_segment(clk,reset,data,com,arraydata);

input reset,clk;
input [15:0] data; // 4�ڸ� BCD �ڵ带 ����
output [7:0] arraydata; // ���ڸ� ���
output reg [3:0] com; // COM ���



integer cnt;

reg dot;
reg [3:0] num;

bcd_segment t1(num,dot,arraydata);
// ���ڸ� BCD�� FND�� �°� ��ȯ�ϴ� ���

always @(negedge reset or posedge clk)
	begin
		if(!reset)
			begin
				dot = 1'b0;
				com = 4'b0000;
				num = 4'd0;
				cnt = 0;
			end
		else
			begin
				if(cnt == 3) cnt = 0;
				else cnt = cnt + 1; // FND�� 4�������� 3���� �ʱ�ȭ �ϰ� �������� ++ �Ѵ�
		
				case (cnt)
					0 :
						begin
							num = data[15:12];
							dot = 1'b0;
							com = 4'b0111; // ù��° ĭ
						end
					1 :
						begin
							num = data[11:8];
							dot = 1'b1;
							com = 4'b1011; // �ι�° ĭ
						end
					2 :
						begin
							num = data[7:4];
							dot = 1'b0;
							com = 4'b1101; // ����° ĭ
						end
					3 :
						begin
							num = data[3:0];
							dot = 1'b1;
							com = 4'b1110; // �׹�° ĭ
						end
					default :
						begin
							num = 4'd0;
							dot = 1'b0;
							com = 4'b1111; // �����ƴ�
						end
				endcase
	end
	
end




endmodule
