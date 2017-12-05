// 1octave piano

module piezo(
	resetn, clk,
	c3, d, e, f, g, a, b, c4,
	s1, s2, s3, s4, s5, s6, s7,
	piezo
);

input resetn, clk, c3, d, e, f, g, a, b, c4;
output piezo, s1, s2, s3, s4, s5, s6, s7;

reg buff;
reg [6:0] decode;
integer cnt_sound;

wire piezo;

always @(posedge clk)
begin
	if(~resetn)
	begin
		buff = 1'b0;
		cnt_sound = 0;
		decode = 7'b0000000;
	end
	else
	begin
		if(c3)
		begin
			if(cnt_sound >= 1910)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b0110000; //1
		end
		
		else if(d)
		begin
			if(cnt_sound >= 1703)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b1101101; //2
		end
		else if(e)
		begin
			if(cnt_sound >= 1517)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b1111001; //3
		end
		
		else if(f)
		begin
			if(cnt_sound >= 1432)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b0110011; //4
		end
		
		else if(g)
		begin
			if(cnt_sound >= 1276)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			 decode = 7'b1011011; //5
		end
		
		else if(a)
		begin
			if(cnt_sound >= 1136)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b1011111; //6
		end
		
		else if(b)
		begin
			if(cnt_sound >= 1012)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b1110000; //7
		end
		
		else if(c4)
		begin
			if(cnt_sound >= 956)
			begin
				cnt_sound = 0;
				buff = ~ buff;
			end
			else
				cnt_sound = cnt_sound + 1;
			decode = 7'b1111111; //8
		end
		
		else
		begin
			buff = 1'b0;
			cnt_sound = 0;
			decode = 7'b0000000;
		end
	end
end

assign piezo = buff;
assign {s1, s2, s3, s4, s5, s6, s7} = decode;

endmodule