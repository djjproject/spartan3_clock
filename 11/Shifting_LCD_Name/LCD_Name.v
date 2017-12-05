module LCD (clk, rst, lcd_e, lcd_data, lcd_rs, lcd_rw);

input clk, rst; //input�����δ� clk�� rst��ư���� �̿��Ѵ�.
output reg lcd_rs, lcd_rw; //�ʿ��� ������ lcd_rs, lcd_rw
output reg [7:0] lcd_data; //lce_data�� ���� register�����ش�.
output lcd_e; //output���� ���� lcd_e�� wire�����ش�.
wire lcd_e;
reg [3:0] state; //�ؿ��� ������ �� state�̴�.

parameter delay=4'b0000, //���� ����� ���¸�ɾ���� �����ִ� �����̴�.
 func_set=4'b0001,
 entry_mode=4'b0010,
 dis_onoff=4'b0011, 
 line1=4'b0100,
 line2=4'b0101,         
 delay_t=4'b0110,
 clear=4'b0111,
 shift=4'b1000; 

integer num; integer num_to_100; reg clk_100; 

always @ (negedge rst or posedge clk) //�׻� rst�� neg�϶� Ȥ�� clk�� pos�� �� �۵��Ѵ�.
begin
  if (~rst)
   begin //���� rst�� not�����̸� nom_to_100�� 0, clk_100�� 0���� �����Ѵ�.
   num_to_100 = 0;
   clk_100 = 1'b0;
 end
  else if (num_to_100>= 4) //num_to_100�� 4 �̻��� �Ǹ� �ٽ� 0���� �����ش�.
  begin
   num_to_100 = 0;
   clk_100 = ~clk_100;
 end
else
  num_to_100 = num_to_100 + 1; //num_to_100�� 4���� ������ ��� 1�� ��������.
end
 
always @ (negedge rst or posedge clk_100) 
 begin
   if (~rst) //rst�� neg�����̸�, state�� delay�̴�.
 state = delay;
 else
  begin
   case(state)//���س��� num�� ���� �� state�� �ð��� �޶����� �ȴ�.
  delay : //delay�� ���� �ڵ��̴�.
   if (num >= 70) //num�� 70���� Ŀ���� state�� func_set�� �ǰ�
    begin       //num�� �ٽ� 0���� ���ư��� �Ѵ�.
     state = func_set;
     num = 0;
    end
   else //num�� ��� 1�� ��������.
    num = num + 1;
    
  func_set : //func_set�� ���� �ڵ��̴�.
   if (num >= 30) //num�� 30���� Ŀ���� state�� dis_onoff�� �ǰ�
    begin       //num�� �ٽ� 0�� ���ư��� �Ѵ�.
     state = dis_onoff;
     num = 0;
    end
   else
    num = num + 1; //num�� ��� 1�� ��������.
    
  dis_onoff : //dis_onoff�� ���� �ڵ��̴�.
   if (num >= 30) //num�� 30���� Ŀ���� state�� entry_mode�� �ǰ�
    begin      //num�� �ٽ� 0���� ���ư��� �Ѵ�.
     state = entry_mode;
     num = 0;
    end
        else
         num = num + 1; //num�� ��� 1�� �����ش�.
   
  entry_mode : //entry_mode�� ���� �ڵ��̴�.
     if (num >= 30) //num�� 30���� Ŀ���� state�� line1�� �ǰ�
      begin   //num�� 0���� ���ư���.
          state = line1;
      num = 0;
     end
         else
           num = num +1; //num�� ��� 1�� �����ش�.
     
  line1 : //line1�� ���� �ڵ��̴�.
   if (num >= 20) //num�� 20���� Ŀ���� state=line2�� �ǰ�
    begin      //num�� 0���� ���ư���.
     state = line2; 
     num = 0;
    end
   else
    num = num + 1; //num�� ��� 1�� ���Ѵ�.
line2 : //line2�� ���� �ڵ��̴�.
   if (num >= 20) //num�� 20���� Ŀ���� state=shift�� �ǰ�
    begin        //num�� 0���� ���ư���.
     state = shift;
     num = 0;
    end
   else
    num = num + 1; //num�� 1�� �����ش�.
     delay_t : //delay_t�� ���� �ڵ��̴�.
   if (num >= 6) //num�� 6���� Ŀ���� state=shift�� �ǰ�
    begin  //num�� 0���� ���ư���. *�� �������� �ӵ��� ��������.*
     state = shift;
     num = 0;
       end
   else
    num = num + 1;//num�� ��� 1�� �����ش�.
     
  shift : //shift�� ���� �ڵ��̴�.
    state = delay_t; //state=delay_t�� ����.
    
  default : 
    begin
     state = delay; //����Ʈ���� state�� ���� delay�� ����������.
     num = 0;
    end 
 endcase
 end
 end
 
