// 8bit up-down counter with synchronous reset

module udc(
	in, load, clk, resetn, up, down,
	s1, s2, s3, s4, s5, s6, s7,
	cry, brw
);

input [3:0] in;
input load, clk, resetn, up, down;

output s1, s2, s3, s4, s5, s6, s7, cry, brw;

reg [3:0] out;
reg en, cry, brw;

segment n1 (out,s1,s2,s3,s4,s5,s6,s7);

always @(posedge clk)
begin
	en = load|up|down;
end

always @(posedge clk)
begin
	if(~resetn)
	begin
		out = 4'b0000;
		brw = 0;
		cry = 0;
	end
	else if(load&~en)
	begin
		out[3:0] = in[3:0];
		brw = 0;
		cry = 0;
	end
	else
	begin
		if(up&~en)
		begin
			if(out == 4'b1111 && brw == 1) 
			begin
				out = 4'b0000;
				brw = 0;
			end
			else if(out == 4'b1111)
			begin
				out = out + 1;
				cry = 1;
			end
			else out = out + 1;
		end
		else if(down&~en) 
		begin
			if(out == 4'b0000 && cry == 1)
			begin
				out = 4'b1111;
				cry = 0;
			end
			else if(out == 4'b0000 && brw == 0)
			begin
				out = out - 1;
				brw = 1;
			end
			else out = out - 1;
		end
		else
		begin
			out = out;
			cry = cry;
			brw = brw;
		end
	end
	
	