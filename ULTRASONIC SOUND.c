/*
 * Project name:
     UltraSonic Distance Meter on UART
 * Copyright:
     (c) Mikroelektronika, 2010.
  * Revision History
     2010:
    - Initial release;
    - 20101110(RR);
 * Description:
     This code demonstrates working with Distance Meter (MB1100).
     Value read from it is sent over UART.
 * Test configuration:

     MCU:             ac:PIC16F887
                      http://ww1.microchip.com/downloads/en/DeviceDoc/41291F.pdf

     Dev.Board:       ac:EasyPIC6
                      http://www.mikroe.com/en/tools/easypic6/

     Oscillator:      HS, 08.0000 MHz

     Ext. Modules:    ac:Distance_Meter_2_Board
                      http://www.mikroe.com/eng/products/view/438/distance-meter-2-board/

                      ac:Distance_Meter_2_PROTO_Board
                      http://www.mikroe.com/eng/products/view/439/distance-meter-2-proto-board/

     SW:              mikroC PRO for PIC
                      http://www.mikroe.com/en/compilers/mikroc/pro/pic/

 * NOTES:
     - MCU must work on 8MHz
     - Distance Meter Board needs to be connected to PortA and PortB
     - Turn On UART switches (SW7.1 and SW8.1)
     - After programming MCU, hard reset development system
*/


int abc;
unsigned int temp, temp_sec, temp_old, time, distance;    // global variables
char txt[6];

void InitPort(void) {                           // function for initialization of I/O PORTS
  ANSEL = 0x01;                                 // Set RA2 pin as Analog Input
  ANSELH = 0;                                   // Configure AN pins as digital except PinA0
  C1ON_bit = 0;                                 // Disable comparators
  C2ON_bit = 0;
  TRISC = 0x00;                                 // set PORTC as output
  TRISA.B0 = 1;                                 // set PinA0 as input
}

void PWM(void) {
  PWM1_Init(40000);                             // Initialize PWM1 module in Hz
  PWM1_Set_Duty(127);                           // Set current duty for PWM1
  PORTC = 0x00;
  PWM1_Start();                                 // start PWM1
  Delay_us(100);                                // Software PWM lasts 100us
  PWM1_Stop();
}

void InitDelay(void) {                          // Initialization of Timer1
  T1CON.B5 = 1;                                 // prescaler 1:8
  T1CON.B4 = 1;
  TMR1L = 0x00;                                 // Initial value of TMR1 register
  TMR1H = 0x00;
  T1CON.B0 = 1;                                 // start Timer1
}

/*void InitADC(void) {                            // Initialization of ADC module
  ADC_Init();
} */

void InitVariable(void) {                       // setting initial values
  abc = 0;
  temp_old = 0;
  distance = 0;
}

void InitUART(void) {                           // Initialization of UART
  UART1_Init(9600);
  UART1_Write_Text ("Distance Meter 2");        // send value over UART
  UART1_Write(13);                              // line feed
  UART1_Write_Text ("Minimum Distance 30cm");   // send value over UART
  UART1_Write(13);                              // line feed
  UART1_Write_Text ("Maximum Distance 350cm");  // send value over UART
  UART1_Write(13);                              // line feed
  UART1_Write_Text ("Measure precision +-10%"); // send value over UART
  UART1_Write(13);                              // line feed
  UART1_Write(13);                              // line feed
  UART1_Write_Text ("Starting measurement");    // send value over UART
  UART1_Write(13);                              // line feed
  UART1_Write(13);                              // line feed
  Delay_ms(1200);
}

void main() {                                   // Main Program

  InitPort();                                   // Initialization
  //InitADC();
  InitUART();

  while(1) {                                    // Unending loop

    // start PWM
    PWM();                                      // PWM execution
    // end PWM

    Delay_ms(1);                                // wait 1ms so piezzo sattles down

    InitDelay();                                // Start/initialize Timer2 to count Delay

    temp = ADC_READ(0);                   // get first two samples
    Delay_us(1);
    temp_sec = ADC_READ(0);

    InitVariable();                             // Initialization of Variables

    while (temp > temp_sec) {                   // check if returned wave is uprising
      Delay_us(10);                             //   if not check again in 10us
      temp = ADC_READ(0);
      Delay_us(1);
      temp_sec = ADC_READ(0);
    }

    while(abc < 1000) {                         // Measure in lenght of 250ms
      temp = ADC_READ(0);                 // get sample
      if (temp > temp_old) {                    // if new value is bigger then old
        temp_old = temp;                        //   set value of ADC into temporary variable
        time = TMR1H;                           //   remember time when value was measured
        time = (time << 8);
        time = time + TMR1L;
      }
      abc++;
      Delay_us(50);
    }
    T1CON.B0 = 0;                               // stop Timer1

    if (time < 0)                               // absolute value of time
      time = - time;

    // Part for converting time into distance in cm with precision +-10%
    if (time > 4500)
      distance = 0;
    else
      distance = time * 2 / 25;

    if (distance == 0) {                        // if distance is 0 the object is too far
      UART1_Write_Text ("Too Far!");            // send value over UART
      UART1_Write(13);                          // line feed
    }
    else {
      IntToStr(distance, txt);                  // converts time into string
      UART1_Write_Text(txt);                    // send value over UART
      UART1_Write_Text (" cm");                 // send value over UART
      UART1_Write(13);                          // line feed
    }
    Delay_ms(500);                              // delay before next measure
  }
}
