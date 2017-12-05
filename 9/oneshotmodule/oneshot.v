`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:09:15 10/27/2014 
// Design Name: 
// Module Name:    oneshot 
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
module one_shot(CLK_EN,pulse,CLK);

input   CLK;
input   pulse;
output reg CLK_EN;

reg cnt, temp;
initial begin
 cnt = 0;
 temp = 0;
end

always @(posedge CLK)
begin
 if(pulse && !cnt)
 begin
  cnt = ~cnt;
  temp = 1;
 end
 else if(!pulse)
 begin
  cnt = 0;
 end
 else
  temp = 0;
 assign CLK_EN = temp;
end
endmodule