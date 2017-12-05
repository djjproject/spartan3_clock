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
input [15:0] data; // 4자리 BCD 코드를 받음
output [7:0] arraydata; // 한자리 출력
output reg [3:0] com; // COM 출력



integer cnt;

reg dot;
reg [3:0] num;

bcd_segment t1(num,dot,arraydata);
// 한자리 BCD를 FND에 맞게 변환하는 모듈

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
				else cnt = cnt + 1; // FND가 4개임으로 3에서 초기화 하고 나머지는 ++ 한다
		
				case (cnt)
					0 :
						begin
							num = data[15:12];
							dot = 1'b0;
							com = 4'b0111; // 첫번째 칸
						end
					1 :
						begin
							num = data[11:8];
							dot = 1'b1;
							com = 4'b1011; // 두번째 칸
						end
					2 :
						begin
							num = data[7:4];
							dot = 1'b0;
							com = 4'b1101; // 세번째 칸
						end
					3 :
						begin
							num = data[3:0];
							dot = 1'b1;
							com = 4'b1110; // 네번째 칸
						end
					default :
						begin
							num = 4'd0;
							dot = 1'b0;
							com = 4'b1111; // 좆도아님
						end
				endcase
	end
	
end




endmodule
