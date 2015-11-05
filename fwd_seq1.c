unsigned int i,j,k,l;
long Vin,v;
long temp_sensor()
{
 Vin = Adc_Read(2); // Read from channel 2 (AN2)
 Vin = 4.88*Vin;    // Scale up the result
 Vin = Vin /10;     // Convert to temperature in C
 return Vin;
}
void start()
{
 sound_play(1000,1000);
 for(i=0;i<75;i++)
 {
  PORTB.F7=1;        //SERVO_1
  delay_us(1500);
  PORTB.F7=0;
  delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1500);
  PORTB.F4=0;
  delay_us(18500);
 }
 for(i=0;i<75;i++)
 {
  PORTB.F1=1;        //SERVO_3
  delay_us(1500);
  PORTB.F1=0;
  delay_us(18500);
  }
  for(i=0;i<75;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(1500);
  PORTD.F7=0;
  delay_us(18500);
  }
  for(i=0;i<75;i++)
 {
  PORTD.F4=1;        //SERVO_5
  delay_us(1500);
  PORTD.F4=0;
  delay_us(18500);
  }
  for(i=0;i<75;i++)
 {
  PORTD.F3=1;        //SERVO_6
  delay_us(1500);
  PORTD.F3=0;
  delay_us(18500);
 }
 sound_play(1000,1000);
}
void main()
{
 TRISA = 0xFF;
 ADCON1 = 0x20; // Use AN0, Vref = +5V
 trisD=0X00;
 trisB=0X00;
 trisC=0X00;
 sound_init(&portc,0);
 start();

 while(1)
{
 if(v>50)
 {
 portc.f0=1;
 }
for(j=0;j<10;j++)
{
 for(i=0;i<10;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(2100);
  PORTB.F4=0;
  delay_us(17900);
 }
 for(i=0;i<10;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(1000);
  PORTD.F7=0;
  delay_us(19000);
  }
 for(i=0;i<10;i++)
 {
  PORTD.F3=1;        //SERVO_6
  delay_us(2100);
  PORTD.F3=0;
  delay_us(17900);
 }

 //second reverse cyle
  for(i=0;i<10;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 }
  for(i=0;i<10;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
 }
  for(i=0;i<10;i++)
 {
  PORTD.F3=1;        //SERVO_6
  delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
 }
}
// left sequesnce
for(k=0;k<10;k++)
{
 for(i=0;i<10;i++)
 {
  PORTB.F7=1;        //SERVO_1
  delay_us(1000);
  PORTB.F7=0;
  delay_us(19000);
 }
 for(i=0;i<10;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
 }
 for(i=0;i<10;i++)
 {
  PORTB.F1=1;        //SERVO_3
  delay_us(1000);
  PORTB.F1=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
 }
 for(i=0;i<10;i++)
 {
  PORTD.F4=1;        //SERVO_5
  delay_us(1000);
  PORTD.F4=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 {
  PORTD.F3=1;        //SERVO_6
  delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
 }
}
for(l=0;l<10;l++)     //right sequence
{
 for(i=0;i<10;i++)
 {
  PORTB.F7=1;        //SERVO_1
  delay_us(1900);
  PORTB.F7=0;
  delay_us(18100);
  }
  for(i=0;i<10;i++)
 {
  PORTB.F4=1;        //SERVO_2
  delay_us(1000);
  PORTB.F4=0;
  delay_us(19000);
  }
  for(i=0;i<10;i++)
 {
  PORTB.F1=1;        //SERVO_3
  delay_us(1900);
  PORTB.F1=0;
  delay_us(18100);
  }
  for(i=0;i<10;i++)
 {
  PORTD.F7=1;        //SERVO_4
  delay_us(2100);
  PORTD.F7=0;
  delay_us(17900);
  }
  for(i=0;i<10;i++)
 {
  PORTD.F4=1;        //SERVO_5
  delay_us(1900);
  PORTD.F4=0;
  delay_us(18100);
  }

  for(i=0;i<10;i++)
 {
  PORTD.F3=1;        //SERVO_6
  delay_us(1000);
  PORTD.F3=0;
  delay_us(19000);
 }
}
}
}