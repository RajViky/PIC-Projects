void main()
{
 TRISB=0x00;
 PORTB=0xf0;
 while(1)
 {
  PORTB=0b11000000;  //FORWARD DIR
  Delay_ms(20000);
  PORTB=0b10100000;  //BACKWARD DIR
  delay_ms(20000);
  portb=0b00000000; // STOP
 }
}