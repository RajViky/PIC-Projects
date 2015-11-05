unsigned int i;
void start()
{
 sound_play(1000,1000);
for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1500);
  PORTB.F7=0;
  delay_us(18500);
 }
 for(i=0;i<10;i++)
 { PORTB.F4=1;        //SERVO_2
   delay_us(1500);
  PORTB.F4=0;
  delay_us(18500);
 }
 for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1500);
  PORTB.F1=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(1500);
  PORTD.F7=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F4=1;        //SERVO_5
   delay_us(1500);
  PORTD.F4=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(1500);
  PORTD.F3=0;
  delay_us(18500);
 }
}
void servo_fwd_seq_1()
{
for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1570);
  PORTB.F7=0;
  delay_us(18430);
 }
 for(i=0;i<10;i++)
 { PORTB.F4=1;        //SERVO_2
   delay_us(2100);
  PORTB.F4=0;
  delay_us(17900);
 }
 for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1430);
  PORTB.F1=0;
  delay_us(18570);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(1000);
  PORTD.F7=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 { PORTD.F4=1;        //SERVO_5
   delay_us(1570);
  PORTD.F4=0;
  delay_us(18430);
  }for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(2100);
  PORTD.F3=0;
  delay_us(17900);
 }
 }

void servo_fwd_seq_2()
{
  for(i=0;i<10;i++)
  {
  PORTB.F7=1;        //SERVO_1
  delay_us(1430);
  PORTB.F7=0;
  delay_us(18570);
 }
 for(i=0;i<10;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 }
 for(i=0;i<10;i++)
 {
  PORTB.F1=1;        //SERVO_3
  delay_us(1570);
  PORTB.F1=0;
  delay_us(18430);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
  }
  for(i=0;i<10;i++)
 { PORTD.F4=1;        //SERVO_5
   delay_us(1430);
  PORTD.F4=0;
  delay_us(18570);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
  }
}
void servo_left_seq_1()
{
  for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1500);
  PORTB.F7=0;
  delay_us(18500);
 }for(i=0;i<10;i++)
 {
   PORTB.F4=1;        //SERVO_2
   delay_us(2100);
  PORTB.F4=0;
  delay_us(17900);
 } for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1500);
  PORTB.F1=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(1000);
  PORTD.F7=0;
  delay_us(19000);
 }
 for(i=0;i<10;i++)
 {  PORTD.F4=1;        //SERVO_5
   delay_us(1500);
  PORTD.F4=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(2100);
  PORTD.F3=0;
  delay_us(17900);
 }

}
void servo_left_seq_2()
{
  for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1000);
  PORTB.F7=0;
 } delay_us(19000);
 for(i=0;i<10;i++)
 {
   PORTB.F4=1;        //SERVO_2
   delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 }
 for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1000);
  PORTB.F1=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
 }
 for(i=0;i<10;i++)
 {  PORTD.F4=1;        //SERVO_5
   delay_us(1000);
  PORTD.F4=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
 }
}
 void servo_right_seq_1()

{  for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1500);
  PORTB.F7=0;
  delay_us(18500);
 }for(i=0;i<10;i++)
 {
   PORTB.F4=1;        //SERVO_2
   delay_us(2100);
  PORTB.F4=0;
  delay_us(17900);
 }
 for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1500);
  PORTB.F1=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(1000);
  PORTD.F7=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 { PORTD.F4=1;        //SERVO_5
   delay_us(1500);
  PORTD.F4=0;
  delay_us(18500);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(2100);
  PORTD.F3=0;
  delay_us(17900);
 }
}
void servo_right_seq_2()
{
  for(i=0;i<10;i++)
 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1900);
  PORTB.F7=0;
  delay_us(18100);
  }
  for(i=0;i<10;i++)
 { PORTB.F4=1;        //SERVO_2
   delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1900);
  PORTB.F1=0;
  delay_us(18100);
  }
  for(i=0;i<10;i++)
 { PORTD.F7=1;        //SERVO_4
   delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
  }
  for(i=0;i<10;i++)
 { PORTD.F4=1;        //SERVO_5
   delay_us(1900);
  PORTD.F4=0;
  delay_us(18100);
  }
  for(i=0;i<10;i++)
 { PORTD.F3=1;        //SERVO_6
   delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
 }
}

void main()
{
 TRISD=0X00;
 TRISB=0X00;
 TRISC.B0=0;
 sound_init(&PORTC,0);
 start();
 while(1);
 {
 servo_fwd_seq_1();
 servo_fwd_seq_2();
 servo_left_seq_1();
 servo_fwd_seq_1();
 servo_fwd_seq_2();
 servo_left_seq_2();
 servo_fwd_seq_1();
 servo_fwd_seq_2();
 servo_right_seq_1();
 servo_right_seq_2();

 }
}
