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
input b1,b2,b3; // 알람설정 버튼 3개 (여러가지 기능)
input [5:0] hour,min; // 현재시각을 받음
input [3:0] state; // 알람 설정모드인지 체크용 4비트
output reg [5:0] ahour,amin; // 현재 설정된 알람값을 출력
output reg piezo; // piezo 를 사용하게하는 출력

reg en;

initial begin
	ahour = 5'd7;
	amin = 5'd0;
end
// 기본적으로 7시로 설정



always @(posedge clk) en = b1|b2|b3;
// 원샷 블럭

always @(posedge clk or negedge reset)
	begin
		if(!reset) 
			begin
				ahour = 6'd7;
				amin = 6'd0;
			end
		else if (state == 4'd2) // 알람설정 모드일때
			begin
				if (ahour == 6'd24) ahour = 0; // 24시간이면 0으로 초기화
				else if (amin == 6'd60) amin = 0; // 60분이면 0으로 초기화
				else if (b1&~en) ahour = ahour + 1; // 버튼에 대해서 대응
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
				if ((hour == ahour) && (min == amin)) piezo = 1; // 현재시각과 설정된 시각값이 같으면 피에조 1 아웃
				else piezo = 0;
			end
		else piezo = 1'b0;
	end
				

endmodule
