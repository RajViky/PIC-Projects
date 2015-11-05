#line 1 "E:/pic_codes/servo_6_init.c"
unsigned int i;
void main()
{
 trisD=0X00;
 trisB=0X00;
 trisC=0X00;
 trisC.f0=0;
 sound_init(&portc,0);
 sound_play(1000,1000);

 for(i=0;i<75;i++)
 {
 PORTB.F7=1;
 delay_us(1500);
 PORTB.F7=0;
 delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
 PORTB.F4=1;
 delay_us(1500);
 PORTB.F4=0;
 delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
 PORTB.F1=1;
 delay_us(1500);
 PORTB.F1=0;
 delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
 PORTD.F7=1;
 delay_us(1500);
 PORTD.F7=0;
 delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
 PORTD.F4=1;
 delay_us(1500);
 PORTD.F4=0;
 delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
 PORTD.F3=1;
 delay_us(1500);
 PORTD.F3=0;
 delay_us(18500);
 }
sound_play(1000,1000);

}
