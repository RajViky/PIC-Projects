#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/multi_servo.c"
#line 18 "C:/Documents and Settings/raj/My Documents/pic_codes/multi_servo.c"
int servo0 = 0xF63B;
int servo1 = 0xF077;



int servo2;
int servo3;
int servo4;

int count = 0;

void InterruptHandlerHigh (void);

void main(void)
{

TRISB = 0x00;
PORTB = 0x00;

RCON = 0b000000000;
INTCON = 0b10100000;

OpenTimer0( TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_2 );
OpenTimer1( TIMER_INT_ON & T1_16BIT_RW & T1_SOURCE_INT & T1_PS_1_2 & T1_OSC1EN_OFF & T1_SYNC_EXT_OFF );
#line 64 "C:/Documents and Settings/raj/My Documents/pic_codes/multi_servo.c"
WriteTimer0( 0x3CAF );
WriteTimer1( 0xF63B );


while(1){

 servo0 = 0xEC77;
 servo1 = 0xFB1D;
 Delay10KTCYx(250);
 Delay10KTCYx(250);
 servo0 = 0xF63B;
 servo1 = 0xF63B;
 Delay10KTCYx(250);
 Delay10KTCYx(250);
 servo0 = 0xFB1D;
 servo1 = 0xEC77;
 Delay10KTCYx(250);
 Delay10KTCYx(250);

}

}
#pragma code InterruptVectorHigh = 0x08
#line 89 "C:/Documents and Settings/raj/My Documents/pic_codes/multi_servo.c"
void InterruptVectorHigh (void)
{
 _asm
 goto InterruptHandlerHigh
 _endasm
}
#pragma code
#pragma interrupt InterruptHandlerHigh
#line 98 "C:/Documents and Settings/raj/My Documents/pic_codes/multi_servo.c"
void InterruptHandlerHigh()
{
 if(INTCONbits.TMR0IF)
 {
 WriteTimer0( 0x3CAF );
 WriteTimer1( 0xFC77 );
 count = 0;
 INTCONbits.TMR0IF = 0;
 }
 if(PIR1bits.TMR1IF == 1 && PIE1bits.TMR1IE == 1)
 {
 count++;
 switch(count){
 case 1: PORTB = 0x01;
 WriteTimer1( servo0 );
 break;
 case 2: PORTB = 0x02;
 WriteTimer1( servo1 );
 break;
 case 3: PORTB = 0x00;

 WriteTimer1( servo2 );
 break;
 case 4:

 break;
 case 5:

 break;
 case 6:

 break;
 }

 PIR1bits.TMR1IF = 0;
 PIE1bits.TMR1IE = 1;
 }

 INTCONbits.GIE = 1;
}
