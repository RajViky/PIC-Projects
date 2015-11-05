#line 1 "E:/pic_codes/pwm.c"
#line 20 "E:/pic_codes/pwm.c"
void main()
 {
 unsigned char dc ;

 TRISC = 0 ;
 PORTC = 0 ;
#line 30 "E:/pic_codes/pwm.c"
 PR2 = 0b01111100 ;
 T2CON = 0b00000101 ;
 CCP1CON = 0b00001100 ;
 CCP2CON = 0b00111100 ;

 for(;;)
 {
#line 42 "E:/pic_codes/pwm.c"
 for(dc = 0 ; dc < 128 ; dc++)
 {
 CCPR1L = dc ;
 CCPR2L = 128 - dc ;
 Delay_ms(10) ;
 }
 for(dc = 127 ; dc > 0 ; dc--)
 {
 CCPR1L = dc ;
 CCPR2L = 128 - dc ;
 Delay_ms(10) ;
 }
 }
 }
