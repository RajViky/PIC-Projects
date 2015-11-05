/*
wave drive mode
void main()
{
TRISB=0x00;
PORTB=0x00;

while(1)
{

Delay_ms(3);
PORTB=0b00001000;
Delay_ms(3);
PORTB=0b00000100;
Delay_ms(3);
PORTB=0b00000010;
Delay_ms(3);
PORTB=0b00000001;
}
}         */

//half step mode

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

//high torque stepping mode
     /*
void main()
{
TRISB=0x00;
PORTB=0x00;

while(1)
{
Delay_ms(2);
PORTB=0b00001100;
Delay_ms(2);
PORTB=0b00000110;
Delay_ms(2);
PORTB=0b00000011;
Delay_ms(2);
PORTB=0b00001001;
}
}