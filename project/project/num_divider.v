`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:33 12/05/2014 
// Design Name: 
// Module Name:    num_divider 
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
module num_divider(NUM,SEP10,SEP1);

input [6:0] NUM;
output reg [3:0] SEP10,SEP1;

always @(NUM)
	 begin
	    if(NUM<10)
			begin
				SEP10 = 4'd0;
				SEP1 = NUM;
			end
		 else if(NUM < 20) // 20보다 크면 10자리는 1이고 1자리는 10을 배줌 (이하 동일)
			begin
				SEP10 = 4'd1;
				SEP1 = NUM - 10;
			end
		 else if(NUM < 30)
			begin
				SEP10 = 4'd2;
				SEP1 = NUM - 20;
			end
		 else if(NUM < 40)
			begin
				SEP10 = 4'd3;
				SEP1 = NUM - 30;
			end
		 else if(NUM < 50)
			begin
				SEP10 = 4'd4;
				SEP1 = NUM - 40;
			end
		 else if(NUM < 60)
			begin
				SEP10 = 4'd5;
				SEP1 = NUM - 50;
			end
		 else
			begin
				SEP10 = 4'd0;
				SEP1 = 4'd0;
			end
	 end


endmodule
