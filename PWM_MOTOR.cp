#line 1 "E:/pic_codes/PWM_MOTOR.c"
unsigned int line_R, line_C, line_L;
unsigned short xL, xR, xC;
 void initRobot()
{

 TRISC = 0b00000000;
 PORTC = 0b00000000;
 PWM1_Init(5000);
 PWM2_Init(5000);
 Pwm1_Start();
 Pwm2_Start();


 ADCON1 = 0x80;
 TRISA = 0xFF;


 Usart_Init(9600);

}
#line 26 "E:/pic_codes/PWM_MOTOR.c"
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

 line_R = Adc_Read(5);
 line_C = Adc_Read(6);
 line_L = Adc_Read(7);

 if(line_L<512 & line_C>512 & line_R<512)
 {

 PWM1_Change_Duty(190);
 PWM2_Change_Duty(190);
 Delay_ms(5);
 }
 if(line_L<512 & line_C>512 & line_R>512)
 {

 PWM1_Change_Duty(145);
 PWM2_Change_Duty(190);
 Delay_ms(5);
 }
 if(line_L<512 & line_C<512 & line_R>512)
 {

 PWM1_Change_Duty(135);
 PWM2_Change_Duty(210);
 Delay_ms(5);
 }
 if(line_L>512 & line_C>512 & line_R<512)
 {

 PWM1_Change_Duty(190);
 PWM2_Change_Duty(145);
 Delay_ms(5);
 }
 if(line_L>512 & line_C<512 & line_R<512)
 {

 PWM1_Change_Duty(210);
 PWM2_Change_Duty(135);
 Delay_ms(5);
 }
 if(line_L<512 & line_C<512 & line_R<512)
 {

 PWM1_Change_Duty(90);
 PWM2_Change_Duty(90);
 Delay_ms(5);
 }
 }
}
