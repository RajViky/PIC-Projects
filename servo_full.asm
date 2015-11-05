;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 8/9/2010 4:34:15 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;servo_full.c,1 :: 		void main()
;servo_full.c,4 :: 		for(i=0;i<100;i++) {
$0004	$1303			BCF	STATUS, RP1
$0005	$1283			BCF	STATUS, RP0
$0006	$01A0			CLRF	main_i_L0
$0007	$01A1			CLRF	main_i_L0+1
$0008	$	L_main_0:
$0008	$3080			MOVLW	128
$0009	$0621			XORWF	main_i_L0+1, 0
$000A	$00F0			MOVWF	STACK_0
$000B	$3080			MOVLW	128
$000C	$0270			SUBWF	STACK_0, 0
$000D	$1D03			BTFSS	STATUS, Z
$000E	$2811			GOTO	L_main_6
$000F	$3064			MOVLW	100
$0010	$0220			SUBWF	main_i_L0, 0
$0011	$	L_main_6:
$0011	$1803			BTFSC	STATUS, C
$0012	$2837			GOTO	L_main_1
;servo_full.c,5 :: 		PORTB = 0x01;
$0013	$3001			MOVLW	1
$0014	$0086			MOVWF	PORTB
;servo_full.c,6 :: 		delay_us(1000);
$0015	$3002			MOVLW	2
$0016	$00FB			MOVWF	STACK_11
$0017	$30FF			MOVLW	255
$0018	$00FA			MOVWF	STACK_10
$0019	$0BFB			DECFSZ	STACK_11, F
$001A	$281C			GOTO	$+2
$001B	$281F			GOTO	$+4
$001C	$0BFA			DECFSZ	STACK_10, F
$001D	$281C			GOTO	$-1
$001E	$2819			GOTO	$-5
$001F	$304A			MOVLW	74
$0020	$00FA			MOVWF	STACK_10
$0021	$0BFA			DECFSZ	STACK_10, F
$0022	$2821			GOTO	$-1
;servo_full.c,7 :: 		PORTB = 0x00;
$0023	$0186			CLRF	PORTB, 1
;servo_full.c,8 :: 		delay_us(19000);
$0024	$3019			MOVLW	25
$0025	$00FB			MOVWF	STACK_11
$0026	$30FF			MOVLW	255
$0027	$00FA			MOVWF	STACK_10
$0028	$0BFB			DECFSZ	STACK_11, F
$0029	$282B			GOTO	$+2
$002A	$282E			GOTO	$+4
$002B	$0BFA			DECFSZ	STACK_10, F
$002C	$282B			GOTO	$-1
$002D	$2828			GOTO	$-5
$002E	$309B			MOVLW	155
$002F	$00FA			MOVWF	STACK_10
$0030	$0BFA			DECFSZ	STACK_10, F
$0031	$2830			GOTO	$-1
$0032	$0000			NOP
;servo_full.c,9 :: 		}
$0033	$	L_main_2:
;servo_full.c,4 :: 		for(i=0;i<100;i++) {
$0033	$0AA0			INCF	main_i_L0, 1
$0034	$1903			BTFSC	STATUS, Z
$0035	$0AA1			INCF	main_i_L0+1, 1
;servo_full.c,9 :: 		}
$0036	$2808			GOTO	L_main_0
$0037	$	L_main_1:
;servo_full.c,10 :: 		for(i=0;i<100;i++) {
$0037	$01A0			CLRF	main_i_L0
$0038	$01A1			CLRF	main_i_L0+1
$0039	$	L_main_3:
$0039	$3080			MOVLW	128
$003A	$0621			XORWF	main_i_L0+1, 0
$003B	$00F0			MOVWF	STACK_0
$003C	$3080			MOVLW	128
$003D	$0270			SUBWF	STACK_0, 0
$003E	$1D03			BTFSS	STATUS, Z
$003F	$2842			GOTO	L_main_7
$0040	$3064			MOVLW	100
$0041	$0220			SUBWF	main_i_L0, 0
$0042	$	L_main_7:
$0042	$1803			BTFSC	STATUS, C
$0043	$2868			GOTO	L_main_4
;servo_full.c,11 :: 		PORTB = 0x01;
$0044	$3001			MOVLW	1
$0045	$0086			MOVWF	PORTB
;servo_full.c,12 :: 		delay_us(2000);
$0046	$3003			MOVLW	3
$0047	$00FB			MOVWF	STACK_11
$0048	$30FF			MOVLW	255
$0049	$00FA			MOVWF	STACK_10
$004A	$0BFB			DECFSZ	STACK_11, F
$004B	$284D			GOTO	$+2
$004C	$2850			GOTO	$+4
$004D	$0BFA			DECFSZ	STACK_10, F
$004E	$284D			GOTO	$-1
$004F	$284A			GOTO	$-5
$0050	$3096			MOVLW	150
$0051	$00FA			MOVWF	STACK_10
$0052	$0BFA			DECFSZ	STACK_10, F
$0053	$2852			GOTO	$-1
;servo_full.c,13 :: 		PORTB = 0x00;
$0054	$0186			CLRF	PORTB, 1
;servo_full.c,14 :: 		delay_us(18000);
$0055	$3018			MOVLW	24
$0056	$00FB			MOVWF	STACK_11
$0057	$30FF			MOVLW	255
$0058	$00FA			MOVWF	STACK_10
$0059	$0BFB			DECFSZ	STACK_11, F
$005A	$285C			GOTO	$+2
$005B	$285F			GOTO	$+4
$005C	$0BFA			DECFSZ	STACK_10, F
$005D	$285C			GOTO	$-1
$005E	$2859			GOTO	$-5
$005F	$304F			MOVLW	79
$0060	$00FA			MOVWF	STACK_10
$0061	$0BFA			DECFSZ	STACK_10, F
$0062	$2861			GOTO	$-1
$0063	$0000			NOP
;servo_full.c,15 :: 		}
$0064	$	L_main_5:
;servo_full.c,10 :: 		for(i=0;i<100;i++) {
$0064	$0AA0			INCF	main_i_L0, 1
$0065	$1903			BTFSC	STATUS, Z
$0066	$0AA1			INCF	main_i_L0+1, 1
;servo_full.c,15 :: 		}
$0067	$2839			GOTO	L_main_3
$0068	$	L_main_4:
;servo_full.c,16 :: 		}
$0068	$2868			GOTO	$
