`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:37:08 11/03/2014 
// Design Name: 
// Module Name:    piano 
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
module piano(clk,reset,a,b,c,d,e,f,g,ha,piezo
    );
input clk,reset,a,b,c,d,e,f,g,ha;
output reg piezo;

integer sound;
parameter sa=1911, sb=1702, sc=1516, sd=1431, se=1275, sf=1136, sg=1012, sha=955;

always @(negedge reset or posedge clk) begin
if(!reset) begin
	piezo = 1'b0;
	sound = 0;
end

else if (a) begin
	if(sound>=sa) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (b) begin
	if(sound>=sb) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (c) begin
	if(sound>=sc) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (d) begin
	if(sound>=sd) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (e) begin
	if(sound>=se) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (f) begin
	if(sound>=sf) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (g) begin
	if(sound>=sg) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else if (ha) begin
	if(sound>=sha) begin
		sound=0;
		piezo=~piezo;
		end
	else sound=sound+1;
end

else begin
	sound=0;
	piezo=0;
end

end

endmodule
