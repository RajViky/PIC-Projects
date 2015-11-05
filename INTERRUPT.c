unsigned short count,read;
char num[10];
void interrupt()
{
TRISC=0X00;
PORTC=0xFF;
INTCON.F1 = 0; /* clear the int flag */
}

void main ( )
{
count=0;
TRISB = 0xFF; /* set up port b */
PORTB = 0X03; /* turn off all and any LED’s on port b */
INTCON.f7=0X01;
OPTION_REG.F6 = 1; /* interrupt on rising edge */
INTCON.f5=0X01;
while(1);
}