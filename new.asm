;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 8/24/2010 10:21:24 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;new.c,1 :: 		void main()
;new.c,5 :: 		delay_us(15);
$0004	$3004			MOVLW	4
$0005	$1303			BCF	STATUS, RP1
$0006	$1283			BCF	STATUS, RP0
$0007	$00FA			MOVWF	STACK_10
$0008	$0BFA			DECFSZ	STACK_10, F
$0009	$2808			GOTO	$-1
$000A	$0000			NOP
$000B	$0000			NOP
;new.c,6 :: 		}
$000C	$280C			GOTO	$
