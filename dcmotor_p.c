void main()
{  ADCON0 = 0;         //adc =0
   ADCON1 = 0xF0;     // Set all A/D pins as digital I/O pins.
   TRISA = 0X00;
   TRISC = 0x00;
   PORTC = 0X00;
   PORTA = 0b01010000;
   PWM1_Init(5000);
   PWM2_Init(5000);
   Pwm1_Start();
   Pwm2_Start();
   while(1)
   {
   PWM1_Set_Duty(210);
   PWM2_Set_Duty(135);
   Delay_ms(10000);
   PWM1_Set_Duty(255);
   PWM2_Set_Duty(255);
   Delay_ms(10000);
   PWM1_STOP();
   PWM2_STOP();
}
}


