#line 1 "E:/pic_codes/pwm_dcmotor.c"
#line 5 "E:/pic_codes/pwm_dcmotor.c"
void main()
{
 TRISC = 0x00;
 PORTC.F7=0;
 PORTC.F6=1;
 PORTC.F5=0;
 PORTC.F4=1;
 PWM1_Init(5000);
 PWM2_Init(5000);
 Pwm1_Start();
 Pwm2_Start();
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
