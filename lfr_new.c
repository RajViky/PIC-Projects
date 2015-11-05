 /*
#define pos-3 0b11000000
#define pos-2 0b01100000
#define pos-1 0b00110000
#define pos0 0b00011000
#define pos1 0b00001100
#define pos2 0b00000110
#define pos3 0b00000011
*/
unsigned int s1,s2,s3,s4,s5,s6,s7,s8;
unsigned short int basespeed = 150, Kp = 100, Ki = 5, Kd = 10;   // 100 15 20
float rightpulse=0,leftpulse=0,perror=0,error=0,PROPORTIONAL=0,INTEGRAL=0,DERIVATIVE=0,correction=0;
char lastreading;
unsigned int counter;
void initport()
{
  ADCON1 =0x06;          //TURN OFF ADC AND CONFIGURE A AND E AS DIG I/O
  PORTA = 0;             //CLEAR PORTA
  PORTE = 0;             //CLEAR PORTE
  TRISA = 0x3F;          //INITIALIZE PORTA AS INPUT
  TRISE = 0x03;          //INITIALIZE PORTE AS INPUT
  TRISD = 0x00;          //INITIALIZE PORTD AS OUTPUT
  TRISC = 0b00000000;    //INITIALIZE PORTC AS OUTPUT
  T1CON.TMR1CS    = 0;  // assign clock source to instruction clock
  T1CON.T1CKPS1   = 1;  // prescaler set to 8 for 4MHz xtal
  T1CON.T1CKPS0   = 1;
  //T1CON.TMR1ON    = 1;  // enable timer1
  TMR1H = 0xFF;         // set timer1H to known value
  TMR1L = 0x83;         // set timer1L to known value
  PIE1.TMR1IE = 1;      // enable timer1 interrupt source
  PIR1.TMR1IF = 0;      // Clear timer1 interrupt flag
  INTCON.PEIE = 1;      // enable peripheral interrupts
  INTCON.GIE  = 1;      // enable global interrupts
}

void initpwm()
{
  PWM1_Init(5000);
  PWM2_Init(5000);
  Pwm1_Start();          //RIGHT MOTOR
  Pwm2_Start();          //LEFT MOTOR
}

void motor_RF()         //RIGHT MOTOR FWD DIR
{
  PORTC.F7 = 1;
  PORTC.F6 = 0;
}

void motor_RB()         //RIGHT MOTOR REV DIR
{
  PORTC.F7 = 0;
  PORTC.F6 = 1;
}

void motor_LF()         //LEFT MOTOR FWD DIR
{
  PORTC.F5 = 1;
  PORTC.F4 = 0;
}

void motor_LB()         //LEFT MOTOR REV DIR
{
  PORTC.F5 = 0;
  PORTC.F4 = 1;
}
void interrupt()
{
   if (PIR1.TMR1IF == 1)   // timer1 interrupt flag is set.
   {
     counter++;           // add 1 to counter every time an interrupt happens
     PIR1.TMR1IF = 0;     // clear the interrupt flag
     TMR1H = 0xFF;        // set timer1H to known value
     TMR1L = 0x83;        // set timer1L to known value
   }
}                         // exit interrupt

void indicator()        //COPY THE SENSOR OUTPUT TO PORTD-INDICATOR
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
void CalcError()								//calculates the current error
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
    //lastreading='u';
    s2 = 1;
  }
  if(PORTA.F2)
	{
    s3 = 1;
  }
	if(PORTA.F3)
	{
	 // lastreading='u';
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
   // lastreading='u';
    s7 = 1;
  }
	if(PORTE.F1)
  {
    lastreading='l';
    s8 = 1;
  }
  perror = error;
  //THE FOLLOWING STATEMENT CALCULATES THE ERROR
  error = (s1 * 1) + (s2 * 2) + (s3 * 3) + (s4 * 4) + (s5 * 5) + (s6 * 6) +(s7 * 7) + (s8*8);
	error = (error)/(s1+s2+s3+s4+s5+s6+s7+s8);
	error = error - 4.5;
}
void main()
{
  //CALL THE INITIALIZING FUNCTION
  initport();
  initpwm();
 while(1)
 {
   indicator();
   CalcError();
   if((error == 0) && (s4+s5==2))
   {
      T1CON.TMR1ON    = 0;
      motor_LF();					        	    //FWD AT FULL SPEED
      motor_RF();
		  PWM1_CHANGE_DUTY(255);
			PWM2_CHANGE_DUTY(255);
      delay_ms(10);
   }
   if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)		//ROBOT HAS OVERSHOOT
	 {
         T1CON.TMR1ON = 0;
				if(lastreading == 'r')				  //CHECKS IF THE LAST SENSOR ACTIVATED WAS RIGHT
				{
          T1CON.TMR1ON = 0;
					motor_RB();						        //TURN RIGHT AT FULL SPEED
					motor_LF();
          PWM1_CHANGE_DUTY(255);
          PWM2_CHANGE_DUTY(255);
          delay_ms(10);
          //error=0;
       	}
        else if(lastreading == 'l')			  //CHECKS IF THE LAST SENSOR ACTIVATED WAS LEFT
      {
          T1CON.TMR1ON = 0;
					motor_LB();					        	//TURN LEFT AT FULL SPEED
          motor_RF();
					PWM1_CHANGE_DUTY(255);
					PWM2_CHANGE_DUTY(255);
          delay_ms(10);
          //error=0;
				}

    }
    if ( counter>200)
    {
          T1CON.TMR1ON    = 0;
          PORTC.F7 = 0;
          PORTC.F6 = 0;
          PORTC.F5 = 0;
          PORTC.F4 = 0;
          while(1);
     }
    if( (s1+s2+s3+s4+s5+s6+s7) == 7 || (s2+s3+s4+s5+s6+s7+s8) == 7 || (s1+s2+s3+s4+s5+s6+s7+s8) == 8)
     // TO STOP THE MOTOR AT THE END OF LINE
      {
        T1CON.TMR1ON    = 1;  // enable timer1
       // delay_ms(3) ;
       // if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)
       /* {
          PORTC.F7 = 0;
          PORTC.F6 = 0;
          PORTC.F5 = 0;
          PORTC.F4 = 0;  */

      }
   else  									              //ROBOT ON THE LINE
			{
			  T1CON.TMR1ON    = 0;
				PROPORTIONAL = error * kp;
        INTEGRAL += error ;
        INTEGRAL *= ki;
        DERIVATIVE = (error - perror);
        correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
        rightpulse =  basespeed + (correction/2);
        leftpulse = basespeed - (correction/2);
        motor_RF();
        motor_LF();

       if(leftpulse > 255)                  //LEFT CORRECTION EXCEED
		   leftpulse = 255;
       if(rightpulse > 255)                 //RIGHT CORRECTION EXCEED
	     rightpulse = 255;
       if(leftpulse < 0)                    //LEFT CORRECTION EXCEED
		   leftpulse = 0;
       if(rightpulse < 0)                   //RIGHT CORRECTION EXCEED
		   rightpulse = 0;
       PWM1_CHANGE_DUTY(rightpulse);
       PWM2_CHANGE_DUTY(leftpulse);
     }
   delay_ms(10);
  }
}
