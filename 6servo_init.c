unsigned int i;
void main()
{trisb=0X00;
sound_init(&portc,0);
 sound_play(1500,700) ;
while(1)
{  for(i=0;i<100;i++)

 {
   PORTB.F7=1;        //SERVO_1
   delay_us(1000);
  PORTB.F7=0;
  delay_us(19000);
 }for(i=0;i<100;i++)
 {
   PORTB.F4=1;        //SERVO_2
   delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 } for(i=0;i<100;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(1000);
  PORTB.F1=0;
  delay_us(19000);
  }
  for(i=0;i<100;i++)
 { PORTd.F7=1;        //SERVO_4
   delay_us(1000);
  PORTd.F7=0;
  delay_us(19000);
 }
 for(i=0;i<100;i++)
 {  PORTd.F4=1;        //SERVO_5
   delay_us(1000);
  PORTd.F4=0;
  delay_us(19000);
  }
  for(i=0;i<100;i++)
 { PORTd.F3=1;        //SERVO_6
   delay_us(1000);
  PORTd.F3=0;
  delay_us(19000);
 }
 for(i=0;i<100;i++)

 {
   PORTB.F7=1;        //SERVO_1
   delay_us(2000);
  PORTB.F7=0;
  delay_us(18000);
 }for(i=0;i<100;i++)
 {
   PORTB.F4=1;        //SERVO_2
   delay_us(2000);
  PORTB.F4=0;
  delay_us(18000);
 } for(i=0;i<100;i++)
 { PORTB.F1=1;        //SERVO_3
   delay_us(2000);
  PORTB.F1=0;
  delay_us(18000);
  }
  for(i=0;i<100;i++)
 { PORTd.F7=1;        //SERVO_4
   delay_us(2000);
  PORTd.F7=0;
  delay_us(18000);
 }
 for(i=0;i<100;i++)
 {  PORTd.F4=1;        //SERVO_5
   delay_us(2000);
  PORTd.F4=0;
  delay_us(18000);
  }
  for(i=0;i<100;i++)
 { PORTd.F3=1;        //SERVO_6
   delay_us(2000);
  PORTd.F3=0;
  delay_us(18000);
 }
 }
}