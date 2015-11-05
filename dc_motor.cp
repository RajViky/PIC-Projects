#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/dc_motor.c"
void main()
{
 TRISB=0x00;
 PORTB=0xf0;
 while(1)
 {
 PORTB=0b11000000;
 Delay_ms(20000);
 PORTB=0b10100000;
 delay_ms(20000);
 portb=0b00000000;
 }
}
