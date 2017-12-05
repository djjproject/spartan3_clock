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
output reg [2:0] inworld; // 세계시간 중 나라를 셀렉트 하는 비트

reg en;

always @(posedge clk) en = b1|b2|b3;
// 원샷 모듈

always @(posedge clk or negedge reset) 
	begin
		if(!reset)
			inworld = 4'd0;
		else if (state == 4'd8) // 세계시간 스테이트 인지 확인
			begin
				if (inworld == 3'd4) inworld = 3'd0; // 나라가 4개임으로 4가되면 0으로 초기화
				else if (b1&~en)
					inworld = inworld + 1;
				else 
					inworld = inworld;
			end
		else inworld = inworld;
	end



endmodule
