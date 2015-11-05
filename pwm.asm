;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 1/31/2011 5:59:11 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;pwm.c,20 :: 		void main()
;pwm.c,24 :: 		TRISC = 0 ;                     // set PORTC as output
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0187			CLRF	TRISC, 1
;pwm.c,25 :: 		PORTC = 0 ;                     // clear PORTC
$0007	$1283			BCF	STATUS, RP0
$0008	$0187			CLRF	PORTC, 1
;pwm.c,30 :: 		PR2 = 0b01111100 ;
$0009	$307C			MOVLW	124
$000A	$1683			BSF	STATUS, RP0
$000B	$0092			MOVWF	PR2
;pwm.c,31 :: 		T2CON = 0b00000101 ;
$000C	$3005			MOVLW	5
$000D	$1283			BCF	STATUS, RP0
$000E	$0092			MOVWF	T2CON
;pwm.c,32 :: 		CCP1CON = 0b00001100 ;
$000F	$300C			MOVLW	12
$0010	$0097			MOVWF	CCP1CON
;pwm.c,33 :: 		CCP2CON = 0b00111100 ;
$0011	$303C			MOVLW	60
$0012	$009D			MOVWF	CCP2CON
;pwm.c,35 :: 		for(;;)                         // forever
$0013	$	L_main_0:
;pwm.c,42 :: 		for(dc = 0 ; dc < 128 ; dc++)
$0013	$01A0			CLRF	main_dc_L0, 1
$0014	$	L_main_3:
$0014	$3080			MOVLW	128
$0015	$0220			SUBWF	main_dc_L0, 0
$0016	$1803			BTFSC	STATUS, C
$0017	$282E			GOTO	L_main_4
;pwm.c,44 :: 		CCPR1L = dc ;
$0018	$0820			MOVF	main_dc_L0, 0
$0019	$0095			MOVWF	CCPR1L
;pwm.c,45 :: 		CCPR2L = 128 - dc ;
$001A	$0820			MOVF	main_dc_L0, 0
$001B	$3C80			SUBLW	128
$001C	$009B			MOVWF	CCPR2L
;pwm.c,46 :: 		Delay_ms(10) ;
$001D	$300D			MOVLW	13
$001E	$00FB			MOVWF	STACK_11
$001F	$30FF			MOVLW	255
$0020	$00FA			MOVWF	STACK_10
$0021	$0BFB			DECFSZ	STACK_11, F
$0022	$2824			GOTO	$+2
$0023	$2827			GOTO	$+4
$0024	$0BFA			DECFSZ	STACK_10, F
$0025	$2824			GOTO	$-1
$0026	$2821			GOTO	$-5
$0027	$30F3			MOVLW	243
$0028	$00FA			MOVWF	STACK_10
$0029	$0BFA			DECFSZ	STACK_10, F
$002A	$2829			GOTO	$-1
$002B	$0000			NOP
;pwm.c,47 :: 		}
$002C	$	L_main_5:
;pwm.c,42 :: 		for(dc = 0 ; dc < 128 ; dc++)
$002C	$0AA0			INCF	main_dc_L0, 1
;pwm.c,47 :: 		}
$002D	$2814			GOTO	L_main_3
$002E	$	L_main_4:
;pwm.c,48 :: 		for(dc = 127 ; dc > 0 ; dc--)
$002E	$307F			MOVLW	127
$002F	$00A0			MOVWF	main_dc_L0
$0030	$	L_main_6:
$0030	$0820			MOVF	main_dc_L0, 0
$0031	$3C00			SUBLW	0
$0032	$1803			BTFSC	STATUS, C
$0033	$284A			GOTO	L_main_7
;pwm.c,50 :: 		CCPR1L = dc ;
$0034	$0820			MOVF	main_dc_L0, 0
$0035	$0095			MOVWF	CCPR1L
;pwm.c,51 :: 		CCPR2L = 128 - dc ;
$0036	$0820			MOVF	main_dc_L0, 0
$0037	$3C80			SUBLW	128
$0038	$009B			MOVWF	CCPR2L
;pwm.c,52 :: 		Delay_ms(10) ;
$0039	$300D			MOVLW	13
$003A	$00FB			MOVWF	STACK_11
$003B	$30FF			MOVLW	255
$003C	$00FA			MOVWF	STACK_10
$003D	$0BFB			DECFSZ	STACK_11, F
$003E	$2840			GOTO	$+2
$003F	$2843			GOTO	$+4
$0040	$0BFA			DECFSZ	STACK_10, F
$0041	$2840			GOTO	$-1
$0042	$283D			GOTO	$-5
$0043	$30F3			MOVLW	243
$0044	$00FA			MOVWF	STACK_10
$0045	$0BFA			DECFSZ	STACK_10, F
$0046	$2845			GOTO	$-1
$0047	$0000			NOP
;pwm.c,53 :: 		}
$0048	$	L_main_8:
;pwm.c,48 :: 		for(dc = 127 ; dc > 0 ; dc--)
$0048	$03A0			DECF	main_dc_L0, 1
;pwm.c,53 :: 		}
$0049	$2830			GOTO	L_main_6
$004A	$	L_main_7:
;pwm.c,54 :: 		}
$004A	$	L_main_2:
$004A	$2813			GOTO	L_main_0
;pwm.c,55 :: 		}
$004B	$284B			GOTO	$
