#line 1 "E:/pic_codes/led_check_sai.c"
void main()
{
 ADCON1 =0x06;
 TRISA=0X00;
 TRISE=0X00;
 while(1)
 {
 PORTA=0b10101010;
 delay_ms(1000);
 PORTA=0X55;
 delay_ms(1000);
 PORTE=0b00000111 ;
 delay_ms(1000);
 }
}
