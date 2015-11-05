
_InitPort:
;ULTRASONIC SOUND.c,44 :: 		void InitPort(void) {                           // function for initialization of I/O PORTS
;ULTRASONIC SOUND.c,45 :: 		ANSEL = 0x01;                                 // Set RA2 pin as Analog Input
	MOVLW      1
	MOVWF      ANSEL+0
;ULTRASONIC SOUND.c,46 :: 		ANSELH = 0;                                   // Configure AN pins as digital except PinA0
	CLRF       ANSELH+0
;ULTRASONIC SOUND.c,47 :: 		C1ON_bit = 0;                                 // Disable comparators
	BCF        C1ON_bit+0, 7
;ULTRASONIC SOUND.c,48 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, 7
;ULTRASONIC SOUND.c,49 :: 		TRISC = 0x00;                                 // set PORTC as output
	CLRF       TRISC+0
;ULTRASONIC SOUND.c,50 :: 		TRISA.B0 = 1;                                 // set PinA0 as input
	BSF        TRISA+0, 0
;ULTRASONIC SOUND.c,51 :: 		}
	RETURN
; end of _InitPort

_PWM:
;ULTRASONIC SOUND.c,53 :: 		void PWM(void) {
;ULTRASONIC SOUND.c,54 :: 		PWM1_Init(40000);                             // Initialize PWM1 module in Hz
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      49
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;ULTRASONIC SOUND.c,55 :: 		PWM1_Set_Duty(127);                           // Set current duty for PWM1
	MOVLW      127
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;ULTRASONIC SOUND.c,56 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;ULTRASONIC SOUND.c,57 :: 		PWM1_Start();                                 // start PWM1
	CALL       _PWM1_Start+0
;ULTRASONIC SOUND.c,58 :: 		Delay_us(100);                                // Software PWM lasts 100us
	MOVLW      66
	MOVWF      R13+0
L_PWM0:
	DECFSZ     R13+0, 1
	GOTO       L_PWM0
	NOP
;ULTRASONIC SOUND.c,59 :: 		PWM1_Stop();
	CALL       _PWM1_Stop+0
;ULTRASONIC SOUND.c,60 :: 		}
	RETURN
; end of _PWM

_InitDelay:
;ULTRASONIC SOUND.c,62 :: 		void InitDelay(void) {                          // Initialization of Timer1
;ULTRASONIC SOUND.c,63 :: 		T1CON.B5 = 1;                                 // prescaler 1:8
	BSF        T1CON+0, 5
;ULTRASONIC SOUND.c,64 :: 		T1CON.B4 = 1;
	BSF        T1CON+0, 4
;ULTRASONIC SOUND.c,65 :: 		TMR1L = 0x00;                                 // Initial value of TMR1 register
	CLRF       TMR1L+0
;ULTRASONIC SOUND.c,66 :: 		TMR1H = 0x00;
	CLRF       TMR1H+0
;ULTRASONIC SOUND.c,67 :: 		T1CON.B0 = 1;                                 // start Timer1
	BSF        T1CON+0, 0
;ULTRASONIC SOUND.c,68 :: 		}
	RETURN
; end of _InitDelay

_InitVariable:
;ULTRASONIC SOUND.c,74 :: 		void InitVariable(void) {                       // setting initial values
;ULTRASONIC SOUND.c,75 :: 		abc = 0;
	CLRF       _abc+0
	CLRF       _abc+1
;ULTRASONIC SOUND.c,76 :: 		temp_old = 0;
	CLRF       _temp_old+0
	CLRF       _temp_old+1
;ULTRASONIC SOUND.c,77 :: 		distance = 0;
	CLRF       _distance+0
	CLRF       _distance+1
;ULTRASONIC SOUND.c,78 :: 		}
	RETURN
; end of _InitVariable

