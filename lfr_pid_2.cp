#line 1 "E:/pic_codes/lfr_pid_2.c"
unsigned int s1,s2,s3,s4,s5,s6,s7,s8;
unsigned short int basespeed = 60, Kp1 = 80, Ki1 = 50,Kd1 = 6 ,Kp2 = 260, Ki2 = 180, Kd2 = 20;
float rightpulse=0,leftpulse=0,perror=0,error=0,PROPORTIONAL=0,INTEGRAL=0,DERIVATIVE=0,correction=0;
char lastreading;
void initport()
{
 ADCON1 =0x06;
 PORTA = 0;
 PORTE = 0;
 TRISA = 0x3F;
 TRISE = 0x03;
 TRISD = 0x00;
 TRISC = 0b00000000;
}

void initpwm()
{
 PWM1_Init(5000);
 PWM2_Init(5000);
 Pwm1_Start();
 Pwm2_Start();
}

void motor_RF()
{
 PORTC.F7 = 1;
 PORTC.F6 = 0;

}

void motor_RB()
{
 PORTC.F7 = 0;
 PORTC.F6 = 1;
 lastreading = 'n';
}

void motor_LF()
{
 PORTC.F5 = 1;
 PORTC.F4 = 0;
 lastreading = 'n';
}

void motor_LB()
{
 PORTC.F5 = 0;
 PORTC.F4 = 1;
}
void indicator()
{
 PORTD.F0 = PORTA.F0;
 PORTD.F1 = PORTA.F1;
 PORTD.F2 = PORTA.F2;
 PORTD.F3 = PORTA.F3;
 PORTD.F4 = PORTA.F4;
 PORTD.F5 = PORTA.F5;
 PORTD.F6 = PORTE.F0;
 PORTD.F7 = PORTE.F1;
}
void CalcError()
{
 s1 = 0;
 s2 = 0;
 s3 = 0;
 s4 = 0;
 s5 = 0;
 s6 = 0;
 s7 = 0;
 s8 = 0;

 if( (error>=1)|| (error<=4) || (error >=-1) || (error<=-4))
 {
 if(PORTA.F0)
 {
 lastreading='r';
 s1 = 1;
 }
 if(PORTA.F1)
 s2 = 1;
 if(PORTA.F2)
 s3 = 1;
 if(PORTA.F3)
 s4 = 1;
 if(PORTA.F4)
 s5 = 1;
 if(PORTA.F5)
 s6 = 1;
 if(PORTE.F0)
 s7 = 1;
 if(PORTE.F1)
 {
 lastreading='l';
 s8 = 1;
 }
 }
 else
 {
 if(PORTA.F0)
 {
 lastreading='r';
 s1 = 0;
 }
 if(PORTE.F1)
 {
 lastreading='l';
 s8 = 0;
 }
 }
 perror = error;

 error = (s1 * 1) + (s2 * 2) + (s3 * 3) + (s4 * 4) + (s5 * 5) + (s6 * 6) +(s7 * 7) + (s8*8);
 error = (error)/(s1+s2+s3+s4+s5+s6+s7+s8);
 error = error - 4.5;


}
void main()
{

 initport();
 initpwm();
 while(1)
 {
 indicator();
 CalcError();
 if((error == 0) && (s4+s5==2) && ((s1+s2+s3+s6+s7+s8)==0))
 {
 motor_LF();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(5);
 }
 if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)
 {
 if(lastreading == 'r')
 {
 motor_RB();
 motor_LF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(5);
 }
 else if(lastreading == 'l')
 {
 motor_LB();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(5);
 }
 }
 else
 {
 if( (error>=1)|| (error<=4) || (error >=-1) || (error<=-4))
 {
 PROPORTIONAL = error * kp1;
 INTEGRAL += error ;
 INTEGRAL *= ki1;
 DERIVATIVE = (error - perror);
 correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd1));
 rightpulse = basespeed - correction;
 leftpulse = basespeed + correction;
 motor_RF();
 motor_LF();
 }
 else
 {
 error = -error;
 PROPORTIONAL = error * kp2;
 INTEGRAL += error ;
 INTEGRAL *= ki2;
 DERIVATIVE = (error - perror);
 correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd2));
 rightpulse = basespeed - correction;
 leftpulse = basespeed + correction;
 motor_RF();
 motor_LF();
 }

 if(leftpulse > 255)
 leftpulse = 255;

 if(rightpulse > 255)
 rightpulse = 255;

 if(leftpulse < 0)
 leftpulse = 0;

 if(rightpulse < 0)
 rightpulse = 0;

 PWM1_CHANGE_DUTY(rightpulse);
 PWM2_CHANGE_DUTY(leftpulse);
 }
 delay_ms(5);
 }
 }
