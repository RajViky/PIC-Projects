
_main:
;dcmotor_p.c,1 :: 		void main()
;dcmotor_p.c,2 :: 		{  ADCON0 = 0;         //adc =0
	CLRF       ADCON0+0
;dcmotor_p.c,3 :: 		ADCON1 = 0xF0;     // Set all A/D pins as digital I/O pins.
	MOVLW      240
	MOVWF      ADCON1+0
;dcmotor_p.c,4 :: 		TRISA = 0X00;
	CLRF       TRISA+0
;dcmotor_p.c,5 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;dcmotor_p.c,6 :: 		PORTC = 0X00;
	CLRF       PORTC+0
;dcmotor_p.c,7 :: 		PORTA = 0b01010000;
	MOVLW      80
	MOVWF      PORTA+0
;dcmotor_p.c,8 :: 		PWM1_Init(5000);
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      199
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;dcmotor_p.c,9 :: 		PWM2_Init(5000);
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      199
	MOVWF      PR2+0
	CALL       _PWM2_Init+0
;dcmotor_p.c,10 :: 		Pwm1_Start();
	CALL       _PWM1_Start+0
;dcmotor_p.c,11 :: 		Pwm2_Start();
	CALL       _PWM2_Start+0
;dcmotor_p.c,12 :: 		while(1)
L_main0:
;dcmotor_p.c,14 :: 		PWM1_Set_Duty(210);
	MOVLW      210
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;dcmotor_p.c,15 :: 		PWM2_Set_Duty(135);
	MOVLW      135
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;dcmotor_p.c,16 :: 		Delay_ms(10000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;dcmotor_p.c,17 :: 		PWM1_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;dcmotor_p.c,18 :: 		PWM2_Set_Duty(255);
	MOVLW      255
	MOVWF      FARG_PWM2_Set_Duty_new_duty+0
	CALL       _PWM2_Set_Duty+0
;dcmotor_p.c,19 :: 		Delay_ms(10000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;dcmotor_p.c,20 :: 		PWM1_STOP();
	CALL       _PWM1_Stop+0
;dcmotor_p.c,21 :: 		PWM2_STOP();
	CALL       _PWM2_Stop+0
;dcmotor_p.c,22 :: 		}
	GOTO       L_main0
;dcmotor_p.c,23 :: 		}
	GOTO       $+0
; end of _main
