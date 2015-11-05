#line 1 "C:/Documents and Settings/All Users/Documents/pic_codes/servo_test.c"

void main()
{unsigned int i;
 trisb=0x00;
 while(1)
 {
 for(i=0;i<100;i++)
 {
 portb= 0xff;
 delay_us(1000);
 portb=0x00;
 delay_us(19000);
 }
 for(i=0;i<100;i++)
 {
 portb= 0Xff;
 delay_us(2000);
 portb= 0X00;
 delay_us(18000);

 }
 }
}
