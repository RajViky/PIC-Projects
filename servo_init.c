
void main()
{
unsigned int i;
trisb=0x00;
while(1)
{
for(i=0;i<100;i++)
{
 portb= 0xff;
 delay_us(1500);
 portb= 0x00;
 delay_us(18500);
}
}
}