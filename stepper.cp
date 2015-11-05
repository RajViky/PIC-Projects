#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/stepper.c"
#line 24 "C:/Documents and Settings/raj/My Documents/pic_codes/stepper.c"
void main()
{
TRISB=0x00;
PORTB=0x00;

while(1)
{
Delay_ms(2);
PORTB=0b00001000;
Delay_ms(2);
PORTB=0b00001100;

Delay_ms(2);
PORTB=0b00000100;
Delay_ms(2);
PORTB=0b00000110;

Delay_ms(2);
PORTB=0b00000010;
Delay_ms(2);
PORTB=0b00000011;

Delay_ms(2);
PORTB=0b00000001;
Delay_ms(2);
PORTB=0b00001001;
}
}
