;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 7/13/2010 10:21:06 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$281C			GOTO	_main
$0004	$	_interrupt:
$0004	$00FF			MOVWF	STACK_15
$0005	$0E03			SWAPF	STATUS, 0
$0006	$0183			CLRF	STATUS
$0007	$00A2			MOVWF	?saveSTATUS
$0008	$0804			MOVF	FSR, 0
$0009	$00A1			MOVWF	?saveFSR
$000A	$080A			MOVF	PCLATH, 0
$000B	$00A3			MOVWF	?savePCLATH
$000C	$018A			CLRF	PCLATH
;INTERRUPT.c,3 :: 		void interrupt()
;INTERRUPT.c,5 :: 		TRISC=0X00;
$000D	$1683			BSF	STATUS, RP0
$000E	$0187			CLRF	TRISC, 1
;INTERRUPT.c,6 :: 		PORTC=0xFF;
$000F	$30FF			MOVLW	255
$0010	$1283			BCF	STATUS, RP0
$0011	$0087			MOVWF	PORTC
;INTERRUPT.c,7 :: 		INTCON.F1 = 0; /* clear the int flag */
$0012	$108B			BCF	INTCON, 1
;INTERRUPT.c,8 :: 		}
$0013	$	L_Interrupt_end:
$0013	$0823			MOVF	?savePCLATH, 0
$0014	$008A			MOVWF	PCLATH
$0015	$0821			MOVF	?saveFSR, 0
$0016	$0084			MOVWF	FSR
$0017	$0E22			SWAPF	?saveSTATUS, 0
$0018	$0083			MOVWF	STATUS
$0019	$0EFF			SWAPF	STACK_15, 1
$001A	$0E7F			SWAPF	STACK_15, 0
$001B	$0009			RETFIE
$001C	$	_main:
;INTERRUPT.c,10 :: 		void main ( )
;INTERRUPT.c,12 :: 		count=0;
$001C	$1303			BCF	STATUS, RP1
$001D	$1283			BCF	STATUS, RP0
$001E	$01A0			CLRF	_count, 1
;INTERRUPT.c,13 :: 		TRISB = 0xFF; /* set up port b */
$001F	$30FF			MOVLW	255
$0020	$1683			BSF	STATUS, RP0
$0021	$0086			MOVWF	TRISB
;INTERRUPT.c,14 :: 		PORTB = 0X03; /* turn off all and any LED�s on port b */
$0022	$3003			MOVLW	3
$0023	$1283			BCF	STATUS, RP0
$0024	$0086			MOVWF	PORTB
;INTERRUPT.c,15 :: 		INTCON.f7=0X01;
$0025	$178B			BSF	INTCON, 7
;INTERRUPT.c,16 :: 		OPTION_REG.F6 = 1; /* interrupt on rising edge */
$0026	$1683			BSF	STATUS, RP0
$0027	$1701			BSF	OPTION_REG, 6
;INTERRUPT.c,17 :: 		INTCON.f5=0X01;
$0028	$168B			BSF	INTCON, 5
;INTERRUPT.c,18 :: 		while(1);
$0029	$	L_main_0:
$0029	$2829			GOTO	L_main_0
;INTERRUPT.c,19 :: 		}
$002A	$282A			GOTO	$
