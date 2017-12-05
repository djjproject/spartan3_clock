`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:53:26 11/03/2014 
// Design Name: 
// Module Name:    piezo 
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
module piezo(clk,reset,piezo
    );
input clk,reset;
output reg piezo;

integer sound;

always @(negedge reset or posedge clk) begin
if(!reset) begin
	piezo=1'b0;
	sound=0;
	end
else begin
	if(sound>=1911) begin
		sound=0;
		piezo=~piezo;
	end
	else sound = sound + 1;
	end
end

endmodule
