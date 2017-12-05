`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:37 11/10/2014 
// Design Name: 
// Module Name:    counter_bcd_updown 
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
module counter_bcd_updown(clk, reset, up, down, out);

	input							clk;
	input							reset;
	input							up;
	input							down;
	output		[7 : 0]		out;
	
	reg			[7 : 0]		state;
	reg			[7 : 0]		next_state;
	reg							up_reg;
	reg							down_reg;
	reg							up_trig;
	reg							down_trig;
	
	always @(posedge clk)
		begin
			if(~reset)
				begin
					up_reg		<= 1'b0;
					down_reg		<= 1'b0;
					up_trig		<= 1'b0;
					down_trig	<= 1'b0;
				end
				
			else
				begin
					up_reg		<= up;
					down_reg		<= down;
					up_trig		<= up & (~up_reg);
					down_trig	<= down & (~down_reg);
				end
		end
	
	always @(posedge clk)
		begin
			if(~reset)
				state	<= 8'h00;
				
			else
				state	<= next_state;
		end
		
		
		
	always @(*)
		begin
			if(up_trig)
				begin
					if(state[3 : 0] == 4'h9)
						begin
							if(state[7 : 4] == 4'h9)
								next_state	<= 8'h00;
								
							else
								next_state	<= {state[7 : 4] + 1'b1, 4'h0};
						end
						
					else
						next_state	<= state + 1'b1;
				end
				
			else if(down_trig)
				begin
					if(state[3 : 0] == 4'h0)
						begin
							if(state[7 : 4] == 4'h0)
								next_state	<= 8'h99;
								
							else
								next_state	<= {state[7 : 4] - 1'b1, 4'h9};
						end
						
					else
						next_state	<= state - 1'b1;
				end
				
			else
				next_state	<= state;
		end

	assign out = state;

endmodule
