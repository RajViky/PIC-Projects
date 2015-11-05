unsigned short kp;
void main()
{

 TRISB=0X0F;
 PORTB=0XFF;
 TRISC=0;
 //PORTC=1;
 //Keypad_Init(&PORTB);
 //PORTB=0B11110000;
 while(1)
 {
 if(PORTB.F1)
 {PORTC=1;
  }
  }

}

