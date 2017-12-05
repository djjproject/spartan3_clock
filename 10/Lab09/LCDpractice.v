module LCDpractice(resetn, clk, lcde, lcdrs, lcdrw, lcddata);

	input resetn, clk;
	output lcde, lcdrs, lcdrw;
	output [7:0] lcddata;
	 
	wire lcde;
	reg lcdrs, lcdrw;
	reg [7:0] lcddata;

	reg [2:0] state;

	parameter	delay = 3'b000,
					functionset = 3'b001,
					entrymode = 3'b010,
					disponoff = 3'b011,
					line1 = 3'b100,
					line2 = 3'b101,
					delayt = 3'b110,
					cleardisp = 3'b111;
					
	integer cnt;
	integer cnt100hz;
	reg clk100hz;

	always @ (negedge resetn or posedge clk)
		begin
			if (resetn == 1'b0)
				begin
					cnt100hz = 0;
					clk100hz = 1'b0;
				end
				
			else if (cnt100hz >=4)
				begin
					cnt100hz = 0;
					clk100hz = ~clk100hz;
				end
				
			else
			cnt100hz = cnt100hz + 1;	
		end

	always @(negedge resetn or posedge clk100hz)
	begin
		if (resetn == 1'b0)
			state = delay;
			
		else
			begin
				case (state)
					delay			: if (cnt == 70) state = functionset;
					functionset : if (cnt == 30) state = disponoff;
					disponoff 	: if (cnt == 30) state = entrymode;
					entrymode 	: if (cnt == 30) state = line1;
					line1 		: if (cnt == 20) state = line2;
					line2 		: if (cnt == 20) state = delayt;
					delayt 		: if (cnt == 400) state = cleardisp;
					cleardisp 	: if (cnt == 200) state = line1;
					default 		: state = delay;
				endcase
			end
	end
		
	always @ (negedge resetn or posedge clk100hz)
		begin
			if (resetn == 1'b0)
				cnt =0;
			else
				begin
					case (state)
						delay :
							if (cnt >= 70) cnt = 0;
							else cnt = cnt +1;
						functionset :
							if (cnt >= 30) cnt = 0;
							else cnt = cnt + 1;
						disponoff :
							if (cnt >= 30) cnt = 0;
							else cnt = cnt + 1;
						entrymode :
							if (cnt >= 30) cnt = 0;
							else cnt =cnt + 1;
						line1 :
							if (cnt >= 20) cnt = 0;
							else cnt = cnt +1;
						line2 :
							if (cnt >= 20) cnt = 0;
							else cnt = cnt + 1;
						delayt :
							if (cnt >= 400) cnt = 0;
							else cnt = cnt + 1;
						cleardisp :
							if (cnt >=200) cnt = 0;
							else cnt = cnt +1;
						default cnt = 0;
					endcase
				end
		end
						
	always @ (negedge resetn or posedge clk100hz)
		begin
			if (resetn == 1'b0)
				begin
					lcdrs = 1'b1;
					lcdrw = 1'b1;
					lcddata = 8'b00000000;
				end
			else
				begin
					case (state)
						functionset :
							begin
								lcdrs = 1'b0;
								lcdrw = 1'b0;
								lcddata = 8'b00111100;
							end
					
					disponoff :
						begin
							lcdrs = 1'b0;
							lcdrw = 1'b0;
							lcddata = 8'b00001100;
						end
						
					entrymode :
						begin
							lcdrs = 1'b0;
							lcdrw = 1'b0;
							lcddata = 8'b00000110;
						end
						
					line1 :
						begin
							lcdrw = 1'b0;
							
							case (cnt)
								0 :
									begin
										lcdrs = 1'b0;
										lcddata = 8'b10000000;
									end
								1 :
									begin
										lcdrs = 1'b1;
										lcddata = 8'b00100000;
									end
									
								2 :
									begin
										lcdrs = 1'b1;
										lcddata = 8'b01010100;//T
									end
								3 :
									begin
										lcdrs = 1'b1;
										lcddata = 8'b01101000;//H
									end
								4 :
									begin
										lcdrs = 1'b1;
										lcddata = 8'b01101001;//I
									end
								5 :
									begin
										lcdrs = 1'b1;
										lcddata = 8'b01110011;//S
									end
								default :
									 begin
										lcdrs = 1'b1;
										lcddata = 8'b00100000;
									end
								endcase
							end
							
				delayt :
					begin
						lcdrs =1'b0;
						lcdrw =1'b0;
						lcddata = 8'b00000010;
					end
				
				cleardisp :
					begin
						lcdrs = 1'b1;
						lcdrw = 1'b1;
						lcddata = 8'b00000001;
					end
					
				default :
					begin
						lcdrs = 1'b1;
						lcdrw = 1'b1;
						lcddata = 8'b00000000;
					end
				
				endcase
			end
		end

	assign lcde = clk100hz;

endmodule

		
				