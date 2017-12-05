`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:32 11/10/2014 
// Design Name: 
// Module Name:    clk_divisor 
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
module clk_divisor(clk_in, reset, clk_out);

	input							clk_in;
	input							reset;
	output						clk_out;
	
	reg			[5 : 0]		cnt;
	reg							clk_out;
	
	always @(posedge clk_in)
		begin
			if(~reset)
				begin
					cnt		<= 6'd0;
					clk_out	<= 1'b0;
				end
				
			else
				begin
					if(cnt == 6'd49)
						begin
							cnt		<= 3'd0;
							clk_out	<= ~clk_out;
						end
						
					else
						cnt	<= cnt + 1'b1;
				end
		end

endmodule
