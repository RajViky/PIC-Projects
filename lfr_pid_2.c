unsigned int s1,s2,s3,s4,s5,s6,s7,s8;
unsigned short int basespeed = 60, Kp1 = 80, Ki1 = 50,Kd1 = 6 ,Kp2 = 260, Ki2 = 180, Kd2 = 20;
float rightpulse=0,leftpulse=0,perror=0,error=0,PROPORTIONAL=0,INTEGRAL=0,DERIVATIVE=0,correction=0;
char lastreading;
void initport()
{
  ADCON1 =0x06;          //TURN OFF ADC AND CONFIGURE A AND E AS DIG I/O
  PORTA = 0;             //CLEAR PORTA
  PORTE = 0;             //CLEAR PORTE
  TRISA = 0x3F;          //INITIALIZE PORTA AS INPUT
  TRISE = 0x03;          //INITIALIZE PORTE AS INPUT
  TRISD = 0x00;          //INITIALIZE PORTD AS OUTPUT
  TRISC = 0b00000000;    //INITIALIZE PORTC AS OUTPUT
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
  lastreading = 'n';
}

void motor_LF()         //LEFT MOTOR FWD DIR
{
  PORTC.F5 = 1;
  PORTC.F4 = 0;
  lastreading = 'n';
}

void motor_LB()         //LEFT MOTOR REV DIR
{
  PORTC.F5 = 0;
  PORTC.F4 = 1;
}
void indicator()        //COPY THE SENSOR OUTPUT TO PORTD-INDICATOR
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
  else                                   // FOR WHITE LINE
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
  //THE FOLLOWING STATEMENT CALCULATES THE ERROR
  error = (s1 * 1) + (s2 * 2) + (s3 * 3) + (s4 * 4) + (s5 * 5) + (s6 * 6) +(s7 * 7) + (s8*8);
	error = (error)/(s1+s2+s3+s4+s5+s6+s7+s8);
	error = error - 4.5;
	// FOR BLACK LINE ERROR ----- -4< ERROR < 4 NOT <0
	// FOR WHITE LINE ERROR ----- -1< ERROR < 1
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
   if((error == 0) && (s4+s5==2) && ((s1+s2+s3+s6+s7+s8)==0))
   {
      motor_LF();					        	    //FWD AT FULL SPEED
      motor_RF();
		  PWM1_CHANGE_DUTY(255);
			PWM2_CHANGE_DUTY(255);
      delay_ms(5);
   }
   if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)		//ROBOT HAS OVERSHOOT
			{
				if(lastreading == 'r')				  //CHECKS IF THE LAST SENSOR ACTIVATED WAS RIGHT
				{
					motor_RB();						        //TURN RIGHT AT FULL SPEED
					motor_LF();
          PWM1_CHANGE_DUTY(255);
          PWM2_CHANGE_DUTY(255);
          delay_ms(5);
       	}
			else if(lastreading == 'l')			  //CHECKS IF THE LAST SENSOR ACTIVATED WAS LEFT
				{
					motor_LB();					        	//TURN LEFT AT FULL SPEED
          motor_RF();
					PWM1_CHANGE_DUTY(255);
					PWM2_CHANGE_DUTY(255);
          delay_ms(5);
				}
			}
   else  									              //ROBOT ON THE LINE
			{
        if( (error>=1)|| (error<=4) || (error >=-1) || (error<=-4))
        {
        PROPORTIONAL = error * kp1;
        INTEGRAL += error ;
        INTEGRAL *= ki1;
        DERIVATIVE = (error - perror);
        correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd1));
        rightpulse =  basespeed - correction;
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
        rightpulse =  basespeed - correction;
				leftpulse = basespeed + correction;
        motor_RF();
        motor_LF();
        }

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
   delay_ms(5);
  }
 }
