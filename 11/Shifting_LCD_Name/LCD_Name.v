module LCD (clk, rst, lcd_e, lcd_data, lcd_rs, lcd_rw);

input clk, rst; //input값으로는 clk과 rst버튼만을 이용한다.
output reg lcd_rs, lcd_rw; //필요한 변수인 lcd_rs, lcd_rw
output reg [7:0] lcd_data; //lce_data를 각각 register시켜준다.
output lcd_e; //output으로 나올 lcd_e는 wire시켜준다.
wire lcd_e;
reg [3:0] state; //밑에서 설정할 각 state이다.

parameter delay=4'b0000, //내가 사용할 상태명령어들을 정해주는 과정이다.
 func_set=4'b0001,
 entry_mode=4'b0010,
 dis_onoff=4'b0011, 
 line1=4'b0100,
 line2=4'b0101,         
 delay_t=4'b0110,
 clear=4'b0111,
 shift=4'b1000; 

integer num; integer num_to_100; reg clk_100; 

always @ (negedge rst or posedge clk) //항상 rst이 neg일때 혹은 clk이 pos일 때 작동한다.
begin
  if (~rst)
   begin //만약 rst이 not상태이면 nom_to_100은 0, clk_100도 0으로 시작한다.
   num_to_100 = 0;
   clk_100 = 1'b0;
 end
  else if (num_to_100>= 4) //num_to_100이 4 이상이 되면 다시 0으로 돌려준다.
  begin
   num_to_100 = 0;
   clk_100 = ~clk_100;
 end
else
  num_to_100 = num_to_100 + 1; //num_to_100이 4보다 작으면 계속 1씩 더해진다.
end
 
always @ (negedge rst or posedge clk_100) 
 begin
   if (~rst) //rst이 neg상태이면, state는 delay이다.
 state = delay;
 else
  begin
   case(state)//정해놓은 num에 따라 각 state의 시간이 달라지게 된다.
  delay : //delay에 관한 코딩이다.
   if (num >= 70) //num이 70보다 커지면 state가 func_set이 되고
    begin       //num은 다시 0으로 돌아가게 한다.
     state = func_set;
     num = 0;
    end
   else //num에 계속 1씩 더해진다.
    num = num + 1;
    
  func_set : //func_set에 관한 코딩이다.
   if (num >= 30) //num이 30보다 커지면 state가 dis_onoff가 되고
    begin       //num은 다시 0을 돌아가게 한다.
     state = dis_onoff;
     num = 0;
    end
   else
    num = num + 1; //num에 계속 1이 더해진다.
    
  dis_onoff : //dis_onoff에 관한 코딩이다.
   if (num >= 30) //num이 30보다 커지면 state는 entry_mode가 되고
    begin      //num은 다시 0으로 돌아가게 한다.
     state = entry_mode;
     num = 0;
    end
        else
         num = num + 1; //num에 계속 1씩 더해준다.
   
  entry_mode : //entry_mode에 관한 코딩이다.
     if (num >= 30) //num이 30보다 커지면 state는 line1이 되고
      begin   //num은 0으로 돌아간다.
          state = line1;
      num = 0;
     end
         else
           num = num +1; //num에 계속 1씩 더해준다.
     
  line1 : //line1에 관한 코딩이다.
   if (num >= 20) //num이 20보다 커지면 state=line2로 되고
    begin      //num은 0으로 돌아간다.
     state = line2; 
     num = 0;
    end
   else
    num = num + 1; //num에 계속 1씩 더한다.
line2 : //line2에 관한 코딩이다.
   if (num >= 20) //num이 20보다 커지면 state=shift가 되고
    begin        //num은 0으로 돌아간다.
     state = shift;
     num = 0;
    end
   else
    num = num + 1; //num에 1씩 더해준다.
     delay_t : //delay_t에 관한 코딩이다.
   if (num >= 6) //num이 6보다 커지면 state=shift가 되고
    begin  //num은 0으로 돌아간다. *이 구문으로 속도를 조절해줌.*
     state = shift;
     num = 0;
       end
   else
    num = num + 1;//num에 계속 1씩 더해준다.
     
  shift : //shift에 관한 코딩이다.
    state = delay_t; //state=delay_t로 간다.
    
  default : 
    begin
     state = delay; //디폴트값은 state를 그저 delay로 보내버린다.
     num = 0;
    end 
 endcase
 end
 end
 
