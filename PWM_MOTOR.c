unsigned int line_R, line_C, line_L;  // RE0/AN5 R31/AN6 RE2/AN7
unsigned short xL, xR, xC;
  void initRobot()
{
  //--PWM------------
  TRISC = 0b00000000;
  PORTC = 0b00000000;
  PWM1_Init(5000);
  PWM2_Init(5000);
  Pwm1_Start();
  Pwm2_Start();

  //--ADC-----------_
  ADCON1 = 0x80;  // Configure analog inputs and Vref
  TRISA  = 0xFF;  // PORTA is input

  //--Usart---------
  Usart_Init(9600);

}

/**************************************************************
function: stop
fornisce i dutycile per tenere fermi i motori
**************************************************************/
void stop()
{
 PWM1_Change_Duty(127);
 PWM2_Change_Duty(127);
}
  void main()
{
 initRobot();
 while(1)
 {
  //lettura dello stato dei sensori
  line_R = Adc_Read(5);
  line_C = Adc_Read(6);
  line_L = Adc_Read(7);

  if(line_L<512 & line_C>512 & line_R<512)
  {
   // 0-1-0 vado dritto alla veocità di crociera
   PWM1_Change_Duty(190);
   PWM2_Change_Duty(190);
   Delay_ms(5);
  }
  if(line_L<512 & line_C>512 & line_R>512)
  {
   // 0-1-1 deve accelerare la ruota sinistra
  PWM1_Change_Duty(145);
  PWM2_Change_Duty(190);
  Delay_ms(5);
  }
  if(line_L<512 & line_C<512 & line_R>512)
  {
   // 0-0-1 deve accelerare la ruota sinistra
  PWM1_Change_Duty(135);
  PWM2_Change_Duty(210);
  Delay_ms(5);
  }
   if(line_L>512 & line_C>512 & line_R<512)
  {
   // 1-1-0 deve accelerare la ruota destra
  PWM1_Change_Duty(190);
  PWM2_Change_Duty(145);
  Delay_ms(5);
  }
   if(line_L>512 & line_C<512 & line_R<512)
  {
   // 1-0-0 deve accelerare la ruota destra
   PWM1_Change_Duty(210);
   PWM2_Change_Duty(135);
   Delay_ms(5);
  }
   if(line_L<512 & line_C<512 & line_R<512)
  {
   // 0-0-0 fuori dalla linea, indietro
   PWM1_Change_Duty(90);
   PWM2_Change_Duty(90);
   Delay_ms(5);
  }
 } //end main loop
} //end main()
