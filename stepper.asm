;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 8/10/2010 11:30:33 AM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;stepper.c,24 :: 		void main()
;stepper.c,26 :: 		TRISB=0x00;
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0186			CLRF	TRISB, 1
;stepper.c,27 :: 		PORTB=0x00;
$0007	$1283			BCF	STATUS, RP0
$0008	$0186			CLRF	PORTB, 1
;stepper.c,29 :: 		while(1)
$0009	$	L_main_0:
;stepper.c,31 :: 		Delay_ms(2);
$0009	$3003			MOVLW	3
$000A	$00FB			MOVWF	STACK_11
$000B	$30FF			MOVLW	255
$000C	$00FA			MOVWF	STACK_10
$000D	$0BFB			DECFSZ	STACK_11, F
$000E	$2810			GOTO	$+2
$000F	$2813			GOTO	$+4
$0010	$0BFA			DECFSZ	STACK_10, F
$0011	$2810			GOTO	$-1
$0012	$280D			GOTO	$-5
$0013	$3096			MOVLW	150
$0014	$00FA			MOVWF	STACK_10
$0015	$0BFA			DECFSZ	STACK_10, F
$0016	$2815			GOTO	$-1
;stepper.c,32 :: 		PORTB=0b00001000;
$0017	$3008			MOVLW	8
$0018	$0086			MOVWF	PORTB
;stepper.c,33 :: 		Delay_ms(2);
$0019	$3003			MOVLW	3
$001A	$00FB			MOVWF	STACK_11
$001B	$30FF			MOVLW	255
$001C	$00FA			MOVWF	STACK_10
$001D	$0BFB			DECFSZ	STACK_11, F
$001E	$2820			GOTO	$+2
$001F	$2823			GOTO	$+4
$0020	$0BFA			DECFSZ	STACK_10, F
$0021	$2820			GOTO	$-1
$0022	$281D			GOTO	$-5
$0023	$3096			MOVLW	150
$0024	$00FA			MOVWF	STACK_10
$0025	$0BFA			DECFSZ	STACK_10, F
$0026	$2825			GOTO	$-1
;stepper.c,34 :: 		PORTB=0b00001100;
$0027	$300C			MOVLW	12
$0028	$0086			MOVWF	PORTB
;stepper.c,36 :: 		Delay_ms(2);
$0029	$3003			MOVLW	3
$002A	$00FB			MOVWF	STACK_11
$002B	$30FF			MOVLW	255
$002C	$00FA			MOVWF	STACK_10
$002D	$0BFB			DECFSZ	STACK_11, F
$002E	$2830			GOTO	$+2
$002F	$2833			GOTO	$+4
$0030	$0BFA			DECFSZ	STACK_10, F
$0031	$2830			GOTO	$-1
$0032	$282D			GOTO	$-5
$0033	$3096			MOVLW	150
$0034	$00FA			MOVWF	STACK_10
$0035	$0BFA			DECFSZ	STACK_10, F
$0036	$2835			GOTO	$-1
;stepper.c,37 :: 		PORTB=0b00000100;
$0037	$3004			MOVLW	4
$0038	$0086			MOVWF	PORTB
;stepper.c,38 :: 		Delay_ms(2);
$0039	$3003			MOVLW	3
$003A	$00FB			MOVWF	STACK_11
$003B	$30FF			MOVLW	255
$003C	$00FA			MOVWF	STACK_10
$003D	$0BFB			DECFSZ	STACK_11, F
$003E	$2840			GOTO	$+2
$003F	$2843			GOTO	$+4
$0040	$0BFA			DECFSZ	STACK_10, F
$0041	$2840			GOTO	$-1
$0042	$283D			GOTO	$-5
$0043	$3096			MOVLW	150
$0044	$00FA			MOVWF	STACK_10
$0045	$0BFA			DECFSZ	STACK_10, F
$0046	$2845			GOTO	$-1
;stepper.c,39 :: 		PORTB=0b00000110;
$0047	$3006			MOVLW	6
$0048	$0086			MOVWF	PORTB
;stepper.c,41 :: 		Delay_ms(2);
$0049	$3003			MOVLW	3
$004A	$00FB			MOVWF	STACK_11
$004B	$30FF			MOVLW	255
$004C	$00FA			MOVWF	STACK_10
$004D	$0BFB			DECFSZ	STACK_11, F
$004E	$2850			GOTO	$+2
$004F	$2853			GOTO	$+4
$0050	$0BFA			DECFSZ	STACK_10, F
$0051	$2850			GOTO	$-1
$0052	$284D			GOTO	$-5
$0053	$3096			MOVLW	150
$0054	$00FA			MOVWF	STACK_10
$0055	$0BFA			DECFSZ	STACK_10, F
$0056	$2855			GOTO	$-1
;stepper.c,42 :: 		PORTB=0b00000010;
$0057	$3002			MOVLW	2
$0058	$0086			MOVWF	PORTB
;stepper.c,43 :: 		Delay_ms(2);
$0059	$3003			MOVLW	3
$005A	$00FB			MOVWF	STACK_11
$005B	$30FF			MOVLW	255
$005C	$00FA			MOVWF	STACK_10
$005D	$0BFB			DECFSZ	STACK_11, F
$005E	$2860			GOTO	$+2
$005F	$2863			GOTO	$+4
$0060	$0BFA			DECFSZ	STACK_10, F
$0061	$2860			GOTO	$-1
$0062	$285D			GOTO	$-5
$0063	$3096			MOVLW	150
$0064	$00FA			MOVWF	STACK_10
$0065	$0BFA			DECFSZ	STACK_10, F
$0066	$2865			GOTO	$-1
;stepper.c,44 :: 		PORTB=0b00000011;
$0067	$3003			MOVLW	3
$0068	$0086			MOVWF	PORTB
;stepper.c,46 :: 		Delay_ms(2);
$0069	$3003			MOVLW	3
$006A	$00FB			MOVWF	STACK_11
$006B	$30FF			MOVLW	255
$006C	$00FA			MOVWF	STACK_10
$006D	$0BFB			DECFSZ	STACK_11, F
$006E	$2870			GOTO	$+2
$006F	$2873			GOTO	$+4
$0070	$0BFA			DECFSZ	STACK_10, F
$0071	$2870			GOTO	$-1
$0072	$286D			GOTO	$-5
$0073	$3096			MOVLW	150
$0074	$00FA			MOVWF	STACK_10
$0075	$0BFA			DECFSZ	STACK_10, F
$0076	$2875			GOTO	$-1
;stepper.c,47 :: 		PORTB=0b00000001;
$0077	$3001			MOVLW	1
$0078	$0086			MOVWF	PORTB
;stepper.c,48 :: 		Delay_ms(2);
$0079	$3003			MOVLW	3
$007A	$00FB			MOVWF	STACK_11
$007B	$30FF			MOVLW	255
$007C	$00FA			MOVWF	STACK_10
$007D	$0BFB			DECFSZ	STACK_11, F
$007E	$2880			GOTO	$+2
$007F	$2883			GOTO	$+4
$0080	$0BFA			DECFSZ	STACK_10, F
$0081	$2880			GOTO	$-1
$0082	$287D			GOTO	$-5
$0083	$3096			MOVLW	150
$0084	$00FA			MOVWF	STACK_10
$0085	$0BFA			DECFSZ	STACK_10, F
$0086	$2885			GOTO	$-1
;stepper.c,49 :: 		PORTB=0b00001001;
$0087	$3009			MOVLW	9
$0088	$0086			MOVWF	PORTB
;stepper.c,50 :: 		}
$0089	$2809			GOTO	L_main_0
;stepper.c,51 :: 		}
$008A	$288A			GOTO	$