always @ (negedge rst or posedge clk_100)//rst�� neg�� �� Ȥ�� clk_100�� 1�̵Ǹ� ���� ��´�.
begin
  if(~rst)//rst�� not�� �� �� ������ ���� �����ִ� �����̴�.
  begin
  lcd_rs = 1'b1; lcd_rw = 1'b1; lcd_data = 8'b00000000;
  end
  else
   begin
 case(state)//state�� ���� case ����. ������ ���س��� �� state�� ���� �����ִ� �����̴�.
 func_set : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00111100;
  end
  dis_onoff : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00001100;  
  end
  entry_mode : begin
  lcd_rs = 1'b0; lcd_rw = 1'b0; lcd_data = 8'b00000110;
  end   
   line1 :  begin//�������� lcd ǥ�ð� coding�̴�.
  lcd_rw = 1'b0; 
  
  case (num)
  0 : begin lcd_rs = 1'b0; //������ʹ� ���� lcd�� ǥ�õǴ� ���� �ش��ϴ�
   lcd_data = 8'b10000000; //��ǥ�� �����ش�.
  end
  1 : begin lcd_rs = 1'b1; //2�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110010; 
  end
  2 : begin lcd_rs = 1'b1; //0�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110000; 
  end
  3 : begin lcd_rs = 1'b1; //1�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110001; 
  end
  4 : begin lcd_rs = 1'b1; //3�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110011; 
  end
  5 : begin lcd_rs = 1'b1; //4�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110100; 
  end
  6 : begin lcd_rs = 1'b1; //4�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110100;
  end
  7 : begin lcd_rs = 1'b1; //0�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110000; 
  end
  8 : begin lcd_rs = 1'b1; //0�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110000; 
  end
  9 : begin lcd_rs = 1'b1; //0�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110000; 
  end
  10 : begin lcd_rs = 1'b1; //6�� ��Ÿ���� �����̴�.
  lcd_data = 8'b00110110; 
  end
  11 : begin lcd_rs = 1'b1; //�� �����δ� �� �������� �����Ѵ�.
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
  default : begin lcd_rs = 1'b1; //������� ����!
  lcd_data = 8'b00100000; 
  end
  endcase
  end
line2 :  begin//lcd�� �ι�° �ٿ� ���� �ڵ��̴�.
  lcd_rw = 1'b0; 
  
  case (num)
  
  0 : begin lcd_rs = 1'b0; //������ʹ� �̸��� �ش��ϴ�
  lcd_data = 8'b11000000;  //������ ��ǥ�� �����ش�.
  end
  1 : begin lcd_rs = 1'b1; //����� ����
  lcd_data = 8'b00100000; 
  end
  2 : begin lcd_rs = 1'b1; //K�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01001011; 
  end
  3 : begin lcd_rs = 1'b1; //O�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01001111; 
  end
  4 : begin lcd_rs = 1'b1; //����� ����. �����.
  lcd_data = 8'b00100000; 
  end
  5 : begin lcd_rs = 1'b1; //E�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01000101; 
  end
  6 : begin lcd_rs = 1'b1; //U�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01010101;
  end
  7 : begin lcd_rs = 1'b1; //N�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01001110; 
  end
  8 : begin lcd_rs = 1'b1; //����� ����. �����.
  lcd_data = 8'b00100000; 
  end
  9 : begin lcd_rs = 1'b1; //A�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01000001; 
  end
  10 : begin lcd_rs = 1'b1; //H�� �ش��ϴ� ��ǥ�̴�.
  lcd_data = 8'b01001000; 
  end
  11 : begin lcd_rs = 1'b1; //����� ����.
  lcd_data = 8'b00100000; 
  end
  12 : begin lcd_rs = 1'b1; //����
  lcd_data = 8'b00100000; 
  end
  13 : begin lcd_rs = 1'b1; //����
  lcd_data = 8'b00100000; 
  end
  14 : begin lcd_rs = 1'b1; //����
  lcd_data = 8'b00100000; 
  end
  15 : begin lcd_rs = 1'b1;//����
  lcd_data = 8'b00100000; 
  end
  16 : begin lcd_rs = 1'b1; //����
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
