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
unsigned short int basespeed = 190, Kp = 20, Ki = 5, Kd = 3;
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
  TRISB = 0b11000000;    //INITIALIZE PORTB AS INPUT  FOR TSOP
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
void CalcError()				//calculates the current error
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

  //THE FOLLOWING STATEMENT CALCULATES THE ERROR

  error = (s1 * 1) + (s2 * 2) + (s3 * 3) + (s4 * 4) + (s5 * 5) + (s6 * 6) +(s7 * 7) + (s8*8);
	error = (error)/(s1+s2+s3+s4+s5+s6+s7+s8);
	error = error - 4;
}
void tsop_f_sense()
{
   if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)		  //ROBOT HAS OVERSHOOT
	 {
				if(lastreading == 'r')				  //CHECKS IF THE LAST SENSOR ACTIVATED WAS RIGHT
				{
					motor_RF();						        //TURN RIGHT AT FULL SPEED
					motor_LB();
          PWM1_CHANGE_DUTY(255);
          PWM2_CHANGE_DUTY(255);
          delay_ms(10);
       	}
			else if(lastreading == 'l')			  //CHECKS IF THE LAST SENSOR ACTIVATED WAS LEFT
				{
					motor_LF();					        	//TURN LEFT AT FULL SPEED
          motor_RB();
					PWM1_CHANGE_DUTY(255);
					PWM2_CHANGE_DUTY(255);
          delay_ms(10);
			  }
   else  									              //ROBOT ON THE LINE
			{
				PROPORTIONAL = error * kp;
        INTEGRAL += error ;
        INTEGRAL *= ki;
        DERIVATIVE = (error - perror);
        correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
        rightpulse =  basespeed + correction;
				leftpulse = basespeed - correction;
        motor_RF();
        motor_LF();

       if(leftpulse > 255)                  //LEFT CORRECTION EXCEED
		   leftpulse = 255;

       if(rightpulse > 255)                 //RIGHT CORRECTION EXCEED
	     rightpulse = 255;
       if(leftpulse < 0)                  //LEFT CORRECTION EXCEED
		   leftpulse = 0;
       if(rightpulse < 0)                   //RIGHT CORRECTION EXCEED
		   rightpulse = 0;
       PWM1_CHANGE_DUTY(leftpulse);
       PWM2_CHANGE_DUTY(rightpulse);
      }
     delay_ms(10);
  }                                                
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
  if((error == 0) && (s4==1) && ((s1+s2+s3+s5+s6+s7+s8)==0))
   {
      motor_LF();					        	    //FWD AT FULL SPEED
      motor_RF();
		  PWM1_CHANGE_DUTY(255);
			PWM2_CHANGE_DUTY(255);
      delay_ms(10);
   }
  if(PORTB.F7 == 0)                     //TSOP SENESE
   {
   tsop_f_sense();
   }
else{
   if((s1+s2+s3+s4+s5+s6+s7+s8) == 0)		//ROBOT HAS OVERSHOOT
	 {
				if(lastreading == 'r')				  //CHECKS IF THE LAST SENSOR ACTIVATED WAS RIGHT
				{
					motor_RB();						        //TURN RIGHT AT FULL SPEED
					motor_LF();
          PWM1_CHANGE_DUTY(255);
          PWM2_CHANGE_DUTY(255);
          delay_ms(10);
       	}
			else if(lastreading == 'l')			  //CHECKS IF THE LAST SENSOR ACTIVATED WAS LEFT
				{
					motor_LB();					        	//TURN LEFT AT FULL SPEED
          motor_RF();
					PWM1_CHANGE_DUTY(255);
					PWM2_CHANGE_DUTY(255);
          delay_ms(10);
				}
   }
   else  									              //ROBOT ON THE LINE
			{
				PROPORTIONAL = error * kp;
        INTEGRAL += error ;
        INTEGRAL *= ki;
        DERIVATIVE = (error - perror);
        correction = ( (PROPORTIONAL) + (INTEGRAL) + (DERIVATIVE*kd));
        rightpulse =  basespeed + correction;
				leftpulse = basespeed - correction;
        motor_RF();
        motor_LF();

       if(leftpulse > 255)                  //LEFT CORRECTION EXCEED
		   leftpulse = 255;

       if(rightpulse > 255)                 //RIGHT CORRECTION EXCEED
	     rightpulse = 255;
       if(leftpulse < 0)                  //LEFT CORRECTION EXCEED
		   leftpulse = 0;
       if(rightpulse < 0)                   //RIGHT CORRECTION EXCEED
		   rightpulse = 0;
       PWM1_CHANGE_DUTY(rightpulse);
       PWM2_CHANGE_DUTY(leftpulse);
     }
   delay_ms(10);
  }
}
}