`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:32:41 11/24/2014 
// Design Name: 
// Module Name:    lcdcontrol 
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
module lcdcontrol(reset,clk,clockdata,ampm,alarm,data,lcddata,lcdrs,lcdrw,lcde,poweron);

input clk,reset;
input alarm; // �˶� ���� ���� ����ġ ��ǲ
input [119:0] data; // LCD 2��° �� 15ĭ ������ 120��Ʈ
input [23:0] clockdata; // LCD 1��° �ð� ������
input [1:0] ampm; // AM���� PM���� ��ǲ�� ���� (�ϳ��� AMPM �� �� ���� ����ġ, �ϳ��� isam ��Ʈ)
input poweron; // �ʱ⿡ �� ��ư�� ������ LCD �� ������.
output reg [7:0] lcddata; // LCD �ƿ�ǲ
output reg lcdrs,lcdrw; // LCD �ƿ�ǲ
output lcde; // LCD Ŭ�� �ƿ�ǲ 

reg [3:0] state; // LCD�� ���� State ����
reg [3:0] hour1,hour2; // 24�ð� ���� 12�ð��� ǥ�÷� ��ȯ�ϱ� ���� �ӽ� ��Ʈ



// ���� ������Ʈ�� ���ϰ� �ۼ��ϱ� ���� �Ķ����
parameter	delay = 4'd0,
				functionset = 4'd1,
				entrymode = 4'd2,
				disponoff = 4'd3,
				line1 = 4'd4,
				line2 = 4'd5,
				delayt = 4'd6,
				cleardisp = 4'd7,
				wating=4'd10,
				dampmon = 4'd11,
				dampmoff = 4'd12;

integer cnt;
// ������Ʈ�� �Դٰ��� �ϱ� ���� ī��Ʈ ����


assign lcde = clk;
// Ŭ�� ����� 
// ������ ���ȿ��� LCD Ŭ���� 100hz ������ ������ 1Khz �� �൵ ������ ������. LCD�� ������ ������Ʈ�� ������ �Ǵ� ����� ����

// AMPM ����, BCD �ڵ�δ� 18�� 20�� ���� ������ ���ܼ� if ������ �и�
always @(posedge clk)
	begin
		if (ampm == 2'b10 | ampm == 2'b11)
			begin
				if (clockdata[23:20] >= 4'b0001 && clockdata[19:16] >= 4'b0011)
					begin
						hour1 = clockdata[23:20] - 4'b0001;
						hour2 = clockdata[19:16] - 4'b0010;
					end
				else if (clockdata[23:20] >= 4'b0010)
					begin
						if (clockdata[19:16] == 4'b0000) 
							begin
								hour2 = 4'b1000;
								hour1 = clockdata[23:20] - 4'b0010;
							end
						else if (clockdata[19:16] == 4'b0001) 
							begin
								hour2 = 4'b1001;
								hour1 = clockdata[23:20] - 4'b0010;
							end
						else if (clockdata[19:16] == 4'b0010)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0000;
							end
						else if (clockdata[19:16] == 4'b0011)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0001;
							end
						else if (clockdata[19:16] == 4'b0100)
							begin
								hour1 = 4'b0001;
								hour2 = 4'b0010;
							end
					end
				else 
					begin
						hour1 = clockdata[23:20];
						hour2 = clockdata[19:16];
					end
			end
		else 
			begin
				hour1 = clockdata[23:20];
				hour2 = clockdata[19:16];
			end
	end

		


// State ��ȯ ����				
always @(negedge reset or posedge clk)
begin
	if (!reset) state = delay;
	else 
		begin
			case (state)
				delay 		: if (cnt == 70 && poweron == 1'b1) state = functionset; // �Ŀ� �� ����
				functionset : if (cnt == 30) state = disponoff;
				disponoff 	: if (cnt == 30) state = entrymode;
				entrymode 	: if (cnt == 20) state = line1;
				line1			: if (cnt == 20) state = line2;
				line2 		: if (cnt == 20) state = line1;
				default 		: state = delay;
			endcase
		end
end


always @ (negedge reset or posedge clk)
begin
	if (!reset) cnt = 0;
	else
		begin
			case (state)
				delay 		: if (cnt >= 70) cnt = 0; else cnt = cnt + 1;
				functionset : if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				disponoff 	: if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				entrymode	: if (cnt >= 30) cnt = 0; else cnt = cnt + 1;
				line1			: if (cnt >= 20) cnt = 0; else cnt = cnt + 1;
				line2			: if (cnt >= 20) cnt = 0; else cnt = cnt + 1;
				default		: cnt = 0;
			endcase
		end
end

always @ (negedge reset or posedge clk)
begin
	if (!reset) 
		begin
			lcdrs = 1'b1;
			lcdrw = 1'b1;
			lcddata = 8'b00000000;
		end
	else
		begin
			case (state)
				functionset :
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00111100;
					end
				disponoff 	:
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00001100;
					end
				entrymode	:
					begin
						lcdrs = 1'b0;
						lcdrw = 1'b0;
						lcddata = 8'b00000110;
					end
				line1			:
					begin
						lcdrw = 1'b0;
						
						case (cnt)
							0  : 
								begin
									lcdrs = 1'b0;
									lcddata = 8'b10000000; // ���۹���
								end
							1  : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20; // ����
								end
							2  :
								begin
									lcdrs = 1'b1;
									if (alarm) lcddata = 8'h41; // �˶��� Ȱ��ȭ �Ǿ��� ��� A ��� ǥ����
									else lcddata = 8'h20; 
								end
							3  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							4  :
								begin
									lcdrs = 1'b1;
									if 		(ampm == 2'b11) lcddata = 8'h41;
									else if 	(ampm == 2'b10) lcddata = 8'h50;
									else 		lcddata = 8'h20; // AMPM �� ǥ����
								end
							5  :
								begin
									lcdrs = 1'b1;
									if			(ampm == 2'b10 | ampm == 2'b11) lcddata = 8'h4D;
									else		lcddata = 8'h20; // AMPM �� ǥ����
								end
							6  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							7  :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,hour1}; // 24�ð� ��ȯ Ȥ�� 12�ð����� ��ȯ�� �ð��� ���
								end
							8  : 
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,hour2}; // ���� ����
								end
							9  :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h3A;
								end
							10	:
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[15:12]}; // �� ǥ��
								end
							11 :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[11:8]};
								end
							12 :
								begin
									lcdrs = 1'b1;
									lcddata = 8'h3A;
								end
							13 : 
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[7:4]}; // �� ǥ��
								end
							14 :
								begin
									lcdrs = 1'b1;
									lcddata = {4'b0011,clockdata[3:0]};
								end
							default : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'b00100000;
								end
						endcase
					end
				line2			:
					begin
						lcdrw = 1'b0;
						
						case (cnt) 
							0 	:
								begin
									lcdrs = 1'b0; // ���۹��� �ι�° ùĭ ����
									lcddata = 8'b11000000;
								end
							1	:
								begin
									lcdrs = 1'b1;
									lcddata = 8'h20;
								end
							2	:
								begin
									lcdrs = 1'b1;
									lcddata = data[119:112]; // �Էµ� 120��Ʈ ������ ���� ���
								end
							3 	:
								begin
									lcdrs = 1'b1;
									lcddata = data[111:104];
								end
							4	:
								begin
									lcdrs = 1'b1;
									lcddata = data[103:96];
								end
							5	:
								begin
									lcdrs = 1'b1;
									lcddata = data[95:88];
								end
							6	:
								begin
									lcdrs = 1'b1;
									lcddata = data[87:80];
								end
							7	:
								begin
									lcdrs = 1'b1;
									lcddata = data[79:72];
								end
							8	:
								begin
									lcdrs = 1'b1;
									lcddata = data[71:64];
								end
							9	:
								begin
									lcdrs = 1'b1;
									lcddata = data[63:56];
								end
							10	:
								begin
									lcdrs = 1'b1;
									lcddata = data[55:48];
								end
							11	:
								begin
									lcdrs = 1'b1;
									lcddata = data[47:40];
								end
							12 :
								begin
									lcdrs = 1'b1;
									lcddata = data[39:32];
								end
							13 :
								begin
									lcdrs = 1'b1;
									lcddata = data[31:24];
								end
							14 :
								begin
									lcdrs = 1'b1;
									lcddata = data[23:16];
								end
							15	:
								begin
									lcdrs = 1'b1;
									lcddata = data[15:8];
								end
							16 :
								begin
									lcdrs = 1'b1;
									lcddata = data[7:0];
								end
							default : 
								begin
									lcdrs = 1'b1;
									lcddata = 8'b00100000;
								end
						endcase
					end
			endcase
		end
end
		
endmodule
