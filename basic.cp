#line 1 "C:/Users/Divya/Desktop/pic_codes/basic.c"
 unsigned int i;
void main()
{
trisb=0X00;
while(1)
{ for(i=0;i<100;i++)

 {
 PORTB.F7=1;
 delay_us(1000);
 PORTB.F7=0;
 delay_us(19000);
 }for(i=0;i<100;i++)
 {
 PORTB.F4=1;
 delay_us(1000);
 PORTB.F4=0;
 delay_us(19000);
 } for(i=0;i<100;i++)
 { PORTB.F1=1;
 delay_us(1000);
 PORTB.F1=0;
 delay_us(19000);
 }
 for(i=0;i<100;i++)
 { PORTd.F7=1;
 delay_us(1000);
 PORTd.F7=0;
 delay_us(19000);
 }
 for(i=0;i<100;i++)
 { PORTd.F4=1;
 delay_us(1000);
 PORTd.F4=0;
 delay_us(19000);
 }
 for(i=0;i<100;i++)
 { PORTd.F3=1;
 delay_us(1000);
 PORTd.F3=0;
 delay_us(19000);
 }
 for(i=0;i<100;i++)

 {
 PORTB.F7=1;
 delay_us(2000);
 PORTB.F7=0;
 delay_us(1800);
 }for(i=0;i<100;i++)
 {
 PORTB.F4=1;
 delay_us(2000);
 PORTB.F4=0;
 delay_us(18000);
 } for(i=0;i<100;i++)
 { PORTB.F1=1;
 delay_us(2000);
 PORTB.F1=0;
 delay_us(18000);
 }
 for(i=0;i<100;i++)
 { PORTd.F7=1;
 delay_us(2000);
 PORTd.F7=0;
 delay_us(18000);
 }
 for(i=0;i<100;i++)
 { PORTd.F4=1;
 delay_us(2000);
 PORTd.F4=0;
 delay_us(18000);
 }
 for(i=0;i<100;i++)
 { PORTd.F3=1;
 delay_us(2000);
 PORTd.F3=0;
 delay_us(18000);
 }


}
}
