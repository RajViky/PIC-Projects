  unsigned char*text="TEMPERATURE";
  unsigned char temp[20];
  unsigned char temperature[20];
  unsigned int i,j;
  long Vin,vfrac;
  unsigned char ch1,ch2;
  void main()
  {
  TRISA = 0xFF;
  ADCON1 = 0x80   ; // Use AN0, Vref = +5V
  TRISB = 0;                // PORTB is output
  Lcd_Init(&PORTB);         // Initialize LCD connected to PORTB
  Lcd_Cmd(Lcd_CLEAR);       // Clear display
  //Lcd_Cmd(Lcd_CURSOR_OFF);  // Turn cursor off
  Lcd_Out(1, 1,text);      // Print text to LCD, 1nd row, 1st column
  /*for(i=0;i<35;i++)
  {Delay_ms(100);
  Lcd_Cmd(Lcd_SHIFT_RIGHT) ;
  Lcd_Cmd(Lcd_RETURN_HOME);
  } */
  for(;;)
  {
  Vin = Adc_Read(0); // Read from channel 0 (AN0)
  Vin = 4.88*Vin; // Scale up the result
  Vin = Vin /10; // Convert to temperature in C
  vfrac=Vin%100;
  LongToStr(Vin,temp);
  j=0;
  for(i=0;i<=11;i++)
  {
  if(temp[i] != ' ') // If a blank
  {
  temperature[j]=temp[i];
  j++;
  }
  }
  temperature[j] = '.'; // Add “.”
  ch1 = vfrac / 10; // fractional part
  ch2 = vfrac % 10;
  j++;
  temperature[j] = 48+ch1; // Add fractional part
  j++;
  temperature[j] = 48+ch2;
  j++;
 /* temperature[j] = 0x0D; // Add carriage-return
  j++;
  temperature[j] = 0x0A; // Add line-feed
  j++;     */
  temperature[j]='\0';
  Delay_ms(10000) ;
  Lcd_cmd(Lcd_SECOND_ROW)  ;
  Lcd_out(2,1,temperature);
  Lcd_Chr_Cp('c');
  Lcd_Cmd(Lcd_CURSOR_OFF);  // Turn cursor off
  }
 }

