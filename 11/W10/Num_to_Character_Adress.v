`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:44 11/09/2014 
// Design Name: 
// Module Name:    LCD_characte_adress 
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
module Num_to_Adress(
    output [7:0] adress,
    input [4:0] num
    );
	
	assign adress={0011, num};

endmodule