always @ (negedge rst or posedge clk_100)//rst이 neg일 때 혹은 clk_100이 1이되면 값을 뱉는다.
begin
  if(~rst)//rst이 not일 때 각 변수의 값을 정해주는 과정이다.
  begin
  lcd_rs = 1'b1; lcd_rw = 1'b1; lcd_data = 8'b00000000;
  end
  else
   begin
 case(state)//state에 관한 case 구문. 위에서 정해놓은 각 state의 값을 정해주는 과정이다.
 func_set : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00111100;
  end
  dis_onoff : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00001100;  
  end
  entry_mode : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00000110;
  end   
   line1 :  begin//실질적인 lcd 표시값 coding이다.
  lcd_rw = 1'b0; 
  
  case (num)
  0 : begin lcd_rs = 1'b0; //여기부터는 실제 lcd에 표시되는 값에 해당하는
   lcd_data = 8'b10000000; //좌표를 적어준다.
  end
  1 : begin lcd_rs = 1'b1; //2를 나타내는 구문이다.
  lcd_data = 8'b00110010; 
  end
  2 : begin lcd_rs = 1'b1; //0를 나타내는 구문이다.
  lcd_data = 8'b00110000; 
  end
  3 : begin lcd_rs = 1'b1; //1를 나타내는 구문이다.
  lcd_data = 8'b00110001; 
  end
  4 : begin lcd_rs = 1'b1; //3를 나타내는 구문이다.
  lcd_data = 8'b00110011; 
  end
  5 : begin lcd_rs = 1'b1; //4를 나타내는 구문이다.
  lcd_data = 8'b00110100; 
  end
  6 : begin lcd_rs = 1'b1; //4를 나타내는 구문이다.
  lcd_data = 8'b00110100;
  end
  7 : begin lcd_rs = 1'b1; //0를 나타내는 구문이다.
  lcd_data = 8'b00110000; 
  end
  8 : begin lcd_rs = 1'b1; //0를 나타내는 구문이다.
  lcd_data = 8'b00110000; 
  end
  9 : begin lcd_rs = 1'b1; //0를 나타내는 구문이다.
  lcd_data = 8'b00110000; 
  end
  10 : begin lcd_rs = 1'b1; //6를 나타내는 구문이다.
  lcd_data = 8'b00110110; 
  end
  11 : begin lcd_rs = 1'b1; //이 밑으로는 쭉 공란으로 설정한다.
  lcd_data = 8'b00100000; 
  end
  12 : begin lcd_rs = 1'b1; 
  lcd_data = 8'b00100000; 
  end
  13 : begin lcd_rs = 1'b1; 
  lcd_data = 8'b00100000; 
  end
  14 : begin lcd_rs = 1'b1; 
  lcd_data = 8'b00100000;
  end
  15 : begin lcd_rs = 1'b1; 
  lcd_data = 8'b00100000; 
  end
  16 : begin lcd_rs = 1'b1; 
  lcd_data = 8'b00100000; 
  end 
  default : begin lcd_rs = 1'b1; //여기까지 공란!
  lcd_data = 8'b00100000; 
  end
  endcase
  end
line2 :  begin//lcd의 두번째 줄에 관한 코딩이다.
  lcd_rw = 1'b0; 
  
  case (num)
  
  0 : begin lcd_rs = 1'b0; //여기부터는 이름에 해당하는
  lcd_data = 8'b11000000;  //문자의 좌표를 적어준다.
  end
  1 : begin lcd_rs = 1'b1; //여기는 공란
  lcd_data = 8'b00100000; 
  end
  2 : begin lcd_rs = 1'b1; //K에 해당하는 좌표이다.
  lcd_data = 8'b01001011; 
  end
  3 : begin lcd_rs = 1'b1; //O에 해당하는 좌표이다.
  lcd_data = 8'b01001111; 
  end
  4 : begin lcd_rs = 1'b1; //여기는 공란. 띄어쓰기다.
  lcd_data = 8'b00100000; 
  end
  5 : begin lcd_rs = 1'b1; //E에 해당하는 좌표이다.
  lcd_data = 8'b01000101; 
  end
  6 : begin lcd_rs = 1'b1; //U에 해당하는 좌표이다.
  lcd_data = 8'b01010101;
  end
  7 : begin lcd_rs = 1'b1; //N에 해당하는 좌표이다.
  lcd_data = 8'b01001110; 
  end
  8 : begin lcd_rs = 1'b1; //여기는 공란. 띄어쓰기다.
  lcd_data = 8'b00100000; 
  end
  9 : begin lcd_rs = 1'b1; //A에 해당하는 좌표이다.
  lcd_data = 8'b01000001; 
  end
  10 : begin lcd_rs = 1'b1; //H에 해당하는 좌표이다.
  lcd_data = 8'b01001000; 
  end
  11 : begin lcd_rs = 1'b1; //여기는 공란.
  lcd_data = 8'b00100000; 
  end
  12 : begin lcd_rs = 1'b1; //공백
  lcd_data = 8'b00100000; 
  end
  13 : begin lcd_rs = 1'b1; //공백
  lcd_data = 8'b00100000; 
  end
  14 : begin lcd_rs = 1'b1; //공백
  lcd_data = 8'b00100000; 
  end
  15 : begin lcd_rs = 1'b1;//공백
  lcd_data = 8'b00100000; 
  end
  16 : begin lcd_rs = 1'b1; //공백
  lcd_data = 8'b00100000; 
    end  
  default : begin lcd_rs = 1'b1; lcd_data = 8'b00100000; 
  end
  endcase
  end
    
  delay_t : begin
  lcd_rs = 1'b1; lcd_rw = 1'b1; lcd_data = 8'b00000010;
  end  
    shift : 
   begin    
   lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00011000;
   end 
   
   clear : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00000001;
  end   
  default : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00000000;
  end
  endcase
  end
  end
 
assign lcd_e = clk_100;

endmodule  
