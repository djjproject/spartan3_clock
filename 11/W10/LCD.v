`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:49 11/07/2014 
// Design Name: 
// Module Name:    LCD 
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
module LCD(resetn, clk, lcde, lcdrs, lcdrw, lcddata, lcdctl, state);

input resetn, clk;
input [2:0] lcdctl;
output lcde, lcdrs, lcdrw;
output [7:0] lcddata;

wire lcde;
wire [6:0] w;
wire [3:0] out1, out2;
reg plus,minus;
reg lcdrs, lcdrw;
reg [4:0] cursoradress;
reg [7:0] lcddata;

output reg [3:0] state;

parameter   delay = 4'b0000,
            functionset = 4'b0001,
            entrymode = 4'b0010,
            disponoff = 4'b0011,
            line1 = 4'b0100,
            line2 = 4'b0101,
            delayt = 4'b0110,
            cleardisp = 4'b0111,
				cursorshift = 4'b1000,
				cursorhome = 4'b1001,
				count = 4'b1010;

parameter 	wating=3'b000,
				home=3'b001,
				up=3'b010,
				down=3'b011,
				left=3'b100,
				right=3'b101,
				count_up=3'b110,
				count_down=3'b111;
integer cnt;
integer cnt100hz;
reg clk100hz;

Counter C(w,plus,minus,clk100hz);
BCD_Converter B({out1,out2},w,clk100hz);


//initial begin
//	plus=0; minus=0;
//end

initial begin
	cnt100hz = 0;
	clk100hz = 1'b0;
	cnt=0;
	plus=0;
	minus=0;
	cursoradress=0;
end

always @ (negedge resetn or posedge clk)
begin
   if (resetn == 1'b0)
      begin
      cnt100hz = 0;
      clk100hz = 1'b0;
      end
//   else if (cnt100hz >=4)
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
            delay :
               if (cnt == 70) state = functionset;
            functionset :
               if (cnt == 30) state = disponoff;
            disponoff :
               if (cnt == 30) state = entrymode;
            entrymode :
               if (cnt == 20) state = line1;
            line1 :
               if (cnt == 20) state = line2;
            line2 :
               if (cnt == 20) state = delayt;
//            delayt :
//               if (cnt == 400) state = cleardisp;
            delayt :
               //if (cnt == 400) state = cleardisp;
					
					case(lcdctl)
					wating : state=delayt;
					home : state=cursorhome;
					up : state=cursorshift;
					down : state=cursorshift;
					left : state=cursorshift;
					right : state=cursorshift;
					count_up : state=count;
					count_down : state=count;
					default : state=delayt;
					endcase
				cursorshift :
					if(cnt == 20) state = delayt;
				cursorhome :
					if(cnt == 20) state = delayt;
				count :
//					if(cnt == 20) state = delayt;
					if(cnt == 20) state = line1;
            cleardisp :
               if (cnt == 200) state = line1;
            default : state = delay;
         endcase
      end
end
   
always @ (negedge resetn or posedge clk100hz)
begin
   if (resetn == 1'b0)
	begin
      cnt =0;
	end
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
//               if (cnt >= 20) cnt = cnt;
//               else cnt = cnt + 1;
					cnt=0;
//				delayt :
//               if (cnt >= 400) cnt = 0;
//               else cnt = cnt + 1;
				cursorshift :
					if (cnt >= 20) cnt=0;
					else cnt = cnt + 1;
				cursorhome :
					if (cnt >= 20) cnt=0;
					else cnt = cnt + 1;
				count:
					if (cnt >= 20) cnt=0;
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
                        lcddata = 8'b1_0000000;//0x00번지
                     end
                  1 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00100000;//공백
                     end
                     
                  2 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110010;//2
                     end
                  3 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110000;//0
                     end
                  4 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110001;//1
                     end
                  5 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110011;//3
                     end
						6 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110100;//4
                     end
						7 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110100;//4
                     end
						8 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110000;//0
                     end
						9 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00110000;//0
                     end
						10 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = {4'b0011,out1};//4
                     end
						11 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = {4'b0011,out2};//1
                     end
							
                  default :
                      begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00100000;
                     end
                  endcase
               end
			line2 :
            begin
               lcdrw = 1'b0;
               
               case (cnt)
                  0 :
                     begin
                        lcdrs = 1'b0;
                        lcddata = 8'b1_1000000; //0x40번지
                     end
                  1 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01000100; //공백
                     end
                  2 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01010000; //D
                     end
                  3 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01101111; //o
                     end
                  4 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b00101101; //-
                     end
                  5 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01001010; //J
							end
                  6 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01110101; //u
                     end
                  7 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01101110; //n
                     end
                  8 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01100111; //g
                     end
                  9 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01110101; //-
                     end
                  10 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01001010; //J
                     end
                  11 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01101001; //i
                     end
                  12 :
                     begin
                        lcdrs = 1'b1;
                        lcddata = 8'b01101110; //n
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
            lcddata = 8'b00001110; 
         end
      
		cursorshift :
			begin
				lcdrs=1'b0;
				lcdrw=1'b0;
				case(cnt)
					0: 
					begin
						case(lcdctl)
							right : cursoradress = cursoradress + 5'b1;
							left  : cursoradress = cursoradress - 5'b1;
							up    : cursoradress = cursoradress + 5'b10000;
							down  : cursoradress = cursoradress - 5'b10000;
							default : cursoradress = cursoradress;
						endcase
						lcddata = {1'b1, cursoradress[4], 2'b00, cursoradress[3:0]}; 
					end
					
					
					default : lcddata = {1'b1, cursoradress[4], 2'b00, cursoradress[3:0]}; 
				endcase
				
					
					
			end
		
		cursorhome : 
			begin
			
				lcdrs=1'b0;
				lcdrw=1'b0;
				case(cnt)
					0: 
					begin
						lcddata = 8'b00001110;
						
						cursoradress=5'b00000;
					end
					
					default: lcddata=8'b00000010;
					
				endcase
			end
		count :
			begin
				lcdrw=0;
				case(cnt)
				0:
					begin
						case(lcdctl)
							count_up : plus=1;
							count_down : minus=1;
							default: begin
								plus=0; minus=0;
							end
						endcase									
						
//						lcdrs=0;
//						lcddata=8'b10001001;
					end
//				1: 
//					begin
//						lcdrs=1;
//						lcddata={4'b0011,out1};
//					end
//				2:	
//					begin
//						lcdrs=0;
//						lcddata=8'b10001010;
//					end
//				3: 
//					begin
//						lcdrs=1;
//						lcddata={4'b0011,out2};
//					end
				4: 
					begin
						lcdrs=0;
						plus=0; minus=0;
					end
				default : 
					begin
						lcdrs=0;
						lcddata=8'b00000010;
					end
				endcase
				
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
