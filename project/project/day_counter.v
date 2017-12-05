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

input clk,reset,day; // day 를 올리는 버튼을 입력을 받음
output reg [2:0] date;
input oneday; // 하루가 넘어가면 타이머 모듈에서 1이 넘어옴

reg en;


integer count;

always @(posedge clk) en = day|oneday;
// oneday 에 대해서 원샷 적용	

always @(posedge clk or negedge reset)
	begin
		if(!reset) count=0;
		else if (count == 7) count = 0;
		else if (day&~en) count = count + 1; // day를 누르면 카운트 값이 올라감
		else if (oneday&~en) count = count + 1; // 하루가 넘어간 비트가 넘어오면 하루를 넘김
		else count = count;
	end

// 넘어간 카운트 값에 대해서 날짜 정보 셀렉트 비트를 결정하는 부분
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
