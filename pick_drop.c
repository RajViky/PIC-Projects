void forward_dir()
{
  //front_LEFT_motor
  PORTB.F7=1; //ENABLE BIT
  PORTB.F6=1;
  PORTB.F5=0;
  //front_RIGHT_motor
  PORTB.F4=1; //ENABLE BIT
  PORTB.F3=1;
  PORTB.F2=0;
  //back_LEFT_motor
  PORTB.F1=1;//ENABLE BIT
  PORTB.F0=1;
  PORTD.F7=0;
  //back_RIGHT_motor
  PORTD.F4=1;//ENABLE BIT
  PORTD.F6=1;
  PORTD.F5=0;
}
void reverse_dir()
{
   //front_LEFT_motor
  PORTB.F7=1; //ENABLE BIT
  PORTB.F6=0;
  PORTB.F5=1;
  //front_RIGHT_motor
  PORTB.F4=1; //ENABLE BIT
  PORTB.F3=0;
  PORTB.F2=1;
  //back_LEFT_motor
  PORTB.F1=1;//ENABLE BIT
  PORTB.F0=0;
  PORTD.F7=1;
  //back_RIGHT_motor
  PORTD.F4=1;//ENABLE BIT
  PORTD.F6=0;
  PORTD.F5=1;
}
//void pull_up_motor()

 
void main()
{
 TRISB=0;
 TRISD=0;
 PORTD=0;
 PORTB=0;
 while(1)
 {
 forward_dir();
 delay_ms(40000);
 reverse_dir();
 delay_ms(40000);
 }
}
