unsigned int i;
void main()
{
 trisD=0X00;
 for(i=0;i<75;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(1500);
  PORTD.F7=0;
  delay_us(18500);
  }
  for(i=0;i<75;i++)
  {
  PORTD.F7=1;        //SERVO_6
  delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
 }
  for(i=0;i<75;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 }
 }