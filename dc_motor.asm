;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 8/10/2010 9:22:34 AM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;dc_motor.c,1 :: 		void main()
;dc_motor.c,3 :: 		TRISB=0x00;
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0186			CLRF	TRISB, 1
;dc_motor.c,4 :: 		PORTB=0xf0;
$0007	$30F0			MOVLW	240
$0008	$1283			BCF	STATUS, RP0
$0009	$0086			MOVWF	PORTB
;dc_motor.c,5 :: 		while(1)
$000A	$	L_main_0:
;dc_motor.c,7 :: 		PORTB=0b11000000;  //FORWARD DIR
$000A	$30C0			MOVLW	192
$000B	$0086			MOVWF	PORTB
;dc_motor.c,8 :: 		Delay_ms(20000);
$000C	$3066			MOVLW	102
$000D	$00FC			MOVWF	STACK_12
$000E	$30FF			MOVLW	255
$000F	$00FB			MOVWF	STACK_11
$0010	$30FF			MOVLW	255
$0011	$00FA			MOVWF	STACK_10
$0012	$0BFC			DECFSZ	STACK_12, F
$0013	$2815			GOTO	$+2
$0014	$281C			GOTO	$+8
$0015	$0BFB			DECFSZ	STACK_11, F
$0016	$2818			GOTO	$+2
$0017	$281B			GOTO	$+4
$0018	$0BFA			DECFSZ	STACK_10, F
$0019	$2818			GOTO	$-1
$001A	$2815			GOTO	$-5
$001B	$2812			GOTO	$-9
$001C	$30FC			MOVLW	252
$001D	$00FB			MOVWF	STACK_11
$001E	$30FF			MOVLW	255
$001F	$00FA			MOVWF	STACK_10
$0020	$0BFB			DECFSZ	STACK_11, F
$0021	$2823			GOTO	$+2
$0022	$2826			GOTO	$+4
$0023	$0BFA			DECFSZ	STACK_10, F
$0024	$2823			GOTO	$-1
$0025	$2820			GOTO	$-5
$0026	$306A			MOVLW	106
$0027	$00FA			MOVWF	STACK_10
$0028	$0BFA			DECFSZ	STACK_10, F
$0029	$2828			GOTO	$-1
;dc_motor.c,9 :: 		PORTB=0b10100000;  //BACKWARD DIR
$002A	$30A0			MOVLW	160
$002B	$0086			MOVWF	PORTB
;dc_motor.c,10 :: 		delay_ms(20000);
$002C	$3066			MOVLW	102
$002D	$00FC			MOVWF	STACK_12
$002E	$30FF			MOVLW	255
$002F	$00FB			MOVWF	STACK_11
$0030	$30FF			MOVLW	255
$0031	$00FA			MOVWF	STACK_10
$0032	$0BFC			DECFSZ	STACK_12, F
$0033	$2835			GOTO	$+2
$0034	$283C			GOTO	$+8
$0035	$0BFB			DECFSZ	STACK_11, F
$0036	$2838			GOTO	$+2
$0037	$283B			GOTO	$+4
$0038	$0BFA			DECFSZ	STACK_10, F
$0039	$2838			GOTO	$-1
$003A	$2835			GOTO	$-5
$003B	$2832			GOTO	$-9
$003C	$30FC			MOVLW	252
$003D	$00FB			MOVWF	STACK_11
$003E	$30FF			MOVLW	255
$003F	$00FA			MOVWF	STACK_10
$0040	$0BFB			DECFSZ	STACK_11, F
$0041	$2843			GOTO	$+2
$0042	$2846			GOTO	$+4
$0043	$0BFA			DECFSZ	STACK_10, F
$0044	$2843			GOTO	$-1
$0045	$2840			GOTO	$-5
$0046	$306A			MOVLW	106
$0047	$00FA			MOVWF	STACK_10
$0048	$0BFA			DECFSZ	STACK_10, F
$0049	$2848			GOTO	$-1
;dc_motor.c,11 :: 		portb=0b00000000; // STOP
$004A	$0186			CLRF	PORTB, 1
;dc_motor.c,12 :: 		}
$004B	$280A			GOTO	L_main_0
;dc_motor.c,13 :: 		}
$004C	$284C			GOTO	$
