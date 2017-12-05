`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:36 12/07/2014 
// Design Name: 
// Module Name:    bcd_binary_converter 
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
module bcd_binary_converter(clk,reset,inbcd,binary);
// BCD�� ���̳ʸ��� �ٲٴ� ���
input clk,reset;
input [7:0] inbcd;
output reg [5:0] binary;

always @(posedge clk or negedge reset)
	if(!reset) binary = 0;
	else
		binary = inbcd[7:4] * 4'd10 + inbcd[3:0]; // ���ڸ��� X10 �� �ϰ� ���ڸ��� �׳� ���ؼ� 6��Ʈ�� �����.



endmodule
