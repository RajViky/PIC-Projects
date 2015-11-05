#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/dc_motor_keypad.c"
unsigned short kp;
void main()
{

 TRISB=0X0F;
 PORTB=0XFF;
 TRISC=0;



 while(1)
 {
 if(PORTB.F1)
 {PORTC=1;
 }
 }

}
