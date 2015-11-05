#line 1 "C:/Users/Divya/Desktop/pic_codes/LEDCHECK.c"
void main()
{
 TRISA=0X00;
 TRISB=0X00;

 while(1)
 {
 PORTA=0x55;
 delay_ms(1000);

 PORTA=0XAA;
 delay_ms(1000);

 }
}
