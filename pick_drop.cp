#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/pick_drop.c"
void forward_dir()
{

 PORTB.F7=1;
 PORTB.F6=1;
 PORTB.F5=0;

 PORTB.F4=1;
 PORTB.F3=1;
 PORTB.F2=0;

 PORTB.F1=1;
 PORTB.F0=1;
 PORTD.F7=0;

 PORTD.F4=1;
 PORTD.F6=1;
 PORTD.F5=0;
}
void reverse_dir()
{

 PORTB.F7=1;
 PORTB.F6=0;
 PORTB.F5=1;

 PORTB.F4=1;
 PORTB.F3=0;
 PORTB.F2=1;

 PORTB.F1=1;
 PORTB.F0=0;
 PORTD.F7=1;

 PORTD.F4=1;
 PORTD.F6=0;
 PORTD.F5=1;
}



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
