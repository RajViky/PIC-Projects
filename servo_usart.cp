#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/servo_usart.c"
 unsigned short i;
 void main()
 {
 TRISB = 0x00;
 USART_init(19200);
 while(1)
 { if (USART_Data_Ready())
 {
 i = USART_Read();
 i = i-48;
 if( i ==1)
 {
 PORTB = 1;
 delay_us(1500);
 PORTB = 0;
 delay_ms(18);
 delay_us(500);
 delay_ms(1000);
 }
 else if(i==0)
 {
 PORTB = 1;
 delay_us(1250);
 PORTB = 0;
 delay_ms(18);
 delay_us(750);
 delay_ms(1000);
 }
 else if(i==2)
 {
 PORTB = 1;
 delay_us(1750);
 PORTB = 0;
 delay_ms(18);
 delay_us(250);
 delay_ms(1000);
 }
 else
 {
 }
 }
 }
 }
