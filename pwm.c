/*
 * this example smoothly blinks LEDs on RC1 and RC2 alternatvely
 * using PIC CCP module configured as PWM output
 *
 * source code example for mikroC
 * feel free to use this code at your own risks
 *
 * target : PIC16F877A, 8 Mhz crystal
 * HS clock, no watchdog.
 *
 * easyPIC4 settings :
 *      LEDs on PORTC enabled
 *
 * Author : Bruno Gavand, September 2007
 * see more details on http://www.micro-examples.com/
 *
 *******************************************************************************
 */

void main()
        {
        unsigned char   dc ;

        TRISC = 0 ;                     // set PORTC as output
        PORTC = 0 ;                     // clear PORTC

        /*
         * configure CCP module as 4000 Hz PWM output
         */
        PR2 = 0b01111100 ;
        T2CON = 0b00000101 ;
        CCP1CON = 0b00001100 ;
        CCP2CON = 0b00111100 ;

        for(;;)                         // forever
                {
                /*
                 * PWM resolution is 10 bits
                 * don't use last 2 less significant bits CCPxCON,
                 * so only CCPRxL have to be touched to change duty cycle
                 */
                for(dc = 0 ; dc < 128 ; dc++)
                        {
                        CCPR1L = dc ;
                        CCPR2L = 128 - dc ;
                        Delay_ms(10) ;
                        }
                for(dc = 127 ; dc > 0 ; dc--)
                        {
                        CCPR1L = dc ;
                        CCPR2L = 128 - dc ;
                        Delay_ms(10) ;
                        }
                }
        }
