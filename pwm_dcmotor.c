/*#define FW PORTA=0b00000
#define LT PORTA=0b00110000
#define RT PORTA=0b01001000
  */
void main()
{
   TRISC = 0x00;
   PORTC.F7=0;
   PORTC.F6=1;
   PORTC.F5=0;
   PORTC.F4=1;
   PWM1_Init(5000);
   PWM2_Init(5000);
   Pwm1_Start();   //R    C2
   Pwm2_Start();   //L    C1
   while(1)
   {
   PWM1_Change_Duty(90);
   PWM2_Change_Duty(210);
   Delay_ms(10000);
   PWM1_Change_Duty(255);
   PWM2_Change_Duty(255);
   Delay_ms(10000);
   PWM1_STOP();
   PWM2_STOP();
   Delay_ms(10000);
}
}
