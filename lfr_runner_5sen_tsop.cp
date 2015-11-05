#line 1 "E:/pic_codes/lfr_runner_5sen_tsop.c"
unsigned int s1,s2,s3,s4,s5;
unsigned short int basespeed = 190, Kp = 20, Ki = 10, Kd = 8;
float rightpulse=0,leftpulse=0,perror=0,error=0,PROPORTIONAL=0,INTEGRAL=0,DERIVATIVE=0,correction=0;
char lastreading;
unsigned int count=0;
void initport()
{
 ADCON1 =0x06;
 PORTA = 0;
 PORTE = 0;
 TRISA = 0x3F;
 TRISE = 0x03;
 TRISD = 0x00;
 TRISC = 0b00000000;
 TRISB = 0b11000000;
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
}

void motor_LF()
{
 PORTC.F5 = 1;
 PORTC.F4 = 0;
}

void motor_LB()
{
 PORTC.F5 = 0;
 PORTC.F4 = 1;
}
void indicator()
{

 PORTD.F7 = 0;
 PORTD.F6 = 0;
 PORTD.F5 = PORTA.F2;
 PORTD.F4 = PORTA.F3;
 PORTD.F3 = PORTA.F4;
 PORTD.F2 = PORTA.F5;
 PORTD.F1 = PORTE.F0;
 PORTD.F0 = 0;
}
void CalcError()
{
 s1 = 0;
 s2 = 0;
 s3 = 0;
 s4 = 0;
 s5 = 0;

 if(PORTA.F2)
 {
 lastreading='r';
 s1 = 1;
 }
 if(PORTA.F3)
 {
 s2 = 1;
 }
 if(PORTA.F4)
 {
 s3 = 1;
 }
 if(PORTA.F5)
 {

 s4 = 1;
 }
 if(PORTE.F0)
 {
 lastreading='l';
 s5 = 1;
 }

 perror = error;



 error = (s1 * 1) + (s2 * 2) + (s3 * 3) + (s4 * 4) + (s5 * 5) ;
 error = (error)/(s1+s2+s3+s4+s5);
 error = error - 3;
}
void main()
{

 initport();
 initpwm();
 fwd : ;
 while(1)
 {
 indicator();
 CalcError();
 if((error == 0) && (s3==1) && ((s1+s2+s4+s5)==0))
 {
 motor_LF();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 if((s1+s2+s3+s4+s5) == 0)
 {
 if(lastreading == 'r')
 {
 motor_RB();
 motor_LF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 if(lastreading == 'l')
 {
 motor_LB();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 }
 else
 {
 PROPORTIONAL = error * kp;
 INTEGRAL += error ;
 INTEGRAL *= ki;
 DERIVATIVE = (error - perror);
 correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
 rightpulse = basespeed + correction;
 leftpulse = basespeed - correction;
 motor_RF();
 motor_LF();

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
 delay_ms(10);

 if (PORTB.F7==0)
 goto back;
}
 back:
{
 while(1)
 {
 indicator();
 CalcError();
 if((error == 0) && (s3==1) && ((s1+s2+s4+s5)==0))
 {
 motor_LB();
 motor_RB();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 if((s1+s2+s3+s4+s5) == 0)
 {
 if(lastreading == 'r')
 {
 motor_RF();
 motor_LB();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 if(lastreading == 'l')
 {
 motor_LF();
 motor_RB();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 }
 else
 {
 PROPORTIONAL = error * kp;
 INTEGRAL += error ;
 INTEGRAL *= ki;
 DERIVATIVE = (error - perror);
 correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
 rightpulse = basespeed + correction;
 leftpulse = basespeed - correction;
 motor_RF();
 motor_LF();

 if(leftpulse > 255)
 leftpulse = 255;

 if(rightpulse > 255)
 rightpulse = 255;

 if(leftpulse < 0)
 leftpulse = 0;

 if(rightpulse < 0)
 rightpulse = 0;

 PWM1_CHANGE_DUTY(leftpulse);
 PWM2_CHANGE_DUTY(rightpulse);
 }
 delay_ms(10);

 if(PORTB.F6 == 0)
 goto fwd ;
 }
 }
}
