`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:34:14 10/09/2014 
// Design Name: 
// Module Name:    mux2bit21 
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
module mux2bit21(a,b,s,z
    );
input [1:0] a,b;
input s;
output reg [1:0] z;

always @(a,b,s)
begin
if (s==1) z=a;
else z=b;
end

endmodule
