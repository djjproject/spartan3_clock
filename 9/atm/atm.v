`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:22:47 10/27/2014 
// Design Name: 
// Module Name:    atm 
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

	 
module atm(
N, D, item1, item2, push, Q,clk);
	 
	 input N, D, item1, item2, push, clk;
    output reg[3:0] Q;
    reg [1:0] state;
    parameter s0=2'b00, s5=2'b01, s10=2'b10, s15=2'b11;
  
	 
    always @(posedge clk)
    begin
      case(state)
       s0 : begin
            if(N) state <= s5;
            else if(D) state <= s10;
				else if(push) state<=s0;
				else state<=state;
            end
       s5 : begin
            if(N) state <= s10;
            else if(D) state <= s15;
				else if(push) state<=s0;
				else state<=state;
            end
       s10 : begin
             if(N) state <= s15;
             else if(item2) state <= s0;
				 else if(push) state<=s0;
				 else state<=state;
             end
       s15 : begin
             if(item1) state <= s0;
             else if(item2) state <= s5;
				 else if(push) state<=s0;
				 else state<=state;
             end
		 default : state<=state;
      endcase
    end
	 
    always @(state)
    begin
    Q[0]<=(state==s0);
    Q[1]<=(state==s5);
    Q[2]<=(state==s10);
    Q[3]<=(state==s15);
    end
endmodule

