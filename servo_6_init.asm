;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 2/4/2011 11:39:13 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0136	$	_SDIV3232L:
$0136	$1303			BCF	STATUS, RP1
$0137	$1283			BCF	STATUS, RP0
$0138	$0874			MOVF	STACK_4, W
$0139	$02F8			SUBWF	STACK_8, F
$013A	$0875			MOVF	STACK_5, W
$013B	$1C03			BTFSS	STATUS, C
$013C	$0F75			INCFSZ	STACK_5, W
$013D	$02F9			SUBWF	STACK_9, F
$013E	$0876			MOVF	STACK_6, W
$013F	$1C03			BTFSS	STATUS, C
$0140	$0F76			INCFSZ	STACK_6, W
$0141	$02FA			SUBWF	STACK_10, F
$0142	$0877			MOVF	STACK_7, W
$0143	$1C03			BTFSS	STATUS, C
$0144	$0F77			INCFSZ	STACK_7, W
$0145	$02FB			SUBWF	STACK_11, F
$0146	$0DF3			RLF	STACK_3, F
$0147	$3007			MOVLW	7
$0148	$00FC			MOVWF	STACK_12
$0149	$	LOOPS3232A:
$0149	$0D73			RLF	STACK_3, W
$014A	$0DF8			RLF	STACK_8, F
$014B	$0DF9			RLF	STACK_9, F
$014C	$0DFA			RLF	STACK_10, F
$014D	$0DFB			RLF	STACK_11, F
$014E	$0874			MOVF	STACK_4, W
$014F	$1C73			BTFSS	STACK_3, 0
$0150	$295F			GOTO	SADD22LA
$0151	$02F8			SUBWF	STACK_8, F
$0152	$0875			MOVF	STACK_5, W
$0153	$1C03			BTFSS	STATUS, C
$0154	$0F75			INCFSZ	STACK_5, W
$0155	$02F9			SUBWF	STACK_9, F
$0156	$0876			MOVF	STACK_6, W
$0157	$1C03			BTFSS	STATUS, C
$0158	$0F76			INCFSZ	STACK_6, W
$0159	$02FA			SUBWF	STACK_10, F
$015A	$0877			MOVF	STACK_7, W
$015B	$1C03			BTFSS	STATUS, C
$015C	$0F77			INCFSZ	STACK_7, W
$015D	$02FB			SUBWF	STACK_11, F
$015E	$296C			GOTO	SOK22LA
$015F	$	SADD22LA:
$015F	$07F8			ADDWF	STACK_8, F
$0160	$0875			MOVF	STACK_5, W
$0161	$1803			BTFSC	STATUS, C
$0162	$0F75			INCFSZ	STACK_5, W
$0163	$07F9			ADDWF	STACK_9, F
$0164	$0876			MOVF	STACK_6, W
$0165	$1803			BTFSC	STATUS, C
$0166	$0F76			INCFSZ	STACK_6, W
$0167	$07FA			ADDWF	STACK_10, F
$0168	$0877			MOVF	STACK_7, W
$0169	$1803			BTFSC	STATUS, C
$016A	$0F77			INCFSZ	STACK_7, W
$016B	$07FB			ADDWF	STACK_11, F
$016C	$	SOK22LA:
$016C	$0DF3			RLF	STACK_3, F
$016D	$0BFC			DECFSZ	STACK_12, F
$016E	$2949			GOTO	LOOPS3232A
$016F	$0D72			RLF	STACK_2, W
$0170	$0DF8			RLF	STACK_8, F
$0171	$0DF9			RLF	STACK_9, F
$0172	$0DFA			RLF	STACK_10, F
$0173	$0DFB			RLF	STACK_11, F
$0174	$0874			MOVF	STACK_4, W
$0175	$1C73			BTFSS	STACK_3, 0
$0176	$2985			GOTO	SADD22L8
$0177	$02F8			SUBWF	STACK_8, F
$0178	$0875			MOVF	STACK_5, W
$0179	$1C03			BTFSS	STATUS, C
$017A	$0F75			INCFSZ	STACK_5, W
$017B	$02F9			SUBWF	STACK_9, F
$017C	$0876			MOVF	STACK_6, W
$017D	$1C03			BTFSS	STATUS, C
$017E	$0F76			INCFSZ	STACK_6, W
$017F	$02FA			SUBWF	STACK_10, F
$0180	$0877			MOVF	STACK_7, W
$0181	$1C03			BTFSS	STATUS, C
$0182	$0F77			INCFSZ	STACK_7, W
$0183	$02FB			SUBWF	STACK_11, F
$0184	$2992			GOTO	SOK22L8
$0185	$	SADD22L8:
$0185	$07F8			ADDWF	STACK_8, F
$0186	$0875			MOVF	STACK_5, W
$0187	$1803			BTFSC	STATUS, C
$0188	$0F75			INCFSZ	STACK_5, W
$0189	$07F9			ADDWF	STACK_9, F
$018A	$0876			MOVF	STACK_6, W
$018B	$1803			BTFSC	STATUS, C
$018C	$0F76			INCFSZ	STACK_6, W
$018D	$07FA			ADDWF	STACK_10, F
$018E	$0877			MOVF	STACK_7, W
$018F	$1803			BTFSC	STATUS, C
$0190	$0F77			INCFSZ	STACK_7, W
$0191	$07FB			ADDWF	STACK_11, F
$0192	$	SOK22L8:
$0192	$0DF2			RLF	STACK_2, F
$0193	$3007			MOVLW	7
$0194	$00FC			MOVWF	STACK_12
$0195	$	LOOPS3232B:
$0195	$0D72			RLF	STACK_2, W
$0196	$0DF8			RLF	STACK_8, F
$0197	$0DF9			RLF	STACK_9, F
$0198	$0DFA			RLF	STACK_10, F
$0199	$0DFB			RLF	STACK_11, F
$019A	$0874			MOVF	STACK_4, W
$019B	$1C72			BTFSS	STACK_2, 0
$019C	$29AB			GOTO	SADD22LB
$019D	$02F8			SUBWF	STACK_8, F
$019E	$0875			MOVF	STACK_5, W
$019F	$1C03			BTFSS	STATUS, C
$01A0	$0F75			INCFSZ	STACK_5, W
$01A1	$02F9			SUBWF	STACK_9, F
$01A2	$0876			MOVF	STACK_6, W
$01A3	$1C03			BTFSS	STATUS, C
$01A4	$0F76			INCFSZ	STACK_6, W
$01A5	$02FA			SUBWF	STACK_10, F
$01A6	$0877			MOVF	STACK_7, W
$01A7	$1C03			BTFSS	STATUS, C
$01A8	$0F77			INCFSZ	STACK_7, W
$01A9	$02FB			SUBWF	STACK_11, F
$01AA	$29B8			GOTO	SOK22LB
$01AB	$	SADD22LB:
$01AB	$07F8			ADDWF	STACK_8, F
$01AC	$0875			MOVF	STACK_5, W
$01AD	$1803			BTFSC	STATUS, C
$01AE	$0F75			INCFSZ	STACK_5, W
$01AF	$07F9			ADDWF	STACK_9, F
$01B0	$0876			MOVF	STACK_6, W
$01B1	$1803			BTFSC	STATUS, C
$01B2	$0F76			INCFSZ	STACK_6, W
$01B3	$07FA			ADDWF	STACK_10, F
$01B4	$0877			MOVF	STACK_7, W
$01B5	$1803			BTFSC	STATUS, C
$01B6	$0F77			INCFSZ	STACK_7, W
$01B7	$07FB			ADDWF	STACK_11, F
$01B8	$	SOK22LB:
$01B8	$0DF2			RLF	STACK_2, F
$01B9	$0BFC			DECFSZ	STACK_12, F
$01BA	$2995			GOTO	LOOPS3232B
$01BB	$0D71			RLF	STACK_1, W
$01BC	$0DF8			RLF	STACK_8, F
$01BD	$0DF9			RLF	STACK_9, F
$01BE	$0DFA			RLF	STACK_10, F
$01BF	$0DFB			RLF	STACK_11, F
$01C0	$0874			MOVF	STACK_4, W
$01C1	$1C72			BTFSS	STACK_2, 0
$01C2	$29D1			GOTO	SADD22L16
$01C3	$02F8			SUBWF	STACK_8, F
$01C4	$0875			MOVF	STACK_5, W
$01C5	$1C03			BTFSS	STATUS, C
$01C6	$0F75			INCFSZ	STACK_5, W
$01C7	$02F9			SUBWF	STACK_9, F
$01C8	$0876			MOVF	STACK_6, W
$01C9	$1C03			BTFSS	STATUS, C
$01CA	$0F76			INCFSZ	STACK_6, W
$01CB	$02FA			SUBWF	STACK_10, F
$01CC	$0877			MOVF	STACK_7, W
$01CD	$1C03			BTFSS	STATUS, C
$01CE	$0F77			INCFSZ	STACK_7, W
$01CF	$02FB			SUBWF	STACK_11, F
$01D0	$29DE			GOTO	SOK22L16
$01D1	$	SADD22L16:
$01D1	$07F8			ADDWF	STACK_8, F
$01D2	$0875			MOVF	STACK_5, W
$01D3	$1803			BTFSC	STATUS, C
$01D4	$0F75			INCFSZ	STACK_5, W
$01D5	$07F9			ADDWF	STACK_9, F
$01D6	$0876			MOVF	STACK_6, W
$01D7	$1803			BTFSC	STATUS, C
$01D8	$0F76			INCFSZ	STACK_6, W
$01D9	$07FA			ADDWF	STACK_10, F
$01DA	$0877			MOVF	STACK_7, W
$01DB	$1803			BTFSC	STATUS, C
$01DC	$0F77			INCFSZ	STACK_7, W
$01DD	$07FB			ADDWF	STACK_11, F
$01DE	$	SOK22L16:
$01DE	$0DF1			RLF	STACK_1, F
$01DF	$3007			MOVLW	7
$01E0	$00FC			MOVWF	STACK_12
$01E1	$	LOOPS3232C:
$01E1	$0D71			RLF	STACK_1, W
$01E2	$0DF8			RLF	STACK_8, F
$01E3	$0DF9			RLF	STACK_9, F
$01E4	$0DFA			RLF	STACK_10, F
$01E5	$0DFB			RLF	STACK_11, F
$01E6	$0874			MOVF	STACK_4, W
$01E7	$1C71			BTFSS	STACK_1, 0
$01E8	$29F7			GOTO	SADD22LC
$01E9	$02F8			SUBWF	STACK_8, F
$01EA	$0875			MOVF	STACK_5, W
$01EB	$1C03			BTFSS	STATUS, C
$01EC	$0F75			INCFSZ	STACK_5, W
$01ED	$02F9			SUBWF	STACK_9, F
$01EE	$0876			MOVF	STACK_6, W
$01EF	$1C03			BTFSS	STATUS, C
$01F0	$0F76			INCFSZ	STACK_6, W
$01F1	$02FA			SUBWF	STACK_10, F
$01F2	$0877			MOVF	STACK_7, W
$01F3	$1C03			BTFSS	STATUS, C
$01F4	$0F77			INCFSZ	STACK_7, W
$01F5	$02FB			SUBWF	STACK_11, F
$01F6	$2A04			GOTO	SOK22LC
$01F7	$	SADD22LC:
$01F7	$07F8			ADDWF	STACK_8, F
$01F8	$0875			MOVF	STACK_5, W
$01F9	$1803			BTFSC	STATUS, C
$01FA	$0F75			INCFSZ	STACK_5, W
$01FB	$07F9			ADDWF	STACK_9, F
$01FC	$0876			MOVF	STACK_6, W
$01FD	$1803			BTFSC	STATUS, C
$01FE	$0F76			INCFSZ	STACK_6, W
$01FF	$07FA			ADDWF	STACK_10, F
$0200	$0877			MOVF	STACK_7, W
$0201	$1803			BTFSC	STATUS, C
$0202	$0F77			INCFSZ	STACK_7, W
$0203	$07FB			ADDWF	STACK_11, F
$0204	$	SOK22LC:
$0204	$0DF1			RLF	STACK_1, F
$0205	$0BFC			DECFSZ	STACK_12, F
$0206	$29E1			GOTO	LOOPS3232C
$0207	$0D70			RLF	STACK_0, W
$0208	$0DF8			RLF	STACK_8, F
$0209	$0DF9			RLF	STACK_9, F
$020A	$0DFA			RLF	STACK_10, F
$020B	$0DFB			RLF	STACK_11, F
$020C	$0874			MOVF	STACK_4, W
$020D	$1C71			BTFSS	STACK_1, 0
$020E	$2A1D			GOTO	SADD22L24
$020F	$02F8			SUBWF	STACK_8, F
$0210	$0875			MOVF	STACK_5, W
$0211	$1C03			BTFSS	STATUS, C
$0212	$0F75			INCFSZ	STACK_5, W
$0213	$02F9			SUBWF	STACK_9, F
$0214	$0876			MOVF	STACK_6, W
$0215	$1C03			BTFSS	STATUS, C
$0216	$0F76			INCFSZ	STACK_6, W
$0217	$02FA			SUBWF	STACK_10, F
$0218	$0877			MOVF	STACK_7, W
$0219	$1C03			BTFSS	STATUS, C
$021A	$0F77			INCFSZ	STACK_7, W
$021B	$02FB			SUBWF	STACK_11, F
$021C	$2A2A			GOTO	SOK22L24
$021D	$	SADD22L24:
$021D	$07F8			ADDWF	STACK_8, F
$021E	$0875			MOVF	STACK_5, W
$021F	$1803			BTFSC	STATUS, C
$0220	$0F75			INCFSZ	STACK_5, W
$0221	$07F9			ADDWF	STACK_9, F
$0222	$0876			MOVF	STACK_6, W
$0223	$1803			BTFSC	STATUS, C
$0224	$0F76			INCFSZ	STACK_6, W
$0225	$07FA			ADDWF	STACK_10, F
$0226	$0877			MOVF	STACK_7, W
$0227	$1803			BTFSC	STATUS, C
$0228	$0F77			INCFSZ	STACK_7, W
$0229	$07FB			ADDWF	STACK_11, F
$022A	$	SOK22L24:
$022A	$0DF0			RLF	STACK_0, F
$022B	$3007			MOVLW	7
$022C	$00FC			MOVWF	STACK_12
$022D	$	LOOPS3232D:
$022D	$0D70			RLF	STACK_0, W
$022E	$0DF8			RLF	STACK_8, F
$022F	$0DF9			RLF	STACK_9, F
$0230	$0DFA			RLF	STACK_10, F
$0231	$0DFB			RLF	STACK_11, F
$0232	$0874			MOVF	STACK_4, W
$0233	$1C70			BTFSS	STACK_0, 0
$0234	$2A43			GOTO	SADD22LD
$0235	$02F8			SUBWF	STACK_8, F
$0236	$0875			MOVF	STACK_5, W
$0237	$1C03			BTFSS	STATUS, C
$0238	$0F75			INCFSZ	STACK_5, W
$0239	$02F9			SUBWF	STACK_9, F
$023A	$0876			MOVF	STACK_6, W
$023B	$1C03			BTFSS	STATUS, C
$023C	$0F76			INCFSZ	STACK_6, W
$023D	$02FA			SUBWF	STACK_10, F
$023E	$0877			MOVF	STACK_7, W
$023F	$1C03			BTFSS	STATUS, C
$0240	$0F77			INCFSZ	STACK_7, W
$0241	$02FB			SUBWF	STACK_11, F
$0242	$2A50			GOTO	SOK22LD
$0243	$	SADD22LD:
$0243	$07F8			ADDWF	STACK_8, F
$0244	$0875			MOVF	STACK_5, W
$0245	$1803			BTFSC	STATUS, C
$0246	$0F75			INCFSZ	STACK_5, W
$0247	$07F9			ADDWF	STACK_9, F
$0248	$0876			MOVF	STACK_6, W
$0249	$1803			BTFSC	STATUS, C
$024A	$0F76			INCFSZ	STACK_6, W
$024B	$07FA			ADDWF	STACK_10, F
$024C	$0877			MOVF	STACK_7, W
$024D	$1803			BTFSC	STATUS, C
$024E	$0F77			INCFSZ	STACK_7, W
$024F	$07FB			ADDWF	STACK_11, F
$0250	$	SOK22LD:
$0250	$0DF0			RLF	STACK_0, F
$0251	$0BFC			DECFSZ	STACK_12, F
$0252	$2A2D			GOTO	LOOPS3232D
$0253	$1870			BTFSC	STACK_0, 0
$0254	$2A63			GOTO	SOK22L
$0255	$0874			MOVF	STACK_4, W
$0256	$07F8			ADDWF	STACK_8, F
$0257	$0875			MOVF	STACK_5, W
$0258	$1803			BTFSC	STATUS, C
$0259	$0F75			INCFSZ	STACK_5, W
$025A	$07F9			ADDWF	STACK_9, F
$025B	$0876			MOVF	STACK_6, W
$025C	$1803			BTFSC	STATUS, C
$025D	$0F76			INCFSZ	STACK_6, W
$025E	$07FA			ADDWF	STACK_10, F
$025F	$0877			MOVF	STACK_7, W
$0260	$1803			BTFSC	STATUS, C
$0261	$0F77			INCFSZ	STACK_7, W
$0262	$07FB			ADDWF	STACK_11, F
$0263	$	SOK22L:
$0263	$0008			RETURN
$0425	$	_COMFREM:
$0425	$1303			BCF	STATUS, RP1
$0426	$1283			BCF	STATUS, RP0
$0427	$09FB			COMF	STACK_11, F
$0428	$09FA			COMF	STACK_10, F
$0429	$09F9			COMF	STACK_9, F
$042A	$09F8			COMF	STACK_8, F
$042B	$0AF8			INCF	STACK_8, F
$042C	$1903			BTFSC	STATUS, Z
$042D	$0AF9			INCF	STACK_9, F
$042E	$1903			BTFSC	STATUS, Z
$042F	$0AFA			INCF	STACK_10, F
$0430	$1903			BTFSC	STATUS, Z
$0431	$0AFB			INCF	STACK_11, F
$0432	$0008			RETURN
$0433	$	_Get_Fosc_kHz:
;delays.c,1 :: 		unsigned long Get_Fosc_kHz(){
;delays.c,3 :: 		return Clock_kHz();
$0433	$30A0			MOVLW	160
$0434	$1303			BCF	STATUS, RP1
$0435	$1283			BCF	STATUS, RP0
$0436	$00F0			MOVWF	STACK_0
$0437	$300F			MOVLW	15
$0438	$00F1			MOVWF	STACK_0+1
$0439	$01F2			CLRF	STACK_0+2
$043A	$01F3			CLRF	STACK_0+3
;delays.c,5 :: 		}
$043B	$0008			RETURN
$0414	$	_Delay_Cyc:
;delays.c,53 :: 		void Delay_Cyc(char cycles_div_by_10)  { // Cycles_div_by_10: min 3, max 255
;delays.c,55 :: 		--cycles_div_by_10;
$0414	$1303			BCF	STATUS, RP1
$0415	$1283			BCF	STATUS, RP0
$0416	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,56 :: 		--cycles_div_by_10;
$0417	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,57 :: 		while (cycles_div_by_10 > 0) {
$0418	$	L_Delay_Cyc_0:
$0418	$0834			MOVF	FARG_Delay_Cyc+0, 0
$0419	$3C00			SUBLW	0
$041A	$1803			BTFSC	STATUS, C
$041B	$2C21			GOTO	L_Delay_Cyc_1
;delays.c,58 :: 		--cycles_div_by_10;
$041C	$03B4			DECF	FARG_Delay_Cyc+0, 1
;delays.c,59 :: 		asm nop;
$041D	$0000			NOP
;delays.c,60 :: 		asm nop;
$041E	$0000			NOP
;delays.c,61 :: 		asm nop;
$041F	$0000			NOP
;delays.c,62 :: 		}
$0420	$2C18			GOTO	L_Delay_Cyc_0
$0421	$	L_Delay_Cyc_1:
;delays.c,63 :: 		asm nop;
$0421	$0000			NOP
;delays.c,64 :: 		asm nop;
$0422	$0000			NOP
;delays.c,65 :: 		asm nop;
$0423	$0000			NOP
;delays.c,66 :: 		}
$0424	$0008			RETURN
$03A4	$	_Mul_32x32_U:
$03A4	$1303			BCF	STATUS, RP1
$03A5	$1283			BCF	STATUS, RP0
$03A6	$3022			MOVLW	34
$03A7	$00FC			MOVWF	STACK_12
$03A8	$01F8			CLRF	STACK_8
$03A9	$01F9			CLRF	STACK_9
$03AA	$01FA			CLRF	STACK_10
$03AB	$01FB			CLRF	STACK_11
$03AC	$	_NEXT:
$03AC	$03FC			DECF	STACK_12, F
$03AD	$1903			BTFSC	STATUS, Z
$03AE	$2BDA			GOTO	_EXIT2
$03AF	$1003			BCF	STATUS, C
$03B0	$	_LOOP:
$03B0	$0CFB			RRF	STACK_11, F
$03B1	$0CFA			RRF	STACK_10, F
$03B2	$0CF9			RRF	STACK_9, F
$03B3	$0CF8			RRF	STACK_8, F
$03B4	$0CF3			RRF	STACK_3, F
$03B5	$0CF2			RRF	STACK_2, F
$03B6	$0CF1			RRF	STACK_1, F
$03B7	$0CF0			RRF	STACK_0, F
$03B8	$1C03			BTFSS	STATUS, C
$03B9	$2BAC			GOTO	_NEXT
$03BA	$03FC			DECF	STACK_12, F
$03BB	$1903			BTFSC	STATUS, Z
$03BC	$2BCC			GOTO	_EXIT1
$03BD	$0874			MOVF	STACK_4, W
$03BE	$07F8			ADDWF	STACK_8, F
$03BF	$0875			MOVF	STACK_5, W
$03C0	$1803			BTFSC	STATUS, C
$03C1	$0F75			INCFSZ	STACK_5, W
$03C2	$07F9			ADDWF	STACK_9, F
$03C3	$0876			MOVF	STACK_6, W
$03C4	$1803			BTFSC	STATUS, C
$03C5	$0F76			INCFSZ	STACK_6, W
$03C6	$07FA			ADDWF	STACK_10, F
$03C7	$0877			MOVF	STACK_7, W
$03C8	$1803			BTFSC	STATUS, C
$03C9	$0F77			INCFSZ	STACK_7, W
$03CA	$07FB			ADDWF	STACK_11, F
$03CB	$2BB0			GOTO	_LOOP
$03CC	$	_EXIT1:
$03CC	$0874			MOVF	STACK_4, W
$03CD	$07F8			ADDWF	STACK_8, F
$03CE	$0875			MOVF	STACK_5, W
$03CF	$1803			BTFSC	STATUS, C
$03D0	$0F75			INCFSZ	STACK_5, W
$03D1	$07F9			ADDWF	STACK_9, F
$03D2	$0876			MOVF	STACK_6, W
$03D3	$1803			BTFSC	STATUS, C
$03D4	$0F76			INCFSZ	STACK_6, W
$03D5	$07FA			ADDWF	STACK_10, F
$03D6	$0877			MOVF	STACK_7, W
$03D7	$1803			BTFSC	STATUS, C
$03D8	$0F77			INCFSZ	STACK_7, W
$03D9	$07FB			ADDWF	STACK_11, F
$03DA	$	_EXIT2:
$03DA	$0008			RETURN
$030A	$	_Div_32x32_S:
$030A	$1303			BCF	STATUS, RP1
$030B	$1283			BCF	STATUS, RP0
$030C	$	FXD3232S:
$030C	$01FC			CLRF	STACK_12
$030D	$1BF7			BTFSC	STACK_7, 7
$030E	$0AFC			INCF	STACK_12, F
$030F	$01FD			CLRF	STACK_13
$0310	$01FB			CLRF	STACK_11
$0311	$01FA			CLRF	STACK_10
$0312	$01F9			CLRF	STACK_9
$0313	$01F8			CLRF	STACK_8
$0314	$0873			MOVF	STACK_3, W
$0315	$0472			IORWF	STACK_2, W
$0316	$0471			IORWF	STACK_1, W
$0317	$0470			IORWF	STACK_0, W
$0318	$1903			BTFSC	STATUS, Z
$0319	$2B9E			GOTO	END_ALL
$031A	$0873			MOVF	STACK_3, W
$031B	$0677			XORWF	STACK_7, W
$031C	$00A0			MOVWF	___math_tempb
$031D	$1BA0			BTFSC	___math_tempb, 7
$031E	$09FD			COMF	STACK_13, F
$031F	$1FF7			BTFSS	STACK_7, 7
$0320	$2B2C			GOTO	CA3232S
$0321	$09F4			COMF	STACK_4, F
$0322	$09F5			COMF	STACK_5, F
$0323	$09F6			COMF	STACK_6, F
$0324	$09F7			COMF	STACK_7, F
$0325	$0AF4			INCF	STACK_4, F
$0326	$1903			BTFSC	STATUS, Z
$0327	$0AF5			INCF	STACK_5, F
$0328	$1903			BTFSC	STATUS, Z
$0329	$0AF6			INCF	STACK_6, F
$032A	$1903			BTFSC	STATUS, Z
$032B	$0AF7			INCF	STACK_7, F
$032C	$	CA3232S:
$032C	$1FF3			BTFSS	STACK_3, 7
$032D	$2B39			GOTO	C3232SX
$032E	$09F0			COMF	STACK_0, F
$032F	$09F1			COMF	STACK_1, F
$0330	$09F2			COMF	STACK_2, F
$0331	$09F3			COMF	STACK_3, F
$0332	$0AF0			INCF	STACK_0, F
$0333	$1903			BTFSC	STATUS, Z
$0334	$0AF1			INCF	STACK_1, F
$0335	$1903			BTFSC	STATUS, Z
$0336	$0AF2			INCF	STACK_2, F
$0337	$1903			BTFSC	STATUS, Z
$0338	$0AF3			INCF	STACK_3, F
$0339	$	C3232SX:
$0339	$0873			MOVF	STACK_3, W
$033A	$0477			IORWF	STACK_7, W
$033B	$00A0			MOVWF	___math_tempb
$033C	$1BA0			BTFSC	___math_tempb, 7
$033D	$2B5A			GOTO	C3232SX1
$033E	$	C3232S:
$033E	$2136			CALL	_SDIV3232L
$033F	$	C3232S2:
$033F	$1BFC			BTFSC	STACK_12, 7
$0340	$2B77			GOTO	C3232SX4
$0341	$	C3232SOK:
$0341	$1FFD			BTFSS	STACK_13, 7
$0342	$2B9E			GOTO	END_ALL
$0343	$09F0			COMF	STACK_0, F
$0344	$09F1			COMF	STACK_1, F
$0345	$09F2			COMF	STACK_2, F
$0346	$09F3			COMF	STACK_3, F
$0347	$0AF0			INCF	STACK_0, F
$0348	$1903			BTFSC	STATUS, Z
$0349	$0AF1			INCF	STACK_1, F
$034A	$1903			BTFSC	STATUS, Z
$034B	$0AF2			INCF	STACK_2, F
$034C	$1903			BTFSC	STATUS, Z
$034D	$0AF3			INCF	STACK_3, F
$034E	$09F8			COMF	STACK_8, F
$034F	$09F9			COMF	STACK_9, F
$0350	$09FA			COMF	STACK_10, F
$0351	$09FB			COMF	STACK_11, F
$0352	$0AF8			INCF	STACK_8, F
$0353	$1903			BTFSC	STATUS, Z
$0354	$0AF9			INCF	STACK_9, F
$0355	$1903			BTFSC	STATUS, Z
$0356	$0AFA			INCF	STACK_10, F
$0357	$1903			BTFSC	STATUS, Z
$0358	$0AFB			INCF	STACK_11, F
$0359	$2B9E			GOTO	END_ALL
$035A	$	C3232SX1:
$035A	$1FF7			BTFSS	STACK_7, 7
$035B	$2B71			GOTO	C3232SX3
$035C	$1BF3			BTFSC	STACK_3, 7
$035D	$2B6B			GOTO	C3232SX2
$035E	$0873			MOVF	STACK_3, W
$035F	$00FB			MOVWF	STACK_11
$0360	$0872			MOVF	STACK_2, W
$0361	$00FA			MOVWF	STACK_10
$0362	$0871			MOVF	STACK_1, W
$0363	$00F9			MOVWF	STACK_9
$0364	$0870			MOVF	STACK_0, W
$0365	$00F8			MOVWF	STACK_8
$0366	$01F3			CLRF	STACK_3
$0367	$01F2			CLRF	STACK_2
$0368	$01F1			CLRF	STACK_1
$0369	$01F0			CLRF	STACK_0
$036A	$2B41			GOTO	C3232SOK
$036B	$	C3232SX2:
$036B	$01F3			CLRF	STACK_3
$036C	$01F2			CLRF	STACK_2
$036D	$01F1			CLRF	STACK_1
$036E	$01F0			CLRF	STACK_0
$036F	$0AF0			INCF	STACK_0, F
$0370	$3400			RETLW	0x00
$0371	$	C3232SX3:
$0371	$09F3			COMF	STACK_3, F
$0372	$09F2			COMF	STACK_2, F
$0373	$09F1			COMF	STACK_1, F
$0374	$09F0			COMF	STACK_0, F
$0375	$17FC			BSF	STACK_12, 7
$0376	$2B3E			GOTO	C3232S
$0377	$	C3232SX4:
$0377	$0AF8			INCF	STACK_8, F
$0378	$1903			BTFSC	STATUS, Z
$0379	$0AF9			INCF	STACK_9, F
$037A	$1903			BTFSC	STATUS, Z
$037B	$0AFA			INCF	STACK_10, F
$037C	$1903			BTFSC	STATUS, Z
$037D	$0AFB			INCF	STACK_11, F
$037E	$0874			MOVF	STACK_4, W
$037F	$0278			SUBWF	STACK_8, W
$0380	$1D03			BTFSS	STATUS, Z
$0381	$2B41			GOTO	C3232SOK
$0382	$0875			MOVF	STACK_5, W
$0383	$0279			SUBWF	STACK_9, W
$0384	$1D03			BTFSS	STATUS, Z
$0385	$2B41			GOTO	C3232SOK
$0386	$0876			MOVF	STACK_6, W
$0387	$027A			SUBWF	STACK_10, W
$0388	$1D03			BTFSS	STATUS, Z
$0389	$2B41			GOTO	C3232SOK
$038A	$0877			MOVF	STACK_7, W
$038B	$027B			SUBWF	STACK_11, W
$038C	$1D03			BTFSS	STATUS, Z
$038D	$2B41			GOTO	C3232SOK
$038E	$01FB			CLRF	STACK_11
$038F	$01FA			CLRF	STACK_10
$0390	$01F9			CLRF	STACK_9
$0391	$01F8			CLRF	STACK_8
$0392	$0AF0			INCF	STACK_0, F
$0393	$1903			BTFSC	STATUS, Z
$0394	$0AF1			INCF	STACK_1, F
$0395	$1903			BTFSC	STATUS, Z
$0396	$0AF2			INCF	STACK_2, F
$0397	$1903			BTFSC	STATUS, Z
$0398	$0AF3			INCF	STACK_3, F
$0399	$1FF3			BTFSS	STACK_3, 7
$039A	$2B41			GOTO	C3232SOK
$039B	$01A0			CLRF	___math_tempb
$039C	$1620			BSF	___math_tempb, 4
$039D	$34FF			RETLW	0xFF
$039E	$	END_ALL:
$039E	$01A0			CLRF	___math_tempb
$039F	$1C7C			BTFSS	STACK_12, 0
$03A0	$2BA2			GOTO	avoid_comfrem
$03A1	$2425			CALL	_COMFREM
$03A2	$	avoid_comfrem:
$03A2	$3F00			ADDLW	0x00
$03A3	$0008			RETURN
$03DB	$	_Div_16x16_U:
$03DB	$1303			BCF	STATUS, RP1
$03DC	$1283			BCF	STATUS, RP0
$03DD	$01F8			CLRF	STACK_8
$03DE	$01F9			CLRF	STACK_9
$03DF	$3010			MOVLW	16
$03E0	$00FC			MOVWF	STACK_12
$03E1	$0D71			RLF	STACK_1, W
$03E2	$0DF8			RLF	STACK_8, F
$03E3	$0DF9			RLF	STACK_9, F
$03E4	$0874			MOVF	STACK_4, W
$03E5	$02F8			SUBWF	STACK_8, F
$03E6	$0875			MOVF	STACK_5, W
$03E7	$1C03			BTFSS	STATUS, C
$03E8	$0F75			INCFSZ	STACK_5, W
$03E9	$02F9			SUBWF	STACK_9, F
$03EA	$1803			BTFSC	STATUS, C
$03EB	$2BF3			GOTO	$+8
$03EC	$0874			MOVF	STACK_4, W
$03ED	$07F8			ADDWF	STACK_8, F
$03EE	$0875			MOVF	STACK_5, W
$03EF	$1803			BTFSC	STATUS, C
$03F0	$0F75			INCFSZ	STACK_5, W
$03F1	$07F9			ADDWF	STACK_9, F
$03F2	$1003			BCF	STATUS, C
$03F3	$0DF0			RLF	STACK_0, F
$03F4	$0DF1			RLF	STACK_1, F
$03F5	$0BFC			DECFSZ	STACK_12, F
$03F6	$2BE1			GOTO	$-21
$03F7	$0008			RETURN
$03F8	$	_Sound_Init:
$03F8	$1303			BCF	STATUS, RP1
$03F9	$1283			BCF	STATUS, RP0
$03FA	$0826			MOVF	FARG_Sound_Init+0, 0
$03FB	$00A1			MOVWF	Sound_soundPortAddr
$03FC	$0827			MOVF	FARG_Sound_Init+1, 0
$03FD	$00F1			MOVWF	STACK_1
$03FE	$3001			MOVLW	1
$03FF	$00F0			MOVWF	STACK_0
$0400	$0871			MOVF	STACK_1, 0
$0401	$	L_Sound_Init_3:
$0401	$1903			BTFSC	STATUS, Z
$0402	$2C07			GOTO	L_Sound_Init_4
$0403	$0DF0			RLF	STACK_0, 1
$0404	$1070			BCF	STACK_0, 0
$0405	$3FFF			ADDLW	255
$0406	$2C01			GOTO	L_Sound_Init_3
$0407	$	L_Sound_Init_4:
$0407	$0870			MOVF	STACK_0, 0
$0408	$00A2			MOVWF	Sound_pinMask1
$0409	$09F0			COMF	STACK_0, F
$040A	$0870			MOVF	STACK_0, 0
$040B	$00A3			MOVWF	Sound_pinMask0
$040C	$0826			MOVF	FARG_Sound_Init+0, 0
$040D	$0084			MOVWF	FSR
$040E	$0870			MOVF	STACK_0, 0
$040F	$0580			ANDWF	INDF, 1
$0410	$1784			BSF	FSR, 7
$0411	$0870			MOVF	STACK_0, 0
$0412	$0580			ANDWF	INDF, 1
$0413	$0008			RETURN
$0264	$	_Sound_Play:
$0264	$2433			CALL	_Get_Fosc_kHz
$0265	$30E8			MOVLW	232
$0266	$00F4			MOVWF	STACK_4
$0267	$3003			MOVLW	3
$0268	$00F5			MOVWF	STACK_4+1
$0269	$01F6			CLRF	STACK_4+2
$026A	$01F7			CLRF	STACK_4+3
$026B	$23A4			CALL	_mul_32x32_u
$026C	$0870			MOVF	STACK_0, 0
$026D	$00AC			MOVWF	Sound_Play_per_nc_L0
$026E	$0871			MOVF	STACK_0+1, 0
$026F	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$0270	$0872			MOVF	STACK_0+2, 0
$0271	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$0272	$0873			MOVF	STACK_0+3, 0
$0273	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$0274	$0826			MOVF	FARG_Sound_Play+0, 0
$0275	$00F4			MOVWF	STACK_4
$0276	$0827			MOVF	FARG_Sound_Play+1, 0
$0277	$00F5			MOVWF	STACK_4+1
$0278	$01F6			CLRF	STACK_4+2
$0279	$01F7			CLRF	STACK_4+3
$027A	$230A			CALL	_div_32x32_s
$027B	$0870			MOVF	STACK_0, 0
$027C	$00AC			MOVWF	Sound_Play_per_nc_L0
$027D	$0871			MOVF	STACK_0+1, 0
$027E	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$027F	$0872			MOVF	STACK_0+2, 0
$0280	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$0281	$0873			MOVF	STACK_0+3, 0
$0282	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$0283	$3003			MOVLW	3
$0284	$00F4			MOVWF	STACK_4
$0285	$0874			MOVF	STACK_4, 0
$0286	$	L_Sound_Play_5:
$0286	$1903			BTFSC	STATUS, Z
$0287	$2A8F			GOTO	L_Sound_Play_6
$0288	$0CF3			RRF	STACK_0+3, 1
$0289	$0CF2			RRF	STACK_0+2, 1
$028A	$0CF1			RRF	STACK_0+1, 1
$028B	$0CF0			RRF	STACK_0, 1
$028C	$13F3			BCF	STACK_0+3, 7
$028D	$3FFF			ADDLW	255
$028E	$2A86			GOTO	L_Sound_Play_5
$028F	$	L_Sound_Play_6:
$028F	$0870			MOVF	STACK_0, 0
$0290	$00AA			MOVWF	Sound_Play_nc_L0
$0291	$0871			MOVF	STACK_0+1, 0
$0292	$00AB			MOVWF	Sound_Play_nc_L0+1
$0293	$2433			CALL	_Get_Fosc_kHz
$0294	$0828			MOVF	FARG_Sound_Play+2, 0
$0295	$00F4			MOVWF	STACK_4
$0296	$0829			MOVF	FARG_Sound_Play+3, 0
$0297	$00F5			MOVWF	STACK_4+1
$0298	$01F6			CLRF	STACK_4+2
$0299	$01F7			CLRF	STACK_4+3
$029A	$23A4			CALL	_mul_32x32_u
$029B	$0870			MOVF	STACK_0, 0
$029C	$00B0			MOVWF	FLOC_Sound_Play+6
$029D	$0871			MOVF	STACK_0+1, 0
$029E	$00B1			MOVWF	FLOC_Sound_Play+7
$029F	$0872			MOVF	STACK_0+2, 0
$02A0	$00B2			MOVWF	FLOC_Sound_Play+8
$02A1	$0873			MOVF	STACK_0+3, 0
$02A2	$00B3			MOVWF	FLOC_Sound_Play+9
$02A3	$082A			MOVF	Sound_Play_nc_L0, 0
$02A4	$00F0			MOVWF	STACK_0
$02A5	$082B			MOVF	Sound_Play_nc_L0+1, 0
$02A6	$00F1			MOVWF	STACK_0+1
$02A7	$01F2			CLRF	STACK_0+2
$02A8	$01F3			CLRF	STACK_0+3
$02A9	$3003			MOVLW	3
$02AA	$00F4			MOVWF	STACK_4
$02AB	$0874			MOVF	STACK_4, 0
$02AC	$	L_Sound_Play_7:
$02AC	$1903			BTFSC	STATUS, Z
$02AD	$2AB5			GOTO	L_Sound_Play_8
$02AE	$0DF0			RLF	STACK_0, 1
$02AF	$0DF1			RLF	STACK_0+1, 1
$02B0	$0DF2			RLF	STACK_0+2, 1
$02B1	$0DF3			RLF	STACK_0+3, 1
$02B2	$1070			BCF	STACK_0, 0
$02B3	$3FFF			ADDLW	255
$02B4	$2AAC			GOTO	L_Sound_Play_7
$02B5	$	L_Sound_Play_8:
$02B5	$0870			MOVF	STACK_0, 0
$02B6	$00F4			MOVWF	STACK_4
$02B7	$0871			MOVF	STACK_0+1, 0
$02B8	$00F5			MOVWF	STACK_4+1
$02B9	$0872			MOVF	STACK_0+2, 0
$02BA	$00F6			MOVWF	STACK_4+2
$02BB	$0873			MOVF	STACK_0+3, 0
$02BC	$00F7			MOVWF	STACK_4+3
$02BD	$0830			MOVF	FLOC_Sound_Play+6, 0
$02BE	$00F0			MOVWF	STACK_0
$02BF	$0831			MOVF	FLOC_Sound_Play+7, 0
$02C0	$00F1			MOVWF	STACK_0+1
$02C1	$0832			MOVF	FLOC_Sound_Play+8, 0
$02C2	$00F2			MOVWF	STACK_0+2
$02C3	$0833			MOVF	FLOC_Sound_Play+9, 0
$02C4	$00F3			MOVWF	STACK_0+3
$02C5	$230A			CALL	_div_32x32_s
$02C6	$0870			MOVF	STACK_0, 0
$02C7	$00AC			MOVWF	Sound_Play_per_nc_L0
$02C8	$0871			MOVF	STACK_0+1, 0
$02C9	$00AD			MOVWF	Sound_Play_per_nc_L0+1
$02CA	$0872			MOVF	STACK_0+2, 0
$02CB	$00AE			MOVWF	Sound_Play_per_nc_L0+2
$02CC	$0873			MOVF	STACK_0+3, 0
$02CD	$00AF			MOVWF	Sound_Play_per_nc_L0+3
$02CE	$300A			MOVLW	10
$02CF	$00F4			MOVWF	STACK_4
$02D0	$3000			MOVLW	0
$02D1	$00F5			MOVWF	STACK_4+1
$02D2	$082A			MOVF	Sound_Play_nc_L0, 0
$02D3	$00F0			MOVWF	STACK_0
$02D4	$082B			MOVF	Sound_Play_nc_L0+1, 0
$02D5	$00F1			MOVWF	STACK_0+1
$02D6	$23DB			CALL	_div_16x16_u
$02D7	$0870			MOVF	STACK_0, 0
$02D8	$00AA			MOVWF	Sound_Play_nc_L0
$02D9	$0871			MOVF	STACK_0+1, 0
$02DA	$00AB			MOVWF	Sound_Play_nc_L0+1
$02DB	$3000			MOVLW	0
$02DC	$0271			SUBWF	STACK_0+1, 0
$02DD	$1D03			BTFSS	STATUS, Z
$02DE	$2AE1			GOTO	L_Sound_Play_9
$02DF	$3003			MOVLW	3
$02E0	$0270			SUBWF	STACK_0, 0
$02E1	$	L_Sound_Play_9:
$02E1	$1803			BTFSC	STATUS, C
$02E2	$2AE4			GOTO	L_Sound_Play_0
$02E3	$0008			RETURN
$02E4	$	L_Sound_Play_0:
$02E4	$0821			MOVF	Sound_soundPortAddr, 0
$02E5	$0084			MOVWF	FSR
$02E6	$	L_Sound_Play_1:
$02E6	$082C			MOVF	Sound_Play_per_nc_L0, 0
$02E7	$00F0			MOVWF	STACK_0
$02E8	$082D			MOVF	Sound_Play_per_nc_L0+1, 0
$02E9	$00F1			MOVWF	STACK_0+1
$02EA	$082E			MOVF	Sound_Play_per_nc_L0+2, 0
$02EB	$00F2			MOVWF	STACK_0+2
$02EC	$082F			MOVF	Sound_Play_per_nc_L0+3, 0
$02ED	$00F3			MOVWF	STACK_0+3
$02EE	$3001			MOVLW	1
$02EF	$02AC			SUBWF	Sound_Play_per_nc_L0, 1
$02F0	$1C03			BTFSS	STATUS, C
$02F1	$02AD			SUBWF	Sound_Play_per_nc_L0+1, 1
$02F2	$1C03			BTFSS	STATUS, C
$02F3	$02AE			SUBWF	Sound_Play_per_nc_L0+2, 1
$02F4	$1C03			BTFSS	STATUS, C
$02F5	$02AF			SUBWF	Sound_Play_per_nc_L0+3, 1
$02F6	$0870			MOVF	STACK_0, 0
$02F7	$0471			IORWF	STACK_0+1, 0
$02F8	$0472			IORWF	STACK_0+2, 0
$02F9	$0473			IORWF	STACK_0+3, 0
$02FA	$1903			BTFSC	STATUS, Z
$02FB	$2B07			GOTO	L_Sound_Play_2
$02FC	$0822			MOVF	Sound_pinMask1, 0
$02FD	$0480			IORWF	INDF, 1
$02FE	$082A			MOVF	Sound_Play_nc_L0, 0
$02FF	$00B4			MOVWF	FARG_Delay_Cyc+0
$0300	$2414			CALL	_Delay_Cyc
$0301	$0823			MOVF	Sound_pinMask0, 0
$0302	$0580			ANDWF	INDF, 1
$0303	$082A			MOVF	Sound_Play_nc_L0, 0
$0304	$00B4			MOVWF	FARG_Delay_Cyc+0
$0305	$2414			CALL	_Delay_Cyc
$0306	$2AE6			GOTO	L_Sound_Play_1
$0307	$	L_Sound_Play_2:
$0307	$0823			MOVF	Sound_pinMask0, 0
$0308	$0580			ANDWF	INDF, 1
$0309	$0008			RETURN
$0004	$	_main:
;servo_6_init.c,2 :: 		void main()
;servo_6_init.c,4 :: 		trisD=0X00;
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0188			CLRF	TRISD, 1
;servo_6_init.c,5 :: 		trisB=0X00;
$0007	$0186			CLRF	TRISB, 1
;servo_6_init.c,6 :: 		trisC=0X00;
$0008	$0187			CLRF	TRISC, 1
;servo_6_init.c,7 :: 		trisC.f0=0;
$0009	$1007			BCF	TRISC, 0
;servo_6_init.c,8 :: 		sound_init(&portc,0);
$000A	$3007			MOVLW	PORTC
$000B	$1283			BCF	STATUS, RP0
$000C	$00A6			MOVWF	FARG_Sound_Init+0
$000D	$01A7			CLRF	FARG_Sound_Init+1, 1
$000E	$23F8			CALL	_Sound_Init
;servo_6_init.c,9 :: 		sound_play(1000,1000);
$000F	$30E8			MOVLW	232
$0010	$00A6			MOVWF	FARG_Sound_Play+0
$0011	$3003			MOVLW	3
$0012	$00A7			MOVWF	FARG_Sound_Play+1
$0013	$30E8			MOVLW	232
$0014	$00A8			MOVWF	FARG_Sound_Play+2
$0015	$3003			MOVLW	3
$0016	$00A9			MOVWF	FARG_Sound_Play+3
$0017	$2264			CALL	_Sound_Play
;servo_6_init.c,11 :: 		for(i=0;i<75;i++)
$0018	$01A4			CLRF	_i
$0019	$01A5			CLRF	_i+1
$001A	$	L_main_0:
$001A	$3000			MOVLW	0
$001B	$0225			SUBWF	_i+1, 0
$001C	$1D03			BTFSS	STATUS, Z
$001D	$2820			GOTO	L_main_18
$001E	$304B			MOVLW	75
$001F	$0224			SUBWF	_i, 0
$0020	$	L_main_18:
$0020	$1803			BTFSC	STATUS, C
$0021	$2846			GOTO	L_main_1
;servo_6_init.c,13 :: 		PORTB.F7=1;        //SERVO_1
$0022	$1786			BSF	PORTB, 7
;servo_6_init.c,14 :: 		delay_us(1500);
$0023	$3002			MOVLW	2
$0024	$00FB			MOVWF	STACK_11
$0025	$30FF			MOVLW	255
$0026	$00FA			MOVWF	STACK_10
$0027	$0BFB			DECFSZ	STACK_11, F
$0028	$282A			GOTO	$+2
$0029	$282D			GOTO	$+4
$002A	$0BFA			DECFSZ	STACK_10, F
$002B	$282A			GOTO	$-1
$002C	$2827			GOTO	$-5
$002D	$30F0			MOVLW	240
$002E	$00FA			MOVWF	STACK_10
$002F	$0BFA			DECFSZ	STACK_10, F
$0030	$282F			GOTO	$-1
$0031	$0000			NOP
$0032	$0000			NOP
;servo_6_init.c,15 :: 		PORTB.F7=0;
$0033	$1386			BCF	PORTB, 7
;servo_6_init.c,16 :: 		delay_us(18500);
$0034	$3018			MOVLW	24
$0035	$00FB			MOVWF	STACK_11
$0036	$30FF			MOVLW	255
$0037	$00FA			MOVWF	STACK_10
$0038	$0BFB			DECFSZ	STACK_11, F
$0039	$283B			GOTO	$+2
$003A	$283E			GOTO	$+4
$003B	$0BFA			DECFSZ	STACK_10, F
$003C	$283B			GOTO	$-1
$003D	$2838			GOTO	$-5
$003E	$30F6			MOVLW	246
$003F	$00FA			MOVWF	STACK_10
$0040	$0BFA			DECFSZ	STACK_10, F
$0041	$2840			GOTO	$-1
;servo_6_init.c,17 :: 		}
$0042	$	L_main_2:
;servo_6_init.c,11 :: 		for(i=0;i<75;i++)
$0042	$0AA4			INCF	_i, 1
$0043	$1903			BTFSC	STATUS, Z
$0044	$0AA5			INCF	_i+1, 1
;servo_6_init.c,17 :: 		}
$0045	$281A			GOTO	L_main_0
$0046	$	L_main_1:
;servo_6_init.c,18 :: 		for(i=0;i<75;i++)
$0046	$01A4			CLRF	_i
$0047	$01A5			CLRF	_i+1
$0048	$	L_main_3:
$0048	$3000			MOVLW	0
$0049	$0225			SUBWF	_i+1, 0
$004A	$1D03			BTFSS	STATUS, Z
$004B	$284E			GOTO	L_main_19
$004C	$304B			MOVLW	75
$004D	$0224			SUBWF	_i, 0
$004E	$	L_main_19:
$004E	$1803			BTFSC	STATUS, C
$004F	$2874			GOTO	L_main_4
;servo_6_init.c,20 :: 		PORTB.F4=1;        //SERVO_2
$0050	$1606			BSF	PORTB, 4
;servo_6_init.c,21 :: 		delay_us(1500);
$0051	$3002			MOVLW	2
$0052	$00FB			MOVWF	STACK_11
$0053	$30FF			MOVLW	255
$0054	$00FA			MOVWF	STACK_10
$0055	$0BFB			DECFSZ	STACK_11, F
$0056	$2858			GOTO	$+2
$0057	$285B			GOTO	$+4
$0058	$0BFA			DECFSZ	STACK_10, F
$0059	$2858			GOTO	$-1
$005A	$2855			GOTO	$-5
$005B	$30F0			MOVLW	240
$005C	$00FA			MOVWF	STACK_10
$005D	$0BFA			DECFSZ	STACK_10, F
$005E	$285D			GOTO	$-1
$005F	$0000			NOP
$0060	$0000			NOP
;servo_6_init.c,22 :: 		PORTB.F4=0;
$0061	$1206			BCF	PORTB, 4
;servo_6_init.c,23 :: 		delay_us(18500);
$0062	$3018			MOVLW	24
$0063	$00FB			MOVWF	STACK_11
$0064	$30FF			MOVLW	255
$0065	$00FA			MOVWF	STACK_10
$0066	$0BFB			DECFSZ	STACK_11, F
$0067	$2869			GOTO	$+2
$0068	$286C			GOTO	$+4
$0069	$0BFA			DECFSZ	STACK_10, F
$006A	$2869			GOTO	$-1
$006B	$2866			GOTO	$-5
$006C	$30F6			MOVLW	246
$006D	$00FA			MOVWF	STACK_10
$006E	$0BFA			DECFSZ	STACK_10, F
$006F	$286E			GOTO	$-1
;servo_6_init.c,24 :: 		}
$0070	$	L_main_5:
;servo_6_init.c,18 :: 		for(i=0;i<75;i++)
$0070	$0AA4			INCF	_i, 1
$0071	$1903			BTFSC	STATUS, Z
$0072	$0AA5			INCF	_i+1, 1
;servo_6_init.c,24 :: 		}
$0073	$2848			GOTO	L_main_3
$0074	$	L_main_4:
;servo_6_init.c,25 :: 		for(i=0;i<75;i++)
$0074	$01A4			CLRF	_i
$0075	$01A5			CLRF	_i+1
$0076	$	L_main_6:
$0076	$3000			MOVLW	0
$0077	$0225			SUBWF	_i+1, 0
$0078	$1D03			BTFSS	STATUS, Z
$0079	$287C			GOTO	L_main_20
$007A	$304B			MOVLW	75
$007B	$0224			SUBWF	_i, 0
$007C	$	L_main_20:
$007C	$1803			BTFSC	STATUS, C
$007D	$28A2			GOTO	L_main_7
;servo_6_init.c,27 :: 		PORTB.F1=1;        //SERVO_3
$007E	$1486			BSF	PORTB, 1
;servo_6_init.c,28 :: 		delay_us(1500);
$007F	$3002			MOVLW	2
$0080	$00FB			MOVWF	STACK_11
$0081	$30FF			MOVLW	255
$0082	$00FA			MOVWF	STACK_10
$0083	$0BFB			DECFSZ	STACK_11, F
$0084	$2886			GOTO	$+2
$0085	$2889			GOTO	$+4
$0086	$0BFA			DECFSZ	STACK_10, F
$0087	$2886			GOTO	$-1
$0088	$2883			GOTO	$-5
$0089	$30F0			MOVLW	240
$008A	$00FA			MOVWF	STACK_10
$008B	$0BFA			DECFSZ	STACK_10, F
$008C	$288B			GOTO	$-1
$008D	$0000			NOP
$008E	$0000			NOP
;servo_6_init.c,29 :: 		PORTB.F1=0;
$008F	$1086			BCF	PORTB, 1
;servo_6_init.c,30 :: 		delay_us(18500);
$0090	$3018			MOVLW	24
$0091	$00FB			MOVWF	STACK_11
$0092	$30FF			MOVLW	255
$0093	$00FA			MOVWF	STACK_10
$0094	$0BFB			DECFSZ	STACK_11, F
$0095	$2897			GOTO	$+2
$0096	$289A			GOTO	$+4
$0097	$0BFA			DECFSZ	STACK_10, F
$0098	$2897			GOTO	$-1
$0099	$2894			GOTO	$-5
$009A	$30F6			MOVLW	246
$009B	$00FA			MOVWF	STACK_10
$009C	$0BFA			DECFSZ	STACK_10, F
$009D	$289C			GOTO	$-1
;servo_6_init.c,31 :: 		}
$009E	$	L_main_8:
;servo_6_init.c,25 :: 		for(i=0;i<75;i++)
$009E	$0AA4			INCF	_i, 1
$009F	$1903			BTFSC	STATUS, Z
$00A0	$0AA5			INCF	_i+1, 1
;servo_6_init.c,31 :: 		}
$00A1	$2876			GOTO	L_main_6
$00A2	$	L_main_7:
;servo_6_init.c,32 :: 		for(i=0;i<75;i++)
$00A2	$01A4			CLRF	_i
$00A3	$01A5			CLRF	_i+1
$00A4	$	L_main_9:
$00A4	$3000			MOVLW	0
$00A5	$0225			SUBWF	_i+1, 0
$00A6	$1D03			BTFSS	STATUS, Z
$00A7	$28AA			GOTO	L_main_21
$00A8	$304B			MOVLW	75
$00A9	$0224			SUBWF	_i, 0
$00AA	$	L_main_21:
$00AA	$1803			BTFSC	STATUS, C
$00AB	$28D0			GOTO	L_main_10
;servo_6_init.c,34 :: 		PORTD.F7=1;        //SERVO_4
$00AC	$1788			BSF	PORTD, 7
;servo_6_init.c,35 :: 		delay_us(1500);
$00AD	$3002			MOVLW	2
$00AE	$00FB			MOVWF	STACK_11
$00AF	$30FF			MOVLW	255
$00B0	$00FA			MOVWF	STACK_10
$00B1	$0BFB			DECFSZ	STACK_11, F
$00B2	$28B4			GOTO	$+2
$00B3	$28B7			GOTO	$+4
$00B4	$0BFA			DECFSZ	STACK_10, F
$00B5	$28B4			GOTO	$-1
$00B6	$28B1			GOTO	$-5
$00B7	$30F0			MOVLW	240
$00B8	$00FA			MOVWF	STACK_10
$00B9	$0BFA			DECFSZ	STACK_10, F
$00BA	$28B9			GOTO	$-1
$00BB	$0000			NOP
$00BC	$0000			NOP
;servo_6_init.c,36 :: 		PORTD.F7=0;
$00BD	$1388			BCF	PORTD, 7
;servo_6_init.c,37 :: 		delay_us(18500);
$00BE	$3018			MOVLW	24
$00BF	$00FB			MOVWF	STACK_11
$00C0	$30FF			MOVLW	255
$00C1	$00FA			MOVWF	STACK_10
$00C2	$0BFB			DECFSZ	STACK_11, F
$00C3	$28C5			GOTO	$+2
$00C4	$28C8			GOTO	$+4
$00C5	$0BFA			DECFSZ	STACK_10, F
$00C6	$28C5			GOTO	$-1
$00C7	$28C2			GOTO	$-5
$00C8	$30F6			MOVLW	246
$00C9	$00FA			MOVWF	STACK_10
$00CA	$0BFA			DECFSZ	STACK_10, F
$00CB	$28CA			GOTO	$-1
;servo_6_init.c,38 :: 		}
$00CC	$	L_main_11:
;servo_6_init.c,32 :: 		for(i=0;i<75;i++)
$00CC	$0AA4			INCF	_i, 1
$00CD	$1903			BTFSC	STATUS, Z
$00CE	$0AA5			INCF	_i+1, 1
;servo_6_init.c,38 :: 		}
$00CF	$28A4			GOTO	L_main_9
$00D0	$	L_main_10:
;servo_6_init.c,39 :: 		for(i=0;i<75;i++)
$00D0	$01A4			CLRF	_i
$00D1	$01A5			CLRF	_i+1
$00D2	$	L_main_12:
$00D2	$3000			MOVLW	0
$00D3	$0225			SUBWF	_i+1, 0
$00D4	$1D03			BTFSS	STATUS, Z
$00D5	$28D8			GOTO	L_main_22
$00D6	$304B			MOVLW	75
$00D7	$0224			SUBWF	_i, 0
$00D8	$	L_main_22:
$00D8	$1803			BTFSC	STATUS, C
$00D9	$28FE			GOTO	L_main_13
;servo_6_init.c,41 :: 		PORTD.F4=1;        //SERVO_5
$00DA	$1608			BSF	PORTD, 4
;servo_6_init.c,42 :: 		delay_us(1500);
$00DB	$3002			MOVLW	2
$00DC	$00FB			MOVWF	STACK_11
$00DD	$30FF			MOVLW	255
$00DE	$00FA			MOVWF	STACK_10
$00DF	$0BFB			DECFSZ	STACK_11, F
$00E0	$28E2			GOTO	$+2
$00E1	$28E5			GOTO	$+4
$00E2	$0BFA			DECFSZ	STACK_10, F
$00E3	$28E2			GOTO	$-1
$00E4	$28DF			GOTO	$-5
$00E5	$30F0			MOVLW	240
$00E6	$00FA			MOVWF	STACK_10
$00E7	$0BFA			DECFSZ	STACK_10, F
$00E8	$28E7			GOTO	$-1
$00E9	$0000			NOP
$00EA	$0000			NOP
;servo_6_init.c,43 :: 		PORTD.F4=0;
$00EB	$1208			BCF	PORTD, 4
;servo_6_init.c,44 :: 		delay_us(18500);
$00EC	$3018			MOVLW	24
$00ED	$00FB			MOVWF	STACK_11
$00EE	$30FF			MOVLW	255
$00EF	$00FA			MOVWF	STACK_10
$00F0	$0BFB			DECFSZ	STACK_11, F
$00F1	$28F3			GOTO	$+2
$00F2	$28F6			GOTO	$+4
$00F3	$0BFA			DECFSZ	STACK_10, F
$00F4	$28F3			GOTO	$-1
$00F5	$28F0			GOTO	$-5
$00F6	$30F6			MOVLW	246
$00F7	$00FA			MOVWF	STACK_10
$00F8	$0BFA			DECFSZ	STACK_10, F
$00F9	$28F8			GOTO	$-1
;servo_6_init.c,45 :: 		}
$00FA	$	L_main_14:
;servo_6_init.c,39 :: 		for(i=0;i<75;i++)
$00FA	$0AA4			INCF	_i, 1
$00FB	$1903			BTFSC	STATUS, Z
$00FC	$0AA5			INCF	_i+1, 1
;servo_6_init.c,45 :: 		}
$00FD	$28D2			GOTO	L_main_12
$00FE	$	L_main_13:
;servo_6_init.c,46 :: 		for(i=0;i<75;i++)
$00FE	$01A4			CLRF	_i
$00FF	$01A5			CLRF	_i+1
$0100	$	L_main_15:
$0100	$3000			MOVLW	0
$0101	$0225			SUBWF	_i+1, 0
$0102	$1D03			BTFSS	STATUS, Z
$0103	$2906			GOTO	L_main_23
$0104	$304B			MOVLW	75
$0105	$0224			SUBWF	_i, 0
$0106	$	L_main_23:
$0106	$1803			BTFSC	STATUS, C
$0107	$292C			GOTO	L_main_16
;servo_6_init.c,48 :: 		PORTD.F3=1;        //SERVO_6
$0108	$1588			BSF	PORTD, 3
;servo_6_init.c,49 :: 		delay_us(1500);
$0109	$3002			MOVLW	2
$010A	$00FB			MOVWF	STACK_11
$010B	$30FF			MOVLW	255
$010C	$00FA			MOVWF	STACK_10
$010D	$0BFB			DECFSZ	STACK_11, F
$010E	$2910			GOTO	$+2
$010F	$2913			GOTO	$+4
$0110	$0BFA			DECFSZ	STACK_10, F
$0111	$2910			GOTO	$-1
$0112	$290D			GOTO	$-5
$0113	$30F0			MOVLW	240
$0114	$00FA			MOVWF	STACK_10
$0115	$0BFA			DECFSZ	STACK_10, F
$0116	$2915			GOTO	$-1
$0117	$0000			NOP
$0118	$0000			NOP
;servo_6_init.c,50 :: 		PORTD.F3=0;
$0119	$1188			BCF	PORTD, 3
;servo_6_init.c,51 :: 		delay_us(18500);
$011A	$3018			MOVLW	24
$011B	$00FB			MOVWF	STACK_11
$011C	$30FF			MOVLW	255
$011D	$00FA			MOVWF	STACK_10
$011E	$0BFB			DECFSZ	STACK_11, F
$011F	$2921			GOTO	$+2
$0120	$2924			GOTO	$+4
$0121	$0BFA			DECFSZ	STACK_10, F
$0122	$2921			GOTO	$-1
$0123	$291E			GOTO	$-5
$0124	$30F6			MOVLW	246
$0125	$00FA			MOVWF	STACK_10
$0126	$0BFA			DECFSZ	STACK_10, F
$0127	$2926			GOTO	$-1
;servo_6_init.c,52 :: 		}
$0128	$	L_main_17:
;servo_6_init.c,46 :: 		for(i=0;i<75;i++)
$0128	$0AA4			INCF	_i, 1
$0129	$1903			BTFSC	STATUS, Z
$012A	$0AA5			INCF	_i+1, 1
;servo_6_init.c,52 :: 		}
$012B	$2900			GOTO	L_main_15
$012C	$	L_main_16:
;servo_6_init.c,53 :: 		sound_play(1000,1000);
$012C	$30E8			MOVLW	232
$012D	$00A6			MOVWF	FARG_Sound_Play+0
$012E	$3003			MOVLW	3
$012F	$00A7			MOVWF	FARG_Sound_Play+1
$0130	$30E8			MOVLW	232
$0131	$00A8			MOVWF	FARG_Sound_Play+2
$0132	$3003			MOVLW	3
$0133	$00A9			MOVWF	FARG_Sound_Play+3
$0134	$2264			CALL	_Sound_Play
;servo_6_init.c,55 :: 		}
$0135	$2935			GOTO	$