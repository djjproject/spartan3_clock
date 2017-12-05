`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:33:34 11/30/2014 
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
module piezo(clk1mhz,reset,piezo,piezoout,led);

input clk1mhz,reset,piezo;

output piezoout;
output reg [15:0] led; // 알람이 울릴때 LED 도 같이 하기 위해 아웃풋 설정

reg buff;
reg [10:0] Hz;
integer cnt,music,cnt10hz;
reg clk10hz;
reg out;

parameter L1=3823, L2=3406, L3=3034, L4=2864, L5=2551, L6=2273, L7=2025, A1=1911, A2=1703, A3=1517, A4=1432, A5=1276, A6=1136, A7=1012, H1=956, H2=851, H3=759, H4=715, H5=638, H6=568, H7=506, HH1=478, HH2=426, HH3=379, HH4=358, HH5=319, HH6=284, HH7=253, HHH1=239, 
                  L1S=3608, L2S=3213, L4S=2703, L5S=2407, L6S=2145, A1S=1804, A2S=1607, A4S=1351, A5S=1204, A6S=1073, H1S=902,  H2S=804, H4S=676,  H5S=602, H6S=536, HH1S=451, HH2S=402, HH4S=339,  HH5S=301, HH6S=268;
// 음계 지정



// 10hz 를 제작
always @(posedge clk1mhz or negedge reset)
	begin
		if(!reset)
			begin
				cnt10hz = 0;
				clk10hz = 0;
			end
		else if (cnt10hz >= 49999)
			begin
				cnt10hz = 0;
				clk10hz = ~clk10hz;
			end
		else cnt10hz = cnt10hz + 1;
	end



// music 카운트가 1/16 박자로 올라가면서 정해진 음계값을 피에조 블럭에 넣어줌, 빈 공간은 OUT = 0 으로 설정
always @(posedge clk1mhz)
	begin
		case(music)
			1:out=0;																										27: begin Hz=A3; out=1; end		29: begin Hz=A6; out=1; end		31: begin Hz=A7; out=1; end	
			33: begin Hz=H1; out=1; end						39: begin Hz=H2; out=1; end		41: begin Hz=A7; out=1; end						47: begin Hz=H1; out=1; end		49: begin Hz=A6; out=1; end								57:out=0;		59: begin Hz=A6; out=1; end	60: begin Hz=A5S; out=1; end	61: begin Hz=A6; out=1; end	62: begin Hz=A7; out=1; end	63: begin Hz=H1; out=1; end	64: begin Hz=H2; out=1; end
			65: begin Hz=H3; out=1; end			68:out=0;	69: begin Hz=H3; out=1; end			72:out=0;	73: begin Hz=H3; out=1; end			76:out=0;	77: begin Hz=H3; out=1; end			80:out=0;	81: begin Hz=H3; out=1; end												93: begin Hz=H2; out=1; end		95: begin Hz=H3; out=1; end	
			97: begin Hz=H4; out=1; end								105: begin Hz=A7; out=1; end				109: begin Hz=H1; out=1; end		111: begin Hz=H2; out=1; end		113: begin Hz=H3; out=1; end								121: begin Hz=A6; out=1; end			124:out=0;	125: begin Hz=A6; out=1; end		127: begin Hz=A7; out=1; end	
			129: begin Hz=H1; out=1; end			132:out=0;	133: begin Hz=H1; out=1; end		135: begin Hz=H2; out=1; end		137: begin Hz=A7; out=1; end			140:out=0;	141: begin Hz=A7; out=1; end		143: begin Hz=H1; out=1; end		145: begin Hz=A6; out=1; end								153:out=0;		155: begin Hz=A3; out=1; end		157: begin Hz=A6; out=1; end		159: begin Hz=A7; out=1; end	
			161: begin Hz=H1; out=1; end						167: begin Hz=H2; out=1; end		169: begin Hz=A7; out=1; end						175: begin Hz=H1; out=1; end		177: begin Hz=A6; out=1; end								185:out=0;		187: begin Hz=A6; out=1; end	188: begin Hz=A5S; out=1; end	189: begin Hz=A6; out=1; end	190: begin Hz=A7; out=1; end	191: begin Hz=H1; out=1; end	192: begin Hz=H2; out=1; end
			193: begin Hz=H3; out=1; end			196:out=0;	197: begin Hz=H3; out=1; end			200:out=0;	201: begin Hz=H3; out=1; end			204:out=0;	205: begin Hz=H3; out=1; end			208:out=0;	209: begin Hz=H3; out=1; end												221: begin Hz=H2; out=1; end		223: begin Hz=H3; out=1; end	
			225: begin Hz=H4; out=1; end								233: begin Hz=A7; out=1; end				237: begin Hz=H1; out=1; end		239: begin Hz=H2; out=1; end		241: begin Hz=H3; out=1; end								249: begin Hz=A6; out=1; end			252:out=0;	253: begin Hz=A6; out=1; end		255: begin Hz=A7; out=1; end	
			257: begin Hz=H1; out=1; end			260:out=0;	261: begin Hz=H1; out=1; end		263: begin Hz=H2; out=1; end		265: begin Hz=A7; out=1; end			268:out=0;	269: begin Hz=A7; out=1; end		271: begin Hz=H1; out=1; end		273: begin Hz=A6; out=1; end								281:out=0;		283: begin Hz=A6; out=1; end		285: begin Hz=A5S; out=1; end		287: begin Hz=A6; out=1; end	
			289: begin Hz=A7; out=1; end		291: begin Hz=A3; out=1; end		293: begin Hz=A2S; out=1; end		295: begin Hz=A2; out=1; end		297: begin Hz=A7; out=1; end		299: begin Hz=A3; out=1; end		301: begin Hz=H3; out=1; end		303: begin Hz=H2; out=1; end	304:out=0;	305: begin Hz=H2; out=1; end		307: begin Hz=H1; out=1; end		309: begin Hz=A7; out=1; end		311: begin Hz=A6; out=1; end	312:out=0;	313: begin Hz=A6; out=1; end		315: begin Hz=A7; out=1; end		317: begin Hz=H1; out=1; end		319: begin Hz=A6; out=1; end	
			321: begin Hz=A7; out=1; end		323: begin Hz=A5; out=1; end		325: begin Hz=A4S; out=1; end		327: begin Hz=A5; out=1; end		329: begin Hz=A7; out=1; end		331: begin Hz=A5; out=1; end		333: begin Hz=H5; out=1; end		335: begin Hz=H4; out=1; end	336:out=0;	337: begin Hz=H4; out=1; end		339: begin Hz=H3; out=1; end		341: begin Hz=H2; out=1; end		343: begin Hz=H1; out=1; end	344:out=0;	345: begin Hz=H1; out=1; end		347: begin Hz=H2; out=1; end		349: begin Hz=H3; out=1; end		351: begin Hz=H1; out=1; end	
			353: begin Hz=H1S; out=1; end		355: begin Hz=A6; out=1; end		357: begin Hz=H1S; out=1; end		359: begin Hz=H3; out=1; end		361: begin Hz=H6; out=1; end				365: begin Hz=H5; out=1; end			368:out=0;	369: begin Hz=H5; out=1; end		371: begin Hz=H4; out=1; end		373: begin Hz=H3; out=1; end		375: begin Hz=H2; out=1; end		377: begin Hz=H2; out=1; end		379: begin Hz=A6; out=1; end		381: begin Hz=A5S; out=1; end		383: begin Hz=A6; out=1; end	
			385: begin Hz=H2S; out=1; end		387: begin Hz=A7; out=1; end		389: begin Hz=H2S; out=1; end		391: begin Hz=H4S; out=1; end		393: begin Hz=H7; out=1; end				397: begin Hz=H6; out=1; end			400:out=0;	401: begin Hz=H6; out=1; end				405:out=0;				409: begin Hz=H5S; out=1; end		411: begin Hz=H6; out=1; end		413: begin Hz=H7; out=1; end		415: begin Hz=H3; out=1; end	
			417: begin Hz=HH3; out=1; end				421:out=0;		423: begin Hz=HH2; out=1; end	424: begin Hz=HH1; out=1; end	425: begin Hz=H7; out=1; end		427: begin Hz=HH1; out=1; end		429: begin Hz=HH2; out=1; end		431: begin Hz=H7; out=1; end		433: begin Hz=HH1; out=1; end		435: begin Hz=H7; out=1; end		437: begin Hz=H6; out=1; end		439: begin Hz=H5S; out=1; end		441: begin Hz=H6; out=1; end		443: begin Hz=H7; out=1; end		445: begin Hz=HH1; out=1; end		447: begin Hz=H6; out=1; end	
			449: begin Hz=H7; out=1; end						455: begin Hz=H5; out=1; end	456: begin Hz=H7; out=1; end	457: begin Hz=HH5; out=1; end		459: begin Hz=HH4; out=1; end		461: begin Hz=HH3; out=1; end		463: begin Hz=HH2; out=1; end		465: begin Hz=HH3; out=1; end		467: begin Hz=HH2; out=1; end		469: begin Hz=HH1; out=1; end		471: begin Hz=H7; out=1; end		473: begin Hz=HH1; out=1; end		475: begin Hz=HH2; out=1; end		477: begin Hz=HH3; out=1; end		479: begin Hz=HH1; out=1; end	
			481: begin Hz=HH6S; out=1; end						487: begin Hz=HH3; out=1; end	488:out=0;	489: begin Hz=HH3; out=1; end		491: begin Hz=HH6; out=1; end		493: begin Hz=HH1S; out=1; end		495: begin Hz=HH3; out=1; end		497: begin Hz=HH6; out=1; end		499: begin Hz=HH5; out=1; end		501: begin Hz=HH4; out=1; end		503: begin Hz=HH3; out=1; end		505: begin Hz=HH4; out=1; end		507: begin Hz=HH6; out=1; end		509: begin Hz=HH3; out=1; end		511: begin Hz=HH6; out=1; end	
			513: begin Hz=HH2S; out=1; end						519: begin Hz=H7; out=1; end	520: begin Hz=HH3; out=1; end	521: begin Hz=HHH1; out=1; end		523: begin Hz=HH7; out=1; end	524:out=0;	525: begin Hz=HH7; out=1; end		527: begin Hz=HH6; out=1; end	528:out=0;	529: begin Hz=HH6; out=1; end								537: begin Hz=HH5S; out=1; end		539: begin Hz=HH6; out=1; end		541: begin Hz=HH7; out=1; end		543: begin Hz=HH3; out=1; end	
			545: begin Hz=HH3; out=1; end		547: begin Hz=HH2; out=1; end		549: begin Hz=HH1; out=1; end		551: begin Hz=H7; out=1; end		553: begin Hz=H6; out=1; end		555: begin Hz=H5; out=1; end		557: begin Hz=H4; out=1; end		559: begin Hz=H3; out=1; end		561: begin Hz=H4; out=1; end		563: begin Hz=H3; out=1; end		565: begin Hz=H2; out=1; end		567: begin Hz=H1; out=1; end		569: begin Hz=A7; out=1; end		571: begin Hz=A6; out=1; end		573: begin Hz=A5; out=1; end		575: begin Hz=A4; out=1; end	
			577: begin Hz=A5; out=1; end		579: begin Hz=A6; out=1; end		581: begin Hz=A7; out=1; end		583: begin Hz=H1; out=1; end		585: begin Hz=H2; out=1; end		587: begin Hz=A7; out=1; end		589: begin Hz=A6; out=1; end		591: begin Hz=A5; out=1; end		593: begin Hz=A1; out=1; end	594: begin Hz=A5; out=1; end	595: begin Hz=H1; out=1; end	596: begin Hz=H2; out=1; end	597: begin Hz=H3; out=1; end	598: begin Hz=H1; out=1; end	599: begin Hz=A5; out=1; end	600: begin Hz=A3; out=1; end	601: begin Hz=H5; out=1; end		603: begin Hz=H3; out=1; end		605: begin Hz=H2; out=1; end		607: begin Hz=H1; out=1; end	608:out=0;
			609: begin Hz=H1; out=1; end		611: begin Hz=A7; out=1; end		613: begin Hz=A6; out=1; end		615: begin Hz=A5; out=1; end		617: begin Hz=A4; out=1; end		619: begin Hz=A3; out=1; end		621: begin Hz=A2; out=1; end		623: begin Hz=A1; out=1; end		625: begin Hz=H2; out=1; end		627: begin Hz=H1; out=1; end		629: begin Hz=A7; out=1; end		631: begin Hz=A6; out=1; end		633: begin Hz=A5; out=1; end		635: begin Hz=A4; out=1; end		637: begin Hz=A3; out=1; end		639: begin Hz=A2; out=1; end	
			641: begin Hz=A3; out=1; end	642: begin Hz=A5S; out=1; end	643: begin Hz=A7; out=1; end	644: begin Hz=A5S; out=1; end	645: begin Hz=H3; out=1; end	646: begin Hz=H5S; out=1; end	647: begin Hz=H7; out=1; end	648: begin Hz=H5S; out=1; end	649: begin Hz=HH3; out=1; end		651: begin Hz=HH2; out=1; end		653: begin Hz=H7; out=1; end		655: begin Hz=H5S; out=1; end		657: begin Hz=H6; out=1; end			660:out=0;	661: begin Hz=H6; out=1; end	662:out=0;	663: begin Hz=H6; out=1; end	664:out=0;	665: begin Hz=H6; out=1; end				669:out=0;			
			673: begin Hz=HH1; out=1; end			676:out=0;	677: begin Hz=HH1; out=1; end				681: begin Hz=H7; out=1; end		683: begin Hz=H5; out=1; end		685: begin Hz=HH1; out=1; end		687: begin Hz=HH2; out=1; end		689: begin Hz=HH2S; out=1; end						695: begin Hz=HH4; out=1; end		697: begin Hz=HH2; out=1; end					702: begin Hz=HH2S; out=1; end		
			705: begin Hz=HH1; out=1; end								713:out=0;		715: begin Hz=HH1; out=1; end	716: begin Hz=H7; out=1; end	717: begin Hz=HH1; out=1; end	718: begin Hz=HH2; out=1; end	719: begin Hz=HH2S; out=1; end	720: begin Hz=HH4; out=1; end	721: begin Hz=HH5; out=1; end			724:out=0;	725: begin Hz=HH5; out=1; end			728:out=0;	729: begin Hz=HH5; out=1; end			732:out=0;	733: begin Hz=HH5; out=1; end			736:out=0;
			737: begin Hz=HH5; out=1; end								745:out=0;				749: begin Hz=HH4; out=1; end		751: begin Hz=HH5; out=1; end		753: begin Hz=HH5S; out=1; end								761: begin Hz=HH2; out=1; end				765: begin Hz=HH2S; out=1; end		767: begin Hz=HH4; out=1; end	
			769: begin Hz=HH5; out=1; end								777: begin Hz=HH1; out=1; end				781: begin Hz=HH1; out=1; end		783: begin Hz=HH2; out=1; end		785: begin Hz=HH2S; out=1; end						791: begin Hz=HH4; out=1; end		793: begin Hz=HH2; out=1; end						799: begin Hz=HH2S; out=1; end	
			801: begin Hz=HH1; out=1; end								809:out=0;		811: begin Hz=H5; out=1; end		813: begin Hz=HH1; out=1; end		815: begin Hz=HH2; out=1; end		817: begin Hz=HH2S; out=1; end						823: begin Hz=HH4; out=1; end		825: begin Hz=HH2; out=1; end						831: begin Hz=HH2S; out=1; end	
			833: begin Hz=HH1; out=1; end								841:out=0;		843: begin Hz=H1; out=1; end	844: begin Hz=A7; out=1; end	845: begin Hz=H1; out=1; end	846: begin Hz=H2; out=1; end	847: begin Hz=H2S; out=1; end	848: begin Hz=H4; out=1; end	849: begin Hz=HH5S; out=1; end			852:out=0;	853: begin Hz=HH5S; out=1; end			856:out=0;	857: begin Hz=HH5S; out=1; end			860:out=0;	861: begin Hz=HH5S; out=1; end			864:out=0;
			865: begin Hz=HH5; out=1; end								873:out=0;				877: begin Hz=HH4; out=1; end		879: begin Hz=HH5; out=1; end		881: begin Hz=HH5S; out=1; end								889: begin Hz=HH2; out=1; end				893: begin Hz=HH2S; out=1; end		895: begin Hz=HH4; out=1; end	
			897: begin Hz=HH5; out=1; end								905: begin Hz=HH1; out=1; end			908:out=0;	909: begin Hz=HH1; out=1; end		911: begin Hz=HH2; out=1; end		913: begin Hz=HH2S; out=1; end						919: begin Hz=H4; out=1; end		921: begin Hz=HH2; out=1; end						927: begin Hz=HH2S; out=1; end	
			929: begin Hz=HH1; out=1; end												941: begin Hz=HH4; out=1; end		943: begin Hz=HH5; out=1; end		945: begin Hz=HH5S; out=1; end								953: begin Hz=HH2; out=1; end				957: begin Hz=HH2S; out=1; end		959: begin Hz=HH4; out=1; end	
			961: begin Hz=HH5; out=1; end								969: begin Hz=HH1; out=1; end			972:out=0;	973: begin Hz=HH1; out=1; end		975: begin Hz=HH2; out=1; end		977: begin Hz=HH2S; out=1; end						983: begin Hz=HH4; out=1; end		985: begin Hz=HH2; out=1; end						991: begin Hz=HH2S; out=1; end	
			993: begin Hz=HH1; out=1; end								1001:out=0;								1009: begin Hz=H1; out=1; end								1017:out=0;							
			default	: out=0;
		endcase
	end


always @(posedge clk1mhz or negedge reset)
	begin
		if(!reset) 
			begin
				cnt = 0;
				buff = 0;
			end
		else if (piezo)
			begin
				if (cnt >= Hz)
					begin
						cnt = 0;
						buff = ~buff;
					end
				else cnt = cnt + 1;
			end
		else cnt = cnt;
	end
// 피에조 진동수에 따라 BUFF 를 0 1 로 바꿈
	
always @(posedge clk10hz)
	begin
		if (!piezo) music = 0;
		else if (music > 1020) music = 0;
		else music = music + 1;
	end
// 10hz 를 만듬
		
	
assign piezoout = buff&out;

// 윗줄 LED는 1/16박자, 아랫줄은 피에조가 동작할때만 깜박거림
always @(posedge clk1mhz)
	begin
		if(!piezo) led = 16'd0;
		else if (clk10hz)
			begin
				if(out) led[7:0] = 8'd255;			
				led[15:8] = 8'd255;
			end
		else led = 16'd0;
	end


endmodule