_InitUART:
;ULTRASONIC SOUND.c,80 :: 		void InitUART(void) {                           // Initialization of UART
;ULTRASONIC SOUND.c,81 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ULTRASONIC SOUND.c,82 :: 		UART1_Write_Text ("Distance Meter 2");        // send value over UART
	MOVLW      ?lstr1_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,83 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,84 :: 		UART1_Write_Text ("Minimum Distance 30cm");   // send value over UART
	MOVLW      ?lstr2_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,85 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,86 :: 		UART1_Write_Text ("Maximum Distance 350cm");  // send value over UART
	MOVLW      ?lstr3_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,87 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,88 :: 		UART1_Write_Text ("Measure precision +-10%"); // send value over UART
	MOVLW      ?lstr4_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,89 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,90 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,91 :: 		UART1_Write_Text ("Starting measurement");    // send value over UART
	MOVLW      ?lstr5_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,92 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,93 :: 		UART1_Write(13);                              // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,94 :: 		Delay_ms(1200);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      45
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_InitUART1:
	DECFSZ     R13+0, 1
	GOTO       L_InitUART1
	DECFSZ     R12+0, 1
	GOTO       L_InitUART1
	DECFSZ     R11+0, 1
	GOTO       L_InitUART1
	NOP
	NOP
;ULTRASONIC SOUND.c,95 :: 		}
	RETURN
; end of _InitUART

