#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/INTERRUPT.c"
unsigned short count,read;
char num[10];
void interrupt()
{
TRISC=0X00;
PORTC=0xFF;
INTCON.F1 = 0;
}

void main ( )
{
count=0;
TRISB = 0xFF;
PORTB = 0X03;
INTCON.f7=0X01;
OPTION_REG.F6 = 1;
INTCON.f5=0X01;
while(1);
}
