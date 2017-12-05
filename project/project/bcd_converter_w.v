`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:54 12/06/2014 
// Design Name: 
// Module Name:    bcd_converter_w 
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
module bcd_converter_w(
    output reg [7:0] BCD,
    input [6:0] Data_in,
	 input clk
    );
	always @(posedge clk) 
	begin
		if(Data_in<10) BCD[7:4] = 4'd0;
		else if(Data_in>=10 & Data_in<20) BCD[7:4] = 4'd1;
		else if(Data_in>=20 & Data_in<30) BCD[7:4] = 4'd2;
		else if(Data_in>=30 & Data_in<40) BCD[7:4] = 4'd3;
		else if(Data_in>=40 & Data_in<50) BCD[7:4] = 4'd4;
		else if(Data_in>=50 & Data_in<60) BCD[7:4] = 4'd5;
		else if(Data_in>=60 & Data_in<70) BCD[7:4] = 4'd6;
		else if(Data_in>=70 & Data_in<80) BCD[7:4] = 4'd7;
		else if(Data_in>=80 & Data_in<90) BCD[7:4] = 4'd8;
		else if(Data_in>=90 & Data_in<100)BCD[7:4] = 4'd9;
		
		if(Data_in==7'd0|Data_in==7'd10|Data_in==7'd20|Data_in==7'd30|Data_in==7'd40|
			Data_in==7'd50|Data_in==7'd60|Data_in==7'd70|Data_in==7'd80|Data_in==7'd90) BCD[3:0] = 4'd0;
		else if(Data_in==7'd1|Data_in==7'd11|Data_in==7'd21|Data_in==7'd31|Data_in==7'd41|
			Data_in==7'd51|Data_in==7'd61|Data_in==7'd71|Data_in==7'd81|Data_in==7'd91) BCD[3:0] = 4'd1;
		else if(Data_in==7'd2|Data_in==7'd12|Data_in==7'd22|Data_in==7'd32|Data_in==7'd42|
			Data_in==7'd52|Data_in==7'd62|Data_in==7'd72|Data_in==7'd82|Data_in==7'd92) BCD[3:0] = 4'd2;
		else if(Data_in==7'd3|Data_in==7'd13|Data_in==7'd23|Data_in==7'd33|Data_in==7'd43|
			Data_in==7'd53|Data_in==7'd63|Data_in==7'd73|Data_in==7'd83|Data_in==7'd93) BCD[3:0] = 4'd3;
		else if(Data_in==7'd4|Data_in==7'd14|Data_in==7'd24|Data_in==7'd34|Data_in==7'd44|
			Data_in==7'd54|Data_in==7'd64|Data_in==7'd74|Data_in==7'd84|Data_in==7'd94) BCD[3:0] = 4'd4;
		else if(Data_in==7'd5|Data_in==7'd15|Data_in==7'd25|Data_in==7'd35|Data_in==7'd45|
			Data_in==7'd55|Data_in==7'd65|Data_in==7'd75|Data_in==7'd85|Data_in==7'd95) BCD[3:0] = 4'd5;
		else if(Data_in==7'd6|Data_in==7'd16|Data_in==7'd26|Data_in==7'd36|Data_in==7'd46|
			Data_in==7'd56|Data_in==7'd66|Data_in==7'd76|Data_in==7'd86|Data_in==7'd96) BCD[3:0] = 4'd6;
		else if(Data_in==7'd7|Data_in==7'd17|Data_in==7'd27|Data_in==7'd37|Data_in==7'd47|
			Data_in==7'd57|Data_in==7'd67|Data_in==7'd77|Data_in==7'd87|Data_in==7'd97) BCD[3:0] = 4'd7;
		else if(Data_in==7'd8|Data_in==7'd18|Data_in==7'd28|Data_in==7'd38|Data_in==7'd48|
			Data_in==7'd58|Data_in==7'd68|Data_in==7'd78|Data_in==7'd88|Data_in==7'd98) BCD[3:0] = 4'd8;
		else if(Data_in==7'd9|Data_in==7'd19|Data_in==7'd29|Data_in==7'd39|Data_in==7'd49|
			Data_in==7'd59|Data_in==7'd69|Data_in==7'd79|Data_in==7'd89|Data_in==7'd99) BCD[3:0] = 4'd9;		
	end
endmodule