_main:
;ULTRASONIC SOUND.c,97 :: 		void main() {                                   // Main Program
;ULTRASONIC SOUND.c,99 :: 		InitPort();                                   // Initialization
	CALL       _InitPort+0
;ULTRASONIC SOUND.c,101 :: 		InitUART();
	CALL       _InitUART+0
;ULTRASONIC SOUND.c,103 :: 		while(1) {                                    // Unending loop
L_main2:
;ULTRASONIC SOUND.c,106 :: 		PWM();                                      // PWM execution
	CALL       _PWM+0
;ULTRASONIC SOUND.c,109 :: 		Delay_ms(1);                                // wait 1ms so piezzo sattles down
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;ULTRASONIC SOUND.c,111 :: 		InitDelay();                                // Start/initialize Timer2 to count Delay
	CALL       _InitDelay+0
;ULTRASONIC SOUND.c,113 :: 		temp = ADC_READ(0);                   // get first two samples
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;ULTRASONIC SOUND.c,114 :: 		Delay_us(1);
	NOP
	NOP
;ULTRASONIC SOUND.c,115 :: 		temp_sec = ADC_READ(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp_sec+0
	MOVF       R0+1, 0
	MOVWF      _temp_sec+1
;ULTRASONIC SOUND.c,117 :: 		InitVariable();                             // Initialization of Variables
	CALL       _InitVariable+0
;ULTRASONIC SOUND.c,119 :: 		while (temp > temp_sec) {                   // check if returned wave is uprising
L_main6:
	MOVF       _temp+1, 0
	SUBWF      _temp_sec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       _temp+0, 0
	SUBWF      _temp_sec+0, 0
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;ULTRASONIC SOUND.c,120 :: 		Delay_us(10);                             //   if not check again in 10us
	MOVLW      6
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	NOP
;ULTRASONIC SOUND.c,121 :: 		temp = ADC_READ(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;ULTRASONIC SOUND.c,122 :: 		Delay_us(1);
	NOP
	NOP
;ULTRASONIC SOUND.c,123 :: 		temp_sec = ADC_READ(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp_sec+0
	MOVF       R0+1, 0
	MOVWF      _temp_sec+1
;ULTRASONIC SOUND.c,124 :: 		}
	GOTO       L_main6
L_main7:
;ULTRASONIC SOUND.c,126 :: 		while(abc < 1000) {                         // Measure in lenght of 250ms
L_main10:
	MOVLW      128
	XORWF      _abc+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      232
	SUBWF      _abc+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;ULTRASONIC SOUND.c,127 :: 		temp = ADC_READ(0);                 // get sample
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;ULTRASONIC SOUND.c,128 :: 		if (temp > temp_old) {                    // if new value is bigger then old
	MOVF       R0+1, 0
	SUBWF      _temp_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVF       R0+0, 0
	SUBWF      _temp_old+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;ULTRASONIC SOUND.c,129 :: 		temp_old = temp;                        //   set value of ADC into temporary variable
	MOVF       _temp+0, 0
	MOVWF      _temp_old+0
	MOVF       _temp+1, 0
	MOVWF      _temp_old+1
;ULTRASONIC SOUND.c,130 :: 		time = TMR1H;                           //   remember time when value was measured
	MOVF       TMR1H+0, 0
	MOVWF      _time+0
	CLRF       _time+1
;ULTRASONIC SOUND.c,131 :: 		time = (time << 8);
	MOVF       _time+0, 0
	MOVWF      _time+1
	CLRF       _time+0
;ULTRASONIC SOUND.c,132 :: 		time = time + TMR1L;
	MOVF       TMR1L+0, 0
	ADDWF      _time+0, 1
	BTFSC      STATUS+0, 0
	INCF       _time+1, 1
;ULTRASONIC SOUND.c,133 :: 		}
L_main12:
;ULTRASONIC SOUND.c,134 :: 		abc++;
	INCF       _abc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _abc+1, 1
;ULTRASONIC SOUND.c,135 :: 		Delay_us(50);
	MOVLW      33
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
;ULTRASONIC SOUND.c,136 :: 		}
	GOTO       L_main10
L_main11:
;ULTRASONIC SOUND.c,137 :: 		T1CON.B0 = 0;                               // stop Timer1
	BCF        T1CON+0, 0
;ULTRASONIC SOUND.c,139 :: 		if (time < 0)                               // absolute value of time
	MOVLW      0
	SUBWF      _time+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      0
	SUBWF      _time+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main14
;ULTRASONIC SOUND.c,140 :: 		time = - time;
	MOVF       _time+0, 0
	SUBLW      0
	MOVWF      _time+0
	MOVF       _time+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       _time+1
	SUBWF      _time+1, 1
L_main14:
;ULTRASONIC SOUND.c,143 :: 		if (time > 4500)
	MOVF       _time+1, 0
	SUBLW      17
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVF       _time+0, 0
	SUBLW      148
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;ULTRASONIC SOUND.c,144 :: 		distance = 0;
	CLRF       _distance+0
	CLRF       _distance+1
	GOTO       L_main16
L_main15:
;ULTRASONIC SOUND.c,146 :: 		distance = time * 2 / 25;
	MOVF       _time+0, 0
	MOVWF      R0+0
	MOVF       _time+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      25
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      _distance+0
	MOVF       R0+1, 0
	MOVWF      _distance+1
L_main16:
;ULTRASONIC SOUND.c,148 :: 		if (distance == 0) {                        // if distance is 0 the object is too far
	MOVLW      0
	XORWF      _distance+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      0
	XORWF      _distance+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;ULTRASONIC SOUND.c,149 :: 		UART1_Write_Text ("Too Far!");            // send value over UART
	MOVLW      ?lstr6_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,150 :: 		UART1_Write(13);                          // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,151 :: 		}
	GOTO       L_main18
L_main17:
;ULTRASONIC SOUND.c,153 :: 		IntToStr(distance, txt);                  // converts time into string
	MOVF       _distance+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _distance+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ULTRASONIC SOUND.c,154 :: 		UART1_Write_Text(txt);                    // send value over UART
	MOVLW      _txt+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,155 :: 		UART1_Write_Text (" cm");                 // send value over UART
	MOVLW      ?lstr7_ULTRASONIC_32SOUND+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ULTRASONIC SOUND.c,156 :: 		UART1_Write(13);                          // line feed
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ULTRASONIC SOUND.c,157 :: 		}
L_main18:
;ULTRASONIC SOUND.c,158 :: 		Delay_ms(500);                              // delay before next measure
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;ULTRASONIC SOUND.c,159 :: 		}
	GOTO       L_main2
;ULTRASONIC SOUND.c,160 :: 		}
	GOTO       $+0
; end of _main
