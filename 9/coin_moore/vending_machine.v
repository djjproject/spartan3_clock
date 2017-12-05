// moore machine ÀÚÆÇ±â

module vend(
	nic, dim, obj1, obj2, ch,
	coin, clk
);

input nic, dim, ch, clk;
input obj1, obj2;

output reg [3:0] coin;

reg [3:0] state;
reg en;

initial begin
	coin = 4'b0000;
end

parameter s0 = 4'b1000,
s5 = 4'b0100,
s10 = 4'b0010,
s15 = 4'b0001;

always @(posedge clk)
begin
	en = nic|dim|ch|obj1|obj2;
end

always @(posedge clk)
begin
	if(ch&~en)
		state = s0;
	else if(nic&~en)
		case(state)
			s0 : state = s5;
			s5 : state = s10;
			s10 : state = s15;
			s15 : state = s15;
			default : state = s0;
		endcase
	else if(dim&~en)
		case(state)
			s0 : state = s10;
			s5 : state = s15;
			s10 : state = s15;
			s15 : state = s15;
			default : state = s0;
		endcase
	else if(obj1&~en)
		case(state)
			s0 : state = s0;
			s5 : state = s5;
			s10 : state = s0;
			s15 : state = s5;
			default : state = s0;
		endcase
	else if(obj2&~en)
		begin
			if(state == s15) state = s0;
			else state = state;
		end
	else state = state;
end

always @(state)
begin
	case(state)
		s0 : coin = 4'b1000;
		s5 : coin = 4'b0100;
		s10 : coin = 4'b0010;
		s15 : coin = 4'b0001;
	endcase
end

endmodule