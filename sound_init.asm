;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 9/3/2010 12:09:49 AM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2A8A			GOTO	_main
$0004	$	_SDIV3232L:
$0004	$1303			BCF	STATUS, RP1
$0005	$1283			BCF	STATUS, RP0
$0006	$0874			MOVF	STACK_4, W
$0007	$02F8			SUBWF	STACK_8, F
$0008	$0875			MOVF	STACK_5, W
$0009	$1C03			BTFSS	STATUS, C
$000A	$0F75			INCFSZ	STACK_5, W
$000B	$02F9			SUBWF	STACK_9, F
$000C	$0876			MOVF	STACK_6, W
$000D	$1C03			BTFSS	STATUS, C
$000E	$0F76			INCFSZ	STACK_6, W
$000F	$02FA			SUBWF	STACK_10, F
$0010	$0877			MOVF	STACK_7, W
$0011	$1C03			BTFSS	STATUS, C
$0012	$0F77			INCFSZ	STACK_7, W
$0013	$02FB			SUBWF	STACK_11, F
$0014	$0DF3			RLF	STACK_3, F
$0015	$3007			MOVLW	7
$0016	$00FC			MOVWF	STACK_12
$0017	$	LOOPS3232A:
$0017	$0D73			RLF	STACK_3, W
$0018	$0DF8			RLF	STACK_8, F
$0019	$0DF9			RLF	STACK_9, F
$001A	$0DFA			RLF	STACK_10, F
$001B	$0DFB			RLF	STACK_11, F
$001C	$0874			MOVF	STACK_4, W
$001D	$1C73			BTFSS	STACK_3, 0
$001E	$282D			GOTO	SADD22LA
$001F	$02F8			SUBWF	STACK_8, F
$0020	$0875			MOVF	STACK_5, W
$0021	$1C03			BTFSS	STATUS, C
$0022	$0F75			INCFSZ	STACK_5, W
$0023	$02F9			SUBWF	STACK_9, F
$0024	$0876			MOVF	STACK_6, W
$0025	$1C03			BTFSS	STATUS, C
$0026	$0F76			INCFSZ	STACK_6, W
$0027	$02FA			SUBWF	STACK_10, F
$0028	$0877			MOVF	STACK_7, W
$0029	$1C03			BTFSS	STATUS, C
$002A	$0F77			INCFSZ	STACK_7, W
$002B	$02FB			SUBWF	STACK_11, F
$002C	$283A			GOTO	SOK22LA
$002D	$	SADD22LA:
$002D	$07F8			ADDWF	STACK_8, F
$002E	$0875			MOVF	STACK_5, W
$002F	$1803			BTFSC	STATUS, C
$0030	$0F75			INCFSZ	STACK_5, W
$0031	$07F9			ADDWF	STACK_9, F
$0032	$0876			MOVF	STACK_6, W
$0033	$1803			BTFSC	STATUS, C
$0034	$0F76			INCFSZ	STACK_6, W
$0035	$07FA			ADDWF	STACK_10, F
$0036	$0877			MOVF	STACK_7, W
$0037	$1803			BTFSC	STATUS, C
$0038	$0F77			INCFSZ	STACK_7, W
$0039	$07FB			ADDWF	STACK_11, F
$003A	$	SOK22LA:
$003A	$0DF3			RLF	STACK_3, F
$003B	$0BFC			DECFSZ	STACK_12, F
$003C	$2817			GOTO	LOOPS3232A
$003D	$0D72			RLF	STACK_2, W
$003E	$0DF8			RLF	STACK_8, F
$003F	$0DF9			RLF	STACK_9, F
$0040	$0DFA			RLF	STACK_10, F
$0041	$0DFB			RLF	STACK_11, F
$0042	$0874			MOVF	STACK_4, W
$0043	$1C73			BTFSS	STACK_3, 0
$0044	$2853			GOTO	SADD22L8
$0045	$02F8			SUBWF	STACK_8, F
$0046	$0875			MOVF	STACK_5, W
$0047	$1C03			BTFSS	STATUS, C
$0048	$0F75			INCFSZ	STACK_5, W
$0049	$02F9			SUBWF	STACK_9, F
$004A	$0876			MOVF	STACK_6, W
$004B	$1C03			BTFSS	STATUS, C
$004C	$0F76			INCFSZ	STACK_6, W
$004D	$02FA			SUBWF	STACK_10, F
$004E	$0877			MOVF	STACK_7, W
$004F	$1C03			BTFSS	STATUS, C
$0050	$0F77			INCFSZ	STACK_7, W
$0051	$02FB			SUBWF	STACK_11, F
$0052	$2860			GOTO	SOK22L8
$0053	$	SADD22L8:
$0053	$07F8			ADDWF	STACK_8, F
$0054	$0875			MOVF	STACK_5, W
$0055	$1803			BTFSC	STATUS, C
$0056	$0F75			INCFSZ	STACK_5, W
$0057	$07F9			ADDWF	STACK_9, F
$0058	$0876			MOVF	STACK_6, W
$0059	$1803			BTFSC	STATUS, C
$005A	$0F76			INCFSZ	STACK_6, W
$005B	$07FA			ADDWF	STACK_10, F
$005C	$0877			MOVF	STACK_7, W
$005D	$1803			BTFSC	STATUS, C
$005E	$0F77			INCFSZ	STACK_7, W
$005F	$07FB			ADDWF	STACK_11, F
$0060	$	SOK22L8:
$0060	$0DF2			RLF	STACK_2, F
$0061	$3007			MOVLW	7
$0062	$00FC			MOVWF	STACK_12
$0063	$	LOOPS3232B:
$0063	$0D72			RLF	STACK_2, W
$0064	$0DF8			RLF	STACK_8, F
$0065	$0DF9			RLF	STACK_9, F
$0066	$0DFA			RLF	STACK_10, F
$0067	$0DFB			RLF	STACK_11, F
$0068	$0874			MOVF	STACK_4, W
$0069	$1C72			BTFSS	STACK_2, 0
$006A	$2879			GOTO	SADD22LB
$006B	$02F8			SUBWF	STACK_8, F
$006C	$0875			MOVF	STACK_5, W
$006D	$1C03			BTFSS	STATUS, C
$006E	$0F75			INCFSZ	STACK_5, W
$006F	$02F9			SUBWF	STACK_9, F
$0070	$0876			MOVF	STACK_6, W
$0071	$1C03			BTFSS	STATUS, C
$0072	$0F76			INCFSZ	STACK_6, W
$0073	$02FA			SUBWF	STACK_10, F
$0074	$0877			MOVF	STACK_7, W
$0075	$1C03			BTFSS	STATUS, C
$0076	$0F77			INCFSZ	STACK_7, W
$0077	$02FB			SUBWF	STACK_11, F
$0078	$2886			GOTO	SOK22LB
$0079	$	SADD22LB:
$0079	$07F8			ADDWF	STACK_8, F
$007A	$0875			MOVF	STACK_5, W
$007B	$1803			BTFSC	STATUS, C
$007C	$0F75			INCFSZ	STACK_5, W
$007D	$07F9			ADDWF	STACK_9, F
$007E	$0876			MOVF	STACK_6, W
$007F	$1803			BTFSC	STATUS, C
$0080	$0F76			INCFSZ	STACK_6, W
$0081	$07FA			ADDWF	STACK_10, F
$0082	$0877			MOVF	STACK_7, W
$0083	$1803			BTFSC	STATUS, C
$0084	$0F77			INCFSZ	STACK_7, W
$0085	$07FB			ADDWF	STACK_11, F
$0086	$	SOK22LB:
$0086	$0DF2			RLF	STACK_2, F
$0087	$0BFC			DECFSZ	STACK_12, F
$0088	$2863			GOTO	LOOPS3232B
$0089	$0D71			RLF	STACK_1, W
$008A	$0DF8			RLF	STACK_8, F
$008B	$0DF9			RLF	STACK_9, F
$008C	$0DFA			RLF	STACK_10, F
$008D	$0DFB			RLF	STACK_11, F
$008E	$0874			MOVF	STACK_4, W
$008F	$1C72			BTFSS	STACK_2, 0
$0090	$289F			GOTO	SADD22L16
$0091	$02F8			SUBWF	STACK_8, F
$0092	$0875			MOVF	STACK_5, W
$0093	$1C03			BTFSS	STATUS, C
$0094	$0F75			INCFSZ	STACK_5, W
$0095	$02F9			SUBWF	STACK_9, F
$0096	$0876			MOVF	STACK_6, W
$0097	$1C03			BTFSS	STATUS, C
$0098	$0F76			INCFSZ	STACK_6, W
$0099	$02FA			SUBWF	STACK_10, F
$009A	$0877			MOVF	STACK_7, W
$009B	$1C03			BTFSS	STATUS, C
$009C	$0F77			INCFSZ	STACK_7, W
$009D	$02FB			SUBWF	STACK_11, F
$009E	$28AC			GOTO	SOK22L16
$009F	$	SADD22L16:
$009F	$07F8			ADDWF	STACK_8, F
$00A0	$0875			MOVF	STACK_5, W
$00A1	$1803			BTFSC	STATUS, C
$00A2	$0F75			INCFSZ	STACK_5, W
$00A3	$07F9			ADDWF	STACK_9, F
$00A4	$0876			MOVF	STACK_6, W
$00A5	$1803			BTFSC	STATUS, C
$00A6	$0F76			INCFSZ	STACK_6, W
$00A7	$07FA			ADDWF	STACK_10, F
$00A8	$0877			MOVF	STACK_7, W
$00A9	$1803			BTFSC	STATUS, C
$00AA	$0F77			INCFSZ	STACK_7, W
$00AB	$07FB			ADDWF	STACK_11, F
$00AC	$	SOK22L16:
$00AC	$0DF1			RLF	STACK_1, F
$00AD	$3007			MOVLW	7
$00AE	$00FC			MOVWF	STACK_12
$00AF	$	LOOPS3232C:
$00AF	$0D71			RLF	STACK_1, W
$00B0	$0DF8			RLF	STACK_8, F
$00B1	$0DF9			RLF	STACK_9, F
$00B2	$0DFA			RLF	STACK_10, F
$00B3	$0DFB			RLF	STACK_11, F
$00B4	$0874			MOVF	STACK_4, W
$00B5	$1C71			BTFSS	STACK_1, 0
$00B6	$28C5			GOTO	SADD22LC
$00B7	$02F8			SUBWF	STACK_8, F
$00B8	$0875			MOVF	STACK_5, W
$00B9	$1C03			BTFSS	STATUS, C
$00BA	$0F75			INCFSZ	STACK_5, W
$00BB	$02F9			SUBWF	STACK_9, F
$00BC	$0876			MOVF	STACK_6, W
$00BD	$1C03			BTFSS	STATUS, C
$00BE	$0F76			INCFSZ	STACK_6, W
$00BF	$02FA			SUBWF	STACK_10, F
$00C0	$0877			MOVF	STACK_7, W
$00C1	$1C03			BTFSS	STATUS, C
$00C2	$0F77			INCFSZ	STACK_7, W
$00C3	$02FB			SUBWF	STACK_11, F
$00C4	$28D2			GOTO	SOK22LC
$00C5	$	SADD22LC:
$00C5	$07F8			ADDWF	STACK_8, F
$00C6	$0875			MOVF	STACK_5, W
$00C7	$1803			BTFSC	STATUS, C
$00C8	$0F75			INCFSZ	STACK_5, W
$00C9	$07F9			ADDWF	STACK_9, F
$00CA	$0876			MOVF	STACK_6, W
$00CB	$1803			BTFSC	STATUS, C
$00CC	$0F76			INCFSZ	STACK_6, W
$00CD	$07FA			ADDWF	STACK_10, F
$00CE	$0877			MOVF	STACK_7, W
$00CF	$1803			BTFSC	STATUS, C
$00D0	$0F77			INCFSZ	STACK_7, W
$00D1	$07FB			ADDWF	STACK_11, F
$00D2	$	SOK22LC:
$00D2	$0DF1			RLF	STACK_1, F
$00D3	$0BFC			DECFSZ	STACK_12, F
$00D4	$28AF			GOTO	LOOPS3232C
$00D5	$0D70			RLF	STACK_0, W
$00D6	$0DF8			RLF	STACK_8, F
$00D7	$0DF9			RLF	STACK_9, F
$00D8	$0DFA			RLF	STACK_10, F
$00D9	$0DFB			RLF	STACK_11, F
$00DA	$0874			MOVF	STACK_4, W
$00DB	$1C71			BTFSS	STACK_1, 0
$00DC	$28EB			GOTO	SADD22L24
$00DD	$02F8			SUBWF	STACK_8, F
$00DE	$0875			MOVF	STACK_5, W
$00DF	$1C03			BTFSS	STATUS, C
$00E0	$0F75			INCFSZ	STACK_5, W
$00E1	$02F9			SUBWF	STACK_9, F
$00E2	$0876			MOVF	STACK_6, W
$00E3	$1C03			BTFSS	STATUS, C
$00E4	$0F76			INCFSZ	STACK_6, W
$00E5	$02FA			SUBWF	STACK_10, F
$00E6	$0877			MOVF	STACK_7, W
$00E7	$1C03			BTFSS	STATUS, C
$00E8	$0F77			INCFSZ	STACK_7, W
$00E9	$02FB			SUBWF	STACK_11, F
$00EA	$28F8			GOTO	SOK22L24
$00EB	$	SADD22L24:
$00EB	$07F8			ADDWF	STACK_8, F
$00EC	$0875			MOVF	STACK_5, W
$00ED	$1803			BTFSC	STATUS, C
$00EE	$0F75			INCFSZ	STACK_5, W
$00EF	$07F9			ADDWF	STACK_9, F
$00F0	$0876			MOVF	STACK_6, W
$00F1	$1803			BTFSC	STATUS, C
$00F2	$0F76			INCFSZ	STACK_6, W
$00F3	$07FA			ADDWF	STACK_10, F
$00F4	$0877			MOVF	STACK_7, W
$00F5	$1803			BTFSC	STATUS, C
$00F6	$0F77			INCFSZ	STACK_7, W
$00F7	$07FB			ADDWF	STACK_11, F
$00F8	$	SOK22L24:
$00F8	$0DF0			RLF	STACK_0, F
$00F9	$3007			MOVLW	7
$00FA	$00FC			MOVWF	STACK_12
$00FB	$	LOOPS3232D:
$00FB	$0D70			RLF	STACK_0, W
$00FC	$0DF8			RLF	STACK_8, F
$00FD	$0DF9			RLF	STACK_9, F
$00FE	$0DFA			RLF	STACK_10, F
$00FF	$0DFB			RLF	STACK_11, F
$0100	$0874			MOVF	STACK_4, W
$0101	$1C70			BTFSS	STACK_0, 0
$0102	$2911			GOTO	SADD22LD
$0103	$02F8			SUBWF	STACK_8, F
$0104	$0875			MOVF	STACK_5, W
$0105	$1C03			BTFSS	STATUS, C
$0106	$0F75			INCFSZ	STACK_5, W
$0107	$02F9			SUBWF	STACK_9, F
$0108	$0876			MOVF	STACK_6, W
$0109	$1C03			BTFSS	STATUS, C
$010A	$0F76			INCFSZ	STACK_6, W
$010B	$02FA			SUBWF	STACK_10, F
$010C	$0877			MOVF	STACK_7, W
$010D	$1C03			BTFSS	STATUS, C
$010E	$0F77			INCFSZ	STACK_7, W
$010F	$02FB			SUBWF	STACK_11, F
$0110	$291E			GOTO	SOK22LD
$0111	$	SADD22LD:
$0111	$07F8			ADDWF	STACK_8, F
$0112	$0875			MOVF	STACK_5, W
$0113	$1803			BTFSC	STATUS, C
$0114	$0F75			INCFSZ	STACK_5, W
$0115	$07F9			ADDWF	STACK_9, F
$0116	$0876			MOVF	STACK_6, W
$0117	$1803			BTFSC	STATUS, C
$0118	$0F76			INCFSZ	STACK_6, W
$0119	$07FA			ADDWF	STACK_10, F
$011A	$0877			MOVF	STACK_7, W
$011B	$1803			BTFSC	STATUS, C
$011C	$0F77			INCFSZ	STACK_7, W
$011D	$07FB			ADDWF	STACK_11, F
$011E	$	SOK22LD:
$011E	$0DF0			RLF	STACK_0, F
$011F	$0BFC			DECFSZ	STACK_12, F
$0120	$28FB			GOTO	LOOPS3232D
$0121	$1870			BTFSC	STACK_0, 0
$0122	$2931			GOTO	SOK22L
$0123	$0874			MOVF	STACK_4, W
$0124	$07F8			ADDWF	STACK_8, F
$0125	$0875			MOVF	STACK_5, W
$0126	$1803			BTFSC	STATUS, C
$0127	$0F75			INCFSZ	STACK_5, W
$0128	$07F9			ADDWF	STACK_9, F
$0129	$0876			MOVF	STACK_6, W
$012A	$1803			BTFSC	STATUS, C
$012B	$0F76			INCFSZ	STACK_6, W
$012C	$07FA			ADDWF	STACK_10, F
$012D	$0877			MOVF	STACK_7, W
$012E	$1803			BTFSC	STATUS, C
$012F	$0F77			INCFSZ	STACK_7, W
$0130	$07FB			ADDWF	STACK_11, F
$0131	$	SOK22L:
$0131	$0008			RETURN
$037C	$	_COMFREM:
$037C	$1303			BCF	STATUS, RP1
$037D	$1283			BCF	STATUS, RP0
$037E	$09FB			COMF	STACK_11, F
$037F	$09FA			COMF	STACK_10, F
$0380	$09F9			COMF	STACK_9, F
$0381	$09F8			COMF	STACK_8, F
$0382	$0AF8			INCF	STACK_8, F
$0383	$1903			BTFSC	STATUS, Z
$0384	$0AF9			INCF	STACK_9, F
$0385	$1903			BTFSC	STATUS, Z
$0386	$0AFA			INCF	STACK_10, F
$0387	$1903			BTFSC	STATUS, Z
$0388	$0AFB			INCF	STACK_11, F
$0389	$0008			RETURN
$038A	$	_Get_Fosc_kHz:
;delays.c,1 :: 		unsigned long Get_Fosc_kHz(){
;delays.c,3 :: 		return Clock_kHz();
$038A	$30A0			MOVLW	160
$038B	$1303			BCF	STATUS, RP1
$038C	$1283			BCF	STATUS, RP0
$038D	$00F0			MOVWF	STACK_0
$038E	$300F			MOVLW	15
$038F	$00F1			MOVWF	STACK_0+1
$0390	$01F2			CLRF	STACK_0+2
$0391	$01F3			CLRF	STACK_0+3
;delays.c,5 :: 		}
$0392	$0008			RETURN
$0326	$	_Delay_Cyc:
;delays.c,53 :: 		void Delay_Cyc(char cycles_div_by_10)  { // Cycles_div_by_10: min 3, max 255
;delays.c,55 :: 		--cycles_div_by_10;
$0326	$1303			BCF	STATUS, RP1
$0327	$1283			BCF	STATUS, RP0
$0328	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,56 :: 		--cycles_div_by_10;
$0329	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,57 :: 		while (cycles_div_by_10 > 0) {
$032A	$	L_Delay_Cyc_0:
$032A	$0834			MOVF	FARG_Delay_Cyc+0, 0
$032B	$3C00			SUBLW	0
$032C	$1803			BTFSC	STATUS, C
$032D	$2B33			GOTO	L_Delay_Cyc_1
;delays.c,58 :: 		--cycles_div_by_10;
$032E	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,59 :: 		asm nop;
$032F	$0000			NOP
;delays.c,60 :: 		asm nop;
$0330	$0000			NOP
;delays.c,61 :: 		asm nop;
$0331	$0000			NOP
;delays.c,62 :: 		}
$0332	$2B2A			GOTO	L_Delay_Cyc_0
$0333	$	L_Delay_Cyc_1:
;delays.c,63 :: 		asm nop;
$0333	$0000			NOP
;delays.c,64 :: 		asm nop;
$0334	$0000			NOP
;delays.c,65 :: 		asm nop;
$0335	$0000			NOP
;delays.c,66 :: 		}
$0336	$0008			RETURN
$02A8	$	_Mul_32x32_U:
$02A8	$1303			BCF	STATUS, RP1
$02A9	$1283			BCF	STATUS, RP0
$02AA	$3022			MOVLW	34
$02AB	$00FC			MOVWF	STACK_12
$02AC	$01F8			CLRF	STACK_8
$02AD	$01F9			CLRF	STACK_9
$02AE	$01FA			CLRF	STACK_10
$02AF	$01FB			CLRF	STACK_11
$02B0	$	_NEXT:
$02B0	$03FC			DECF	STACK_12, F
$02B1	$1903			BTFSC	STATUS, Z
$02B2	$2ADE			GOTO	_EXIT2
$02B3	$1003			BCF	STATUS, C
$02B4	$	_LOOP:
$02B4	$0CFB			RRF	STACK_11, F
$02B5	$0CFA			RRF	STACK_10, F
$02B6	$0CF9			RRF	STACK_9, F
$02B7	$0CF8			RRF	STACK_8, F
$02B8	$0CF3			RRF	STACK_3, F
$02B9	$0CF2			RRF	STACK_2, F
$02BA	$0CF1			RRF	STACK_1, F
$02BB	$0CF0			RRF	STACK_0, F
$02BC	$1C03			BTFSS	STATUS, C
$02BD	$2AB0			GOTO	_NEXT
$02BE	$03FC			DECF	STACK_12, F
$02BF	$1903			BTFSC	STATUS, Z
$02C0	$2AD0			GOTO	_EXIT1
$02C1	$0874			MOVF	STACK_4, W
$02C2	$07F8			ADDWF	STACK_8, F
$02C3	$0875			MOVF	STACK_5, W
$02C4	$1803			BTFSC	STATUS, C
$02C5	$0F75			INCFSZ	STACK_5, W
$02C6	$07F9			ADDWF	STACK_9, F
$02C7	$0876			MOVF	STACK_6, W
$02C8	$1803			BTFSC	STATUS, C
$02C9	$0F76			INCFSZ	STACK_6, W
$02CA	$07FA			ADDWF	STACK_10, F
$02CB	$0877			MOVF	STACK_7, W
$02CC	$1803			BTFSC	STATUS, C
$02CD	$0F77			INCFSZ	STACK_7, W
$02CE	$07FB			ADDWF	STACK_11, F
$02CF	$2AB4			GOTO	_LOOP
$02D0	$	_EXIT1:
$02D0	$0874			MOVF	STACK_4, W
$02D1	$07F8			ADDWF	STACK_8, F
$02D2	$0875			MOVF	STACK_5, W
$02D3	$1803			BTFSC	STATUS, C
$02D4	$0F75			INCFSZ	STACK_5, W
$02D5	$07F9			ADDWF	STACK_9, F
$02D6	$0876			MOVF	STACK_6, W
$02D7	$1803			BTFSC	STATUS, C
$02D8	$0F76			INCFSZ	STACK_6, W
$02D9	$07FA			ADDWF	STACK_10, F
$02DA	$0877			MOVF	STACK_7, W
$02DB	$1803			BTFSC	STATUS, C
$02DC	$0F77			INCFSZ	STACK_7, W
$02DD	$07FB			ADDWF	STACK_11, F
$02DE	$	_EXIT2:
$02DE	$0008			RETURN
$01D8	$	_Div_32x32_S:
$01D8	$1303			BCF	STATUS, RP1
$01D9	$1283			BCF	STATUS, RP0
$01DA	$	FXD3232S:
$01DA	$01FC			CLRF	STACK_12
$01DB	$1BF7			BTFSC	STACK_7, 7
$01DC	$0AFC			INCF	STACK_12, F
$01DD	$01FD			CLRF	STACK_13
$01DE	$01FB			CLRF	STACK_11
$01DF	$01FA			CLRF	STACK_10
$01E0	$01F9			CLRF	STACK_9
$01E1	$01F8			CLRF	STACK_8
$01E2	$0873			MOVF	STACK_3, W
$01E3	$0472			IORWF	STACK_2, W
$01E4	$0471			IORWF	STACK_1, W
$01E5	$0470			IORWF	STACK_0, W
$01E6	$1903			BTFSC	STATUS, Z
$01E7	$2A6C			GOTO	END_ALL
$01E8	$0873			MOVF	STACK_3, W
$01E9	$0677			XORWF	STACK_7, W
$01EA	$00A0			MOVWF	___math_tempb
$01EB	$1BA0			BTFSC	___math_tempb, 7
$01EC	$09FD			COMF	STACK_13, F
$01ED	$1FF7			BTFSS	STACK_7, 7
$01EE	$29FA			GOTO	CA3232S
$01EF	$09F4			COMF	STACK_4, F
$01F0	$09F5			COMF	STACK_5, F
$01F1	$09F6			COMF	STACK_6, F
$01F2	$09F7			COMF	STACK_7, F
$01F3	$0AF4			INCF	STACK_4, F
$01F4	$1903			BTFSC	STATUS, Z
$01F5	$0AF5			INCF	STACK_5, F
$01F6	$1903			BTFSC	STATUS, Z
$01F7	$0AF6			INCF	STACK_6, F
$01F8	$1903			BTFSC	STATUS, Z
$01F9	$0AF7			INCF	STACK_7, F
$01FA	$	CA3232S:
$01FA	$1FF3			BTFSS	STACK_3, 7
$01FB	$2A07			GOTO	C3232SX
$01FC	$09F0			COMF	STACK_0, F
$01FD	$09F1			COMF	STACK_1, F
$01FE	$09F2			COMF	STACK_2, F
$01FF	$09F3			COMF	STACK_3, F
$0200	$0AF0			INCF	STACK_0, F
$0201	$1903			BTFSC	STATUS, Z
$0202	$0AF1			INCF	STACK_1, F
$0203	$1903			BTFSC	STATUS, Z
$0204	$0AF2			INCF	STACK_2, F
$0205	$1903			BTFSC	STATUS, Z
$0206	$0AF3			INCF	STACK_3, F
$0207	$	C3232SX:
$0207	$0873			MOVF	STACK_3, W
$0208	$0477			IORWF	STACK_7, W
$0209	$00A0			MOVWF	___math_tempb
$020A	$1BA0			BTFSC	___math_tempb, 7
$020B	$2A28			GOTO	C3232SX1
$020C	$	C3232S:
$020C	$2004			CALL	_SDIV3232L
$020D	$	C3232S2:
$020D	$1BFC			BTFSC	STACK_12, 7
$020E	$2A45			GOTO	C3232SX4
$020F	$	C3232SOK:
$020F	$1FFD			BTFSS	STACK_13, 7
$0210	$2A6C			GOTO	END_ALL
$0211	$09F0			COMF	STACK_0, F
$0212	$09F1			COMF	STACK_1, F
$0213	$09F2			COMF	STACK_2, F
$0214	$09F3			COMF	STACK_3, F
$0215	$0AF0			INCF	STACK_0, F
$0216	$1903			BTFSC	STATUS, Z
$0217	$0AF1			INCF	STACK_1, F
$0218	$1903			BTFSC	STATUS, Z
$0219	$0AF2			INCF	STACK_2, F
$021A	$1903			BTFSC	STATUS, Z
$021B	$0AF3			INCF	STACK_3, F
$021C	$09F8			COMF	STACK_8, F
$021D	$09F9			COMF	STACK_9, F
$021E	$09FA			COMF	STACK_10, F
$021F	$09FB			COMF	STACK_11, F
$0220	$0AF8			INCF	STACK_8, F
$0221	$1903			BTFSC	STATUS, Z
$0222	$0AF9			INCF	STACK_9, F
$0223	$1903			BTFSC	STATUS, Z
$0224	$0AFA			INCF	STACK_10, F
$0225	$1903			BTFSC	STATUS, Z
$0226	$0AFB			INCF	STACK_11, F
$0227	$2A6C			GOTO	END_ALL
$0228	$	C3232SX1:
$0228	$1FF7			BTFSS	STACK_7, 7
$0229	$2A3F			GOTO	C3232SX3
$022A	$1BF3			BTFSC	STACK_3, 7
$022B	$2A39			GOTO	C3232SX2
$022C	$0873			MOVF	STACK_3, W
$022D	$00FB			MOVWF	STACK_11
$022E	$0872			MOVF	STACK_2, W
$022F	$00FA			MOVWF	STACK_10
$0230	$0871			MOVF	STACK_1, W
$0231	$00F9			MOVWF	STACK_9
$0232	$0870			MOVF	STACK_0, W
$0233	$00F8			MOVWF	STACK_8
$0234	$01F3			CLRF	STACK_3
$0235	$01F2			CLRF	STACK_2
$0236	$01F1			CLRF	STACK_1
$0237	$01F0			CLRF	STACK_0
$0238	$2A0F			GOTO	C3232SOK
$0239	$	C3232SX2:
$0239	$01F3			CLRF	STACK_3
$023A	$01F2			CLRF	STACK_2
$023B	$01F1			CLRF	STACK_1
$023C	$01F0			CLRF	STACK_0
$023D	$0AF0			INCF	STACK_0, F
$023E	$3400			RETLW	0x00
$023F	$	C3232SX3:
$023F	$09F3			COMF	STACK_3, F
$0240	$09F2			COMF	STACK_2, F
$0241	$09F1			COMF	STACK_1, F
$0242	$09F0			COMF	STACK_0, F
$0243	$17FC			BSF	STACK_12, 7
$0244	$2A0C			GOTO	C3232S
$0245	$	C3232SX4:
$0245	$0AF8			INCF	STACK_8, F
$0246	$1903			BTFSC	STATUS, Z
$0247	$0AF9			INCF	STACK_9, F
$0248	$1903			BTFSC	STATUS, Z
$0249	$0AFA			INCF	STACK_10, F
$024A	$1903			BTFSC	STATUS, Z
$024B	$0AFB			INCF	STACK_11, F
$024C	$0874			MOVF	STACK_4, W
$024D	$0278			SUBWF	STACK_8, W
$024E	$1D03			BTFSS	STATUS, Z
$024F	$2A0F			GOTO	C3232SOK
$0250	$0875			MOVF	STACK_5, W
$0251	$0279			SUBWF	STACK_9, W
$0252	$1D03			BTFSS	STATUS, Z
$0253	$2A0F			GOTO	C3232SOK
$0254	$0876			MOVF	STACK_6, W
$0255	$027A			SUBWF	STACK_10, W
$0256	$1D03			BTFSS	STATUS, Z
$0257	$2A0F			GOTO	C3232SOK
$0258	$0877			MOVF	STACK_7, W
$0259	$027B			SUBWF	STACK_11, W
$025A	$1D03			BTFSS	STATUS, Z
$025B	$2A0F			GOTO	C3232SOK
$025C	$01FB			CLRF	STACK_11
$025D	$01FA			CLRF	STACK_10
$025E	$01F9			CLRF	STACK_9
$025F	$01F8			CLRF	STACK_8
$0260	$0AF0			INCF	STACK_0, F
$0261	$1903			BTFSC	STATUS, Z
$0262	$0AF1			INCF	STACK_1, F
$0263	$1903			BTFSC	STATUS, Z
$0264	$0AF2			INCF	STACK_2, F
$0265	$1903			BTFSC	STATUS, Z
$0266	$0AF3			INCF	STACK_3, F
$0267	$1FF3			BTFSS	STACK_3, 7
$0268	$2A0F			GOTO	C3232SOK
$0269	$01A0			CLRF	___math_tempb
$026A	$1620			BSF	___math_tempb, 4
$026B	$34FF			RETLW	0xFF
$026C	$	END_ALL:
$026C	$01A0			CLRF	___math_tempb
$026D	$1C7C			BTFSS	STACK_12, 0
$026E	$2A70			GOTO	avoid_comfrem
$026F	$237C			CALL	_COMFREM
$0270	$	avoid_comfrem:
$0270	$3F00			ADDLW	0x00
$0271	$0008			RETURN
$02DF	$	_Div_16x16_U:
$02DF	$1303			BCF	STATUS, RP1
$02E0	$1283			BCF	STATUS, RP0
$02E1	$01F8			CLRF	STACK_8
$02E2	$01F9			CLRF	STACK_9
$02E3	$3010			MOVLW	16
$02E4	$00FC			MOVWF	STACK_12
$02E5	$0D71			RLF	STACK_1, W
$02E6	$0DF8			RLF	STACK_8, F
$02E7	$0DF9			RLF	STACK_9, F
$02E8	$0874			MOVF	STACK_4, W
$02E9	$02F8			SUBWF	STACK_8, F
$02EA	$0875			MOVF	STACK_5, W
$02EB	$1C03			BTFSS	STATUS, C
$02EC	$0F75			INCFSZ	STACK_5, W
$02ED	$02F9			SUBWF	STACK_9, F
$02EE	$1803			BTFSC	STATUS, C
$02EF	$2AF7			GOTO	$+8
$02F0	$0874			MOVF	STACK_4, W
$02F1	$07F8			ADDWF	STACK_8, F
$02F2	$0875			MOVF	STACK_5, W
$02F3	$1803			BTFSC	STATUS, C
$02F4	$0F75			INCFSZ	STACK_5, W
$02F5	$07F9			ADDWF	STACK_9, F
$02F6	$1003			BCF	STATUS, C
$02F7	$0DF0			RLF	STACK_0, F
$02F8	$0DF1			RLF	STACK_1, F
$02F9	$0BFC			DECFSZ	STACK_12, F
$02FA	$2AE5			GOTO	$-21
$02FB	$0008			RETURN
$0132	$	_Sound_Play:
$0132	$238A			CALL	_Get_Fosc_kHz
$0133	$30E8			MOVLW	232
$0134	$00F4			MOVWF	STACK_4
$0135	$3003			MOVLW	3
$0136	$00F5			MOVWF	STACK_4+1
$0137	$01F6			CLRF	STACK_4+2
$0138	$01F7			CLRF	STACK_4+3
$0139	$22A8			CALL	_mul_32x32_u
$013A	$0870			MOVF	STACK_0, 0
$013B	$00AC			MOVWF	Sound_Play_per_nc_L0
$013C	$0871			MOVF	STACK_0+1, 0
$013D	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$013E	$0872			MOVF	STACK_0+2, 0
$013F	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$0140	$0873			MOVF	STACK_0+3, 0
$0141	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$0142	$0826			MOVF	FARG_Sound_Play+0, 0
$0143	$00F4			MOVWF	STACK_4
$0144	$0827			MOVF	FARG_Sound_Play+1, 0
$0145	$00F5			MOVWF	STACK_4+1
$0146	$01F6			CLRF	STACK_4+2
$0147	$01F7			CLRF	STACK_4+3
$0148	$21D8			CALL	_div_32x32_s
$0149	$0870			MOVF	STACK_0, 0
$014A	$00AC			MOVWF	Sound_Play_per_nc_L0
$014B	$0871			MOVF	STACK_0+1, 0
$014C	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$014D	$0872			MOVF	STACK_0+2, 0
$014E	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$014F	$0873			MOVF	STACK_0+3, 0
$0150	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$0151	$3003			MOVLW	3
$0152	$00F4			MOVWF	STACK_4
$0153	$0874			MOVF	STACK_4, 0
$0154	$	L_Sound_Play_5:
$0154	$1903			BTFSC	STATUS, Z
$0155	$295D			GOTO	L_Sound_Play_6
$0156	$0CF3			RRF	STACK_0+3, 1
$0157	$0CF2			RRF	STACK_0+2, 1
$0158	$0CF1			RRF	STACK_0+1, 1
$0159	$0CF0			RRF	STACK_0, 1
$015A	$13F3			BCF	STACK_0+3, 7
$015B	$3FFF			ADDLW	255
$015C	$2954			GOTO	L_Sound_Play_5
$015D	$	L_Sound_Play_6:
$015D	$0870			MOVF	STACK_0, 0
$015E	$00AA			MOVWF	Sound_Play_nc_L0
$015F	$0871			MOVF	STACK_0+1, 0
$0160	$00AB			MOVWF	Sound_Play_nc_L0+1
$0161	$238A			CALL	_Get_Fosc_kHz
$0162	$0828			MOVF	FARG_Sound_Play+2, 0
$0163	$00F4			MOVWF	STACK_4
$0164	$0829			MOVF	FARG_Sound_Play+3, 0
$0165	$00F5			MOVWF	STACK_4+1
$0166	$01F6			CLRF	STACK_4+2
$0167	$01F7			CLRF	STACK_4+3
$0168	$22A8			CALL	_mul_32x32_u
$0169	$0870			MOVF	STACK_0, 0
$016A	$00B0			MOVWF	FLOC_Sound_Play+6
$016B	$0871			MOVF	STACK_0+1, 0
$016C	$00B1			MOVWF	FLOC_Sound_Play+7
$016D	$0872			MOVF	STACK_0+2, 0
$016E	$00B2			MOVWF	FLOC_Sound_Play+8
$016F	$0873			MOVF	STACK_0+3, 0
$0170	$00B3			MOVWF	FLOC_Sound_Play+9
$0171	$082A			MOVF	Sound_Play_nc_L0, 0
$0172	$00F0			MOVWF	STACK_0
$0173	$082B			MOVF	Sound_Play_nc_L0+1, 0
$0174	$00F1			MOVWF	STACK_0+1
$0175	$01F2			CLRF	STACK_0+2
$0176	$01F3			CLRF	STACK_0+3
$0177	$3003			MOVLW	3
$0178	$00F4			MOVWF	STACK_4
$0179	$0874			MOVF	STACK_4, 0
$017A	$	L_Sound_Play_7:
$017A	$1903			BTFSC	STATUS, Z
$017B	$2983			GOTO	L_Sound_Play_8
$017C	$0DF0			RLF	STACK_0, 1
$017D	$0DF1			RLF	STACK_0+1, 1
$017E	$0DF2			RLF	STACK_0+2, 1
$017F	$0DF3			RLF	STACK_0+3, 1
$0180	$1070			BCF	STACK_0, 0
$0181	$3FFF			ADDLW	255
$0182	$297A			GOTO	L_Sound_Play_7
$0183	$	L_Sound_Play_8:
$0183	$0870			MOVF	STACK_0, 0
$0184	$00F4			MOVWF	STACK_4
$0185	$0871			MOVF	STACK_0+1, 0
$0186	$00F5			MOVWF	STACK_4+1
$0187	$0872			MOVF	STACK_0+2, 0
$0188	$00F6			MOVWF	STACK_4+2
$0189	$0873			MOVF	STACK_0+3, 0
$018A	$00F7			MOVWF	STACK_4+3
$018B	$0830			MOVF	FLOC_Sound_Play+6, 0
$018C	$00F0			MOVWF	STACK_0
$018D	$0831			MOVF	FLOC_Sound_Play+7, 0
$018E	$00F1			MOVWF	STACK_0+1
$018F	$0832			MOVF	FLOC_Sound_Play+8, 0
$0190	$00F2			MOVWF	STACK_0+2
$0191	$0833			MOVF	FLOC_Sound_Play+9, 0
$0192	$00F3			MOVWF	STACK_0+3
$0193	$21D8			CALL	_div_32x32_s
$0194	$0870			MOVF	STACK_0, 0
$0195	$00AC			MOVWF	Sound_Play_per_nc_L0
$0196	$0871			MOVF	STACK_0+1, 0
$0197	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$0198	$0872			MOVF	STACK_0+2, 0
$0199	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$019A	$0873			MOVF	STACK_0+3, 0
$019B	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$019C	$300A			MOVLW	10
$019D	$00F4			MOVWF	STACK_4
$019E	$3000			MOVLW	0
$019F	$00F5			MOVWF	STACK_4+1
$01A0	$082A			MOVF	Sound_Play_nc_L0, 0
$01A1	$00F0			MOVWF	STACK_0
$01A2	$082B			MOVF	Sound_Play_nc_L0+1, 0
$01A3	$00F1			MOVWF	STACK_0+1
$01A4	$22DF			CALL	_div_16x16_u
$01A5	$0870			MOVF	STACK_0, 0
$01A6	$00AA			MOVWF	Sound_Play_nc_L0
$01A7	$0871			MOVF	STACK_0+1, 0
$01A8	$00AB			MOVWF	Sound_Play_nc_L0+1
$01A9	$3000			MOVLW	0
$01AA	$0271			SUBWF	STACK_0+1, 0
$01AB	$1D03			BTFSS	STATUS, Z
$01AC	$29AF			GOTO	L_Sound_Play_9
$01AD	$3003			MOVLW	3
$01AE	$0270			SUBWF	STACK_0, 0
$01AF	$	L_Sound_Play_9:
$01AF	$1803			BTFSC	STATUS, C
$01B0	$29B2			GOTO	L_Sound_Play_0
$01B1	$0008			RETURN
$01B2	$	L_Sound_Play_0:
$01B2	$0821			MOVF	Sound_soundPortAddr, 0
$01B3	$0084			MOVWF	FSR
$01B4	$	L_Sound_Play_1:
$01B4	$082C			MOVF	Sound_Play_per_nc_L0, 0
$01B5	$00F0			MOVWF	STACK_0
$01B6	$082D			MOVF	Sound_Play_per_nc_L0+1, 0
$01B7	$00F1			MOVWF	STACK_0+1
$01B8	$082E			MOVF	Sound_Play_per_nc_L0+2, 0
$01B9	$00F2			MOVWF	STACK_0+2
$01BA	$082F			MOVF	Sound_Play_per_nc_L0+3, 0
$01BB	$00F3			MOVWF	STACK_0+3
$01BC	$3001			MOVLW	1
$01BD	$02AC			SUBWF	Sound_Play_per_nc_L0, 1
$01BE	$1C03			BTFSS	STATUS, C
$01BF	$02AD			SUBWF	Sound_Play_per_nc_L0+1, 1
$01C0	$1C03			BTFSS	STATUS, C
$01C1	$02AE			SUBWF	Sound_Play_per_nc_L0+2, 1
$01C2	$1C03			BTFSS	STATUS, C
$01C3	$02AF			SUBWF	Sound_Play_per_nc_L0+3, 1
$01C4	$0870			MOVF	STACK_0, 0
$01C5	$0471			IORWF	STACK_0+1, 0
$01C6	$0472			IORWF	STACK_0+2, 0
$01C7	$0473			IORWF	STACK_0+3, 0
$01C8	$1903			BTFSC	STATUS, Z
$01C9	$29D5			GOTO	L_Sound_Play_2
$01CA	$0822			MOVF	Sound_pinMask1, 0
$01CB	$0480			IORWF	INDF, 1
$01CC	$082A			MOVF	Sound_Play_nc_L0, 0
$01CD	$00B4			MOVWF	FARG_Delay_Cyc+0
$01CE	$2326			CALL	_Delay_Cyc
$01CF	$0823			MOVF	Sound_pinMask0, 0
$01D0	$0580			ANDWF	INDF, 1
$01D1	$082A			MOVF	Sound_Play_nc_L0, 0
$01D2	$00B4			MOVWF	FARG_Delay_Cyc+0
$01D3	$2326			CALL	_Delay_Cyc
$01D4	$29B4			GOTO	L_Sound_Play_1
$01D5	$	L_Sound_Play_2:
$01D5	$0823			MOVF	Sound_pinMask0, 0
$01D6	$0580			ANDWF	INDF, 1
$01D7	$0008			RETURN
$034F	$	_ToneA:
;sound_init.c,22 :: 		void ToneA() {
;sound_init.c,23 :: 		Sound_Play( 880, 50);
$034F	$3070			MOVLW	112
$0350	$1303			BCF	STATUS, RP1
$0351	$1283			BCF	STATUS, RP0
$0352	$00A6			MOVWF	FARG_Sound_Play+0
$0353	$3003			MOVLW	3
$0354	$00A7			MOVWF	FARG_Sound_Play+1
$0355	$3032			MOVLW	50
$0356	$00A8			MOVWF	FARG_Sound_Play+2
$0357	$3000			MOVLW	0
$0358	$00A9			MOVWF	FARG_Sound_Play+3
$0359	$2132			CALL	_Sound_Play
;sound_init.c,24 :: 		}
$035A	$0008			RETURN
$0343	$	_ToneC:
;sound_init.c,25 :: 		void ToneC() {
;sound_init.c,26 :: 		Sound_Play(1046, 50);
$0343	$3016			MOVLW	22
$0344	$1303			BCF	STATUS, RP1
$0345	$1283			BCF	STATUS, RP0
$0346	$00A6			MOVWF	FARG_Sound_Play+0
$0347	$3004			MOVLW	4
$0348	$00A7			MOVWF	FARG_Sound_Play+1
$0349	$3032			MOVLW	50
$034A	$00A8			MOVWF	FARG_Sound_Play+2
$034B	$3000			MOVLW	0
$034C	$00A9			MOVWF	FARG_Sound_Play+3
$034D	$2132			CALL	_Sound_Play
;sound_init.c,27 :: 		}
$034E	$0008			RETURN
$0337	$	_ToneE:
;sound_init.c,28 :: 		void ToneE() {
;sound_init.c,29 :: 		Sound_Play(1318, 50);
$0337	$3026			MOVLW	38
$0338	$1303			BCF	STATUS, RP1
$0339	$1283			BCF	STATUS, RP0
$033A	$00A6			MOVWF	FARG_Sound_Play+0
$033B	$3005			MOVLW	5
$033C	$00A7			MOVWF	FARG_Sound_Play+1
$033D	$3032			MOVLW	50
$033E	$00A8			MOVWF	FARG_Sound_Play+2
$033F	$3000			MOVLW	0
$0340	$00A9			MOVWF	FARG_Sound_Play+3
$0341	$2132			CALL	_Sound_Play
;sound_init.c,30 :: 		}
$0342	$0008			RETURN
$0371	$	_Tone1:
;sound_init.c,1 :: 		void Tone1() {
;sound_init.c,2 :: 		Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
$0371	$3093			MOVLW	147
$0372	$1303			BCF	STATUS, RP1
$0373	$1283			BCF	STATUS, RP0
$0374	$00A6			MOVWF	FARG_Sound_Play+0
$0375	$3002			MOVLW	2
$0376	$00A7			MOVWF	FARG_Sound_Play+1
$0377	$30FA			MOVLW	250
$0378	$00A8			MOVWF	FARG_Sound_Play+2
$0379	$01A9			CLRF	FARG_Sound_Play+3
$037A	$2132			CALL	_Sound_Play
;sound_init.c,3 :: 		}
$037B	$0008			RETURN
$0366	$	_Tone2:
;sound_init.c,5 :: 		void Tone2() {
;sound_init.c,6 :: 		Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
$0366	$30BA			MOVLW	186
$0367	$1303			BCF	STATUS, RP1
$0368	$1283			BCF	STATUS, RP0
$0369	$00A6			MOVWF	FARG_Sound_Play+0
$036A	$3002			MOVLW	2
$036B	$00A7			MOVWF	FARG_Sound_Play+1
$036C	$30FA			MOVLW	250
$036D	$00A8			MOVWF	FARG_Sound_Play+2
$036E	$01A9			CLRF	FARG_Sound_Play+3
$036F	$2132			CALL	_Sound_Play
;sound_init.c,7 :: 		}
$0370	$0008			RETURN
$035B	$	_Tone3:
;sound_init.c,9 :: 		void Tone3() {
;sound_init.c,10 :: 		Sound_Play(784, 250);   // Frequency = 784Hz, duration = 250ms
$035B	$3010			MOVLW	16
$035C	$1303			BCF	STATUS, RP1
$035D	$1283			BCF	STATUS, RP0
$035E	$00A6			MOVWF	FARG_Sound_Play+0
$035F	$3003			MOVLW	3
$0360	$00A7			MOVWF	FARG_Sound_Play+1
$0361	$30FA			MOVLW	250
$0362	$00A8			MOVWF	FARG_Sound_Play+2
$0363	$01A9			CLRF	FARG_Sound_Play+3
$0364	$2132			CALL	_Sound_Play
;sound_init.c,11 :: 		}
$0365	$0008			RETURN
$02FC	$	_Sound_Init:
$02FC	$1303			BCF	STATUS, RP1
$02FD	$1283			BCF	STATUS, RP0
$02FE	$0824			MOVF	FARG_Sound_Init+0, 0
$02FF	$00A1			MOVWF	Sound_soundPortAddr
$0300	$0825			MOVF	FARG_Sound_Init+1, 0
$0301	$00F1			MOVWF	STACK_1
$0302	$3001			MOVLW	1
$0303	$00F0			MOVWF	STACK_0
$0304	$0871			MOVF	STACK_1, 0
$0305	$	L_Sound_Init_3:
$0305	$1903			BTFSC	STATUS, Z
$0306	$2B0B			GOTO	L_Sound_Init_4
$0307	$0DF0			RLF	STACK_0, 1
$0308	$1070			BCF	STACK_0, 0
$0309	$3FFF			ADDLW	255
$030A	$2B05			GOTO	L_Sound_Init_3
$030B	$	L_Sound_Init_4:
$030B	$0870			MOVF	STACK_0, 0
$030C	$00A2			MOVWF	Sound_pinMask1
$030D	$09F0			COMF	STACK_0, F
$030E	$0870			MOVF	STACK_0, 0
$030F	$00A3			MOVWF	Sound_pinMask0
$0310	$0824			MOVF	FARG_Sound_Init+0, 0
$0311	$0084			MOVWF	FSR
$0312	$0870			MOVF	STACK_0, 0
$0313	$0580			ANDWF	INDF, 1
$0314	$1784			BSF	FSR, 7
$0315	$0870			MOVF	STACK_0, 0
$0316	$0580			ANDWF	INDF, 1
$0317	$0008			RETURN
$0318	$	_Melody2:
;sound_init.c,32 :: 		void Melody2() {
;sound_init.c,34 :: 		for (i = 9; i > 0; i--) {
$0318	$3009			MOVLW	9
$0319	$1303			BCF	STATUS, RP1
$031A	$1283			BCF	STATUS, RP0
$031B	$00A4			MOVWF	Melody2_i_L0
$031C	$	L_Melody2_0:
$031C	$0824			MOVF	Melody2_i_L0, 0
$031D	$3C00			SUBLW	0
$031E	$1803			BTFSC	STATUS, C
$031F	$2B25			GOTO	L_Melody2_1
;sound_init.c,35 :: 		ToneA(); ToneC(); ToneE();
$0320	$234F			CALL	_ToneA
$0321	$2343			CALL	_ToneC
$0322	$2337			CALL	_ToneE
;sound_init.c,36 :: 		}
$0323	$	L_Melody2_2:
;sound_init.c,34 :: 		for (i = 9; i > 0; i--) {
$0323	$03A4			DECF	Melody2_i_L0, 1
;sound_init.c,36 :: 		}
$0324	$2B1C			GOTO	L_Melody2_0
$0325	$	L_Melody2_1:
;sound_init.c,37 :: 		}
$0325	$0008			RETURN
$0272	$	_Melody:
;sound_init.c,13 :: 		void Melody() {           // Plays the melody "Yellow house"
;sound_init.c,14 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$0272	$2371			CALL	_Tone1
$0273	$2366			CALL	_Tone2
$0274	$235B			CALL	_Tone3
$0275	$235B			CALL	_Tone3
;sound_init.c,15 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$0276	$2371			CALL	_Tone1
$0277	$2366			CALL	_Tone2
$0278	$235B			CALL	_Tone3
$0279	$235B			CALL	_Tone3
;sound_init.c,16 :: 		Tone1(); Tone2(); Tone3();
$027A	$2371			CALL	_Tone1
$027B	$2366			CALL	_Tone2
$027C	$235B			CALL	_Tone3
;sound_init.c,17 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$027D	$2371			CALL	_Tone1
$027E	$2366			CALL	_Tone2
$027F	$235B			CALL	_Tone3
$0280	$235B			CALL	_Tone3
;sound_init.c,18 :: 		Tone1(); Tone2(); Tone3();
$0281	$2371			CALL	_Tone1
$0282	$2366			CALL	_Tone2
$0283	$235B			CALL	_Tone3
;sound_init.c,19 :: 		Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
$0284	$235B			CALL	_Tone3
$0285	$235B			CALL	_Tone3
$0286	$2366			CALL	_Tone2
$0287	$2366			CALL	_Tone2
$0288	$2371			CALL	_Tone1
;sound_init.c,20 :: 		}
$0289	$0008			RETURN
$028A	$	_main:
;sound_init.c,39 :: 		void main() {
;sound_init.c,40 :: 		ADCON1 = 0x0F;                     // Configure all AN pins as digital
$028A	$300F			MOVLW	15
$028B	$1303			BCF	STATUS, RP1
$028C	$1683			BSF	STATUS, RP0
$028D	$009F			MOVWF	ADCON1
;sound_init.c,41 :: 		TRISB  = 0x00;                     // Configure RB7..RB4 as input, RB3 as output
$028E	$0186			CLRF	TRISB, 1
;sound_init.c,43 :: 		Sound_Init(&PORTB,1 );
$028F	$3006			MOVLW	PORTB
$0290	$1283			BCF	STATUS, RP0
$0291	$00A4			MOVWF	FARG_Sound_Init+0
$0292	$3001			MOVLW	1
$0293	$00A5			MOVWF	FARG_Sound_Init+1
$0294	$22FC			CALL	_Sound_Init
;sound_init.c,44 :: 		sound_Init(&portb,2);
$0295	$3006			MOVLW	PORTB
$0296	$00A4			MOVWF	FARG_Sound_Init+0
$0297	$3002			MOVLW	2
$0298	$00A5			MOVWF	FARG_Sound_Init+1
$0299	$22FC			CALL	_Sound_Init
;sound_init.c,45 :: 		Sound_Play(1000, 500);
$029A	$30E8			MOVLW	232
$029B	$00A6			MOVWF	FARG_Sound_Play+0
$029C	$3003			MOVLW	3
$029D	$00A7			MOVWF	FARG_Sound_Play+1
$029E	$30F4			MOVLW	244
$029F	$00A8			MOVWF	FARG_Sound_Play+2
$02A0	$3001			MOVLW	1
$02A1	$00A9			MOVWF	FARG_Sound_Play+3
$02A2	$2132			CALL	_Sound_Play
;sound_init.c,48 :: 		Tone1();
$02A3	$2371			CALL	_Tone1
;sound_init.c,52 :: 		Tone2();
$02A4	$2366			CALL	_Tone2
;sound_init.c,54 :: 		Melody2();
$02A5	$2318			CALL	_Melody2
;sound_init.c,56 :: 		Melody();
$02A6	$2272			CALL	_Melody
;sound_init.c,58 :: 		}
$02A7	$2AA7			GOTO	$
