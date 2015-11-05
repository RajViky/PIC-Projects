void main()
{
int i;
for(i=0;i<100;i++) {
PORTB = 0x01;
delay_us(1000);
PORTB = 0x00;
delay_us(19000);
}
for(i=0;i<100;i++) {
PORTB = 0x01;
delay_us(2000);
PORTB = 0x00;
delay_us(18000);
}
}