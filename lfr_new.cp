#line 1 "C:/Documents and Settings/rajesh/Desktop/pic_codes/lfr_new.c"
#line 10 "C:/Documents and Settings/rajesh/Desktop/pic_codes/lfr_new.c"
unsigned int s1,s2,s3,s4,s5,s6,s7,s8;
unsigned short int basespeed = 150, Kp = 100, Ki = 5, Kd = 10;
float rightpulse=0,leftpulse=0,perror=0,error=0,PROPORTIONAL=0,INTEGRAL=0,DERIVATIVE=0,correction=0;
char lastreading;
unsigned int counter;
void initport()
{
 ADCON1 =0x06;
 PORTA = 0;
 PORTE = 0;
 TRISA = 0x3F;
 TRISE = 0x03;
 TRISD = 0x00;
 TRISC = 0b00000000;
 T1CON.TMR1CS = 0;
 T1CON.T1CKPS1 = 1;
 T1CON.T1CKPS0 = 1;

 TMR1H = 0xFF;
 TMR1L = 0x83;
 PIE1.TMR1IE = 1;
 PIR1.TMR1IF = 0;
 INTCON.PEIE = 1;
 INTCON.GIE = 1;
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
void interrupt()
{
 if (PIR1.TMR1IF == 1)
 {
 counter++;
 PIR1.TMR1IF = 0;
 TMR1H = 0xFF;
 TMR1L = 0x83;
 }
}

void indicator()
{
 PORTD.F7 = PORTA.F0;
 PORTD.F6 = PORTA.F1;
 PORTD.F5 = PORTA.F2;
 PORTD.F4 = PORTA.F3;
 PORTD.F3 = PORTA.F4;
 PORTD.F2 = PORTA.F5;
 PORTD.F1 = PORTE.F0;
 PORTD.F0 = PORTE.F1;
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

 if(PORTA.F0)
 {
 lastreading='r';
 s1 = 1;
 }
 if(PORTA.F1)
 {

 s2 = 1;
 }
 if(PORTA.F2)
 {
 s3 = 1;
 }
 if(PORTA.F3)
 {

 s4 = 1;
 }
 if(PORTA.F4)
 {
 s5 = 1;
 }
 if(PORTA.F5)

 s6 = 1;
 if(PORTE.F0)
 {

 s7 = 1;
 }
 if(PORTE.F1)
 {
 lastreading='l';
 s8 = 1;
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
 if((error == 0) && (s4+s5==2))
 {
 T1CON.TMR1ON = 0;
 motor_LF();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);
 }
 if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)
 {
 T1CON.TMR1ON = 0;
 if(lastreading == 'r')
 {
 T1CON.TMR1ON = 0;
 motor_RB();
 motor_LF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);

 }
 else if(lastreading == 'l')
 {
 T1CON.TMR1ON = 0;
 motor_LB();
 motor_RF();
 PWM1_CHANGE_DUTY(255);
 PWM2_CHANGE_DUTY(255);
 delay_ms(10);

 }

 }
 if ( counter>200)
 {
 T1CON.TMR1ON = 0;
 PORTC.F7 = 0;
 PORTC.F6 = 0;
 PORTC.F5 = 0;
 PORTC.F4 = 0;
 while(1);
 }
 if( (s1+s2+s3+s4+s5+s6+s7) == 7 || (s2+s3+s4+s5+s6+s7+s8) == 7 || (s1+s2+s3+s4+s5+s6+s7+s8) == 8)

 {
 T1CON.TMR1ON = 1;
#line 206 "C:/Documents and Settings/rajesh/Desktop/pic_codes/lfr_new.c"
 }
 else
 {
 T1CON.TMR1ON = 0;
 PROPORTIONAL = error * kp;
 INTEGRAL += error ;
 INTEGRAL *= ki;
 DERIVATIVE = (error - perror);
 correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
 rightpulse = basespeed + (correction/2);
 leftpulse = basespeed - (correction/2);
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
 }
}
