
_start:
;SNAKE_BOT.c,2 :: 		void start()
;SNAKE_BOT.c,4 :: 		sound_play(1000,1000);
	MOVLW      232
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;SNAKE_BOT.c,5 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start0:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start212
	MOVLW      10
	SUBWF      _i+0, 0
L__start212:
	BTFSC      STATUS+0, 0
	GOTO       L_start1
;SNAKE_BOT.c,7 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,8 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start3:
	DECFSZ     R13+0, 1
	GOTO       L_start3
	DECFSZ     R12+0, 1
	GOTO       L_start3
	NOP
	NOP
;SNAKE_BOT.c,9 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,10 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start4:
	DECFSZ     R13+0, 1
	GOTO       L_start4
	DECFSZ     R12+0, 1
	GOTO       L_start4
;SNAKE_BOT.c,5 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,11 :: 		}
	GOTO       L_start0
L_start1:
;SNAKE_BOT.c,12 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start5:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start213
	MOVLW      10
	SUBWF      _i+0, 0
L__start213:
	BTFSC      STATUS+0, 0
	GOTO       L_start6
;SNAKE_BOT.c,13 :: 		{ PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,14 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start8:
	DECFSZ     R13+0, 1
	GOTO       L_start8
	DECFSZ     R12+0, 1
	GOTO       L_start8
	NOP
	NOP
;SNAKE_BOT.c,15 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,16 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start9:
	DECFSZ     R13+0, 1
	GOTO       L_start9
	DECFSZ     R12+0, 1
	GOTO       L_start9
;SNAKE_BOT.c,12 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,17 :: 		}
	GOTO       L_start5
L_start6:
;SNAKE_BOT.c,18 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start10:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start214
	MOVLW      10
	SUBWF      _i+0, 0
L__start214:
	BTFSC      STATUS+0, 0
	GOTO       L_start11
;SNAKE_BOT.c,19 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,20 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start13:
	DECFSZ     R13+0, 1
	GOTO       L_start13
	DECFSZ     R12+0, 1
	GOTO       L_start13
	NOP
	NOP
;SNAKE_BOT.c,21 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,22 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start14:
	DECFSZ     R13+0, 1
	GOTO       L_start14
	DECFSZ     R12+0, 1
	GOTO       L_start14
;SNAKE_BOT.c,18 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,23 :: 		}
	GOTO       L_start10
L_start11:
;SNAKE_BOT.c,24 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start15:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start215
	MOVLW      10
	SUBWF      _i+0, 0
L__start215:
	BTFSC      STATUS+0, 0
	GOTO       L_start16
;SNAKE_BOT.c,25 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,26 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start18:
	DECFSZ     R13+0, 1
	GOTO       L_start18
	DECFSZ     R12+0, 1
	GOTO       L_start18
	NOP
	NOP
;SNAKE_BOT.c,27 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,28 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start19:
	DECFSZ     R13+0, 1
	GOTO       L_start19
	DECFSZ     R12+0, 1
	GOTO       L_start19
;SNAKE_BOT.c,24 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,29 :: 		}
	GOTO       L_start15
L_start16:
;SNAKE_BOT.c,30 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start20:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start216
	MOVLW      10
	SUBWF      _i+0, 0
L__start216:
	BTFSC      STATUS+0, 0
	GOTO       L_start21
;SNAKE_BOT.c,31 :: 		{ PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,32 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start23:
	DECFSZ     R13+0, 1
	GOTO       L_start23
	DECFSZ     R12+0, 1
	GOTO       L_start23
	NOP
	NOP
;SNAKE_BOT.c,33 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,34 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start24:
	DECFSZ     R13+0, 1
	GOTO       L_start24
	DECFSZ     R12+0, 1
	GOTO       L_start24
;SNAKE_BOT.c,30 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,35 :: 		}
	GOTO       L_start20
L_start21:
;SNAKE_BOT.c,36 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_start25:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__start217
	MOVLW      10
	SUBWF      _i+0, 0
L__start217:
	BTFSC      STATUS+0, 0
	GOTO       L_start26
;SNAKE_BOT.c,37 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,38 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_start28:
	DECFSZ     R13+0, 1
	GOTO       L_start28
	DECFSZ     R12+0, 1
	GOTO       L_start28
	NOP
	NOP
;SNAKE_BOT.c,39 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,40 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_start29:
	DECFSZ     R13+0, 1
	GOTO       L_start29
	DECFSZ     R12+0, 1
	GOTO       L_start29
;SNAKE_BOT.c,36 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,41 :: 		}
	GOTO       L_start25
L_start26:
;SNAKE_BOT.c,42 :: 		}
	RETURN
; end of _start

_servo_fwd_seq_1:
;SNAKE_BOT.c,43 :: 		void servo_fwd_seq_1()
;SNAKE_BOT.c,45 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_130:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1218
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1218:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_131
;SNAKE_BOT.c,47 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,48 :: 		delay_us(1570);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_servo_fwd_seq_133:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_133
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_133
	NOP
;SNAKE_BOT.c,49 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,50 :: 		delay_us(18430);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_servo_fwd_seq_134:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_134
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_134
	NOP
;SNAKE_BOT.c,45 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,51 :: 		}
	GOTO       L_servo_fwd_seq_130
L_servo_fwd_seq_131:
;SNAKE_BOT.c,52 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_135:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1219
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1219:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_136
;SNAKE_BOT.c,53 :: 		{ PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,54 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_fwd_seq_138:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_138
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_138
;SNAKE_BOT.c,55 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,56 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_fwd_seq_139:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_139
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_139
	NOP
	NOP
;SNAKE_BOT.c,52 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,57 :: 		}
	GOTO       L_servo_fwd_seq_135
L_servo_fwd_seq_136:
;SNAKE_BOT.c,58 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_140:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1220
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1220:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_141
;SNAKE_BOT.c,59 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,60 :: 		delay_us(1430);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      218
	MOVWF      R13+0
L_servo_fwd_seq_143:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_143
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_143
	NOP
;SNAKE_BOT.c,61 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,62 :: 		delay_us(18570);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      28
	MOVWF      R13+0
L_servo_fwd_seq_144:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_144
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_144
	NOP
;SNAKE_BOT.c,58 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,63 :: 		}
	GOTO       L_servo_fwd_seq_140
L_servo_fwd_seq_141:
;SNAKE_BOT.c,64 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_145:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1221
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1221:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_146
;SNAKE_BOT.c,65 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,66 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_fwd_seq_148:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_148
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_148
;SNAKE_BOT.c,67 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,68 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_fwd_seq_149:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_149
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_149
	NOP
	NOP
;SNAKE_BOT.c,64 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,69 :: 		}
	GOTO       L_servo_fwd_seq_145
L_servo_fwd_seq_146:
;SNAKE_BOT.c,70 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_150:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1222
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1222:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_151
;SNAKE_BOT.c,71 :: 		{ PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,72 :: 		delay_us(1570);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_servo_fwd_seq_153:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_153
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_153
	NOP
;SNAKE_BOT.c,73 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,74 :: 		delay_us(18430);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_servo_fwd_seq_154:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_154
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_154
	NOP
;SNAKE_BOT.c,70 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,75 :: 		}for(i=0;i<10;i++)
	GOTO       L_servo_fwd_seq_150
L_servo_fwd_seq_151:
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_155:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_1223
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_1223:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_156
;SNAKE_BOT.c,76 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,77 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_fwd_seq_158:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_158
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_158
;SNAKE_BOT.c,78 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,79 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_fwd_seq_159:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_159
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_159
	NOP
	NOP
;SNAKE_BOT.c,75 :: 		}for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,80 :: 		}
	GOTO       L_servo_fwd_seq_155
L_servo_fwd_seq_156:
;SNAKE_BOT.c,81 :: 		}
	RETURN
; end of _servo_fwd_seq_1

_servo_fwd_seq_2:
;SNAKE_BOT.c,83 :: 		void servo_fwd_seq_2()
;SNAKE_BOT.c,85 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_260:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2224
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2224:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_261
;SNAKE_BOT.c,87 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,88 :: 		delay_us(1430);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      218
	MOVWF      R13+0
L_servo_fwd_seq_263:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_263
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_263
	NOP
;SNAKE_BOT.c,89 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,90 :: 		delay_us(18570);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      28
	MOVWF      R13+0
L_servo_fwd_seq_264:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_264
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_264
	NOP
;SNAKE_BOT.c,85 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,91 :: 		}
	GOTO       L_servo_fwd_seq_260
L_servo_fwd_seq_261:
;SNAKE_BOT.c,92 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_265:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2225
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2225:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_266
;SNAKE_BOT.c,94 :: 		PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,95 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_fwd_seq_268:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_268
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_268
;SNAKE_BOT.c,96 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,97 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_fwd_seq_269:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_269
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_269
	NOP
	NOP
;SNAKE_BOT.c,92 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,98 :: 		}
	GOTO       L_servo_fwd_seq_265
L_servo_fwd_seq_266:
;SNAKE_BOT.c,99 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_270:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2226
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2226:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_271
;SNAKE_BOT.c,101 :: 		PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,102 :: 		delay_us(1570);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      8
	MOVWF      R13+0
L_servo_fwd_seq_273:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_273
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_273
	NOP
;SNAKE_BOT.c,103 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,104 :: 		delay_us(18430);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_servo_fwd_seq_274:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_274
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_274
	NOP
;SNAKE_BOT.c,99 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,105 :: 		}
	GOTO       L_servo_fwd_seq_270
L_servo_fwd_seq_271:
;SNAKE_BOT.c,106 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_275:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2227
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2227:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_276
;SNAKE_BOT.c,107 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,108 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_fwd_seq_278:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_278
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_278
;SNAKE_BOT.c,109 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,110 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_fwd_seq_279:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_279
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_279
	NOP
	NOP
;SNAKE_BOT.c,106 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,111 :: 		}
	GOTO       L_servo_fwd_seq_275
L_servo_fwd_seq_276:
;SNAKE_BOT.c,112 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_280:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2228
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2228:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_281
;SNAKE_BOT.c,113 :: 		{ PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,114 :: 		delay_us(1430);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      218
	MOVWF      R13+0
L_servo_fwd_seq_283:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_283
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_283
	NOP
;SNAKE_BOT.c,115 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,116 :: 		delay_us(18570);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      28
	MOVWF      R13+0
L_servo_fwd_seq_284:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_284
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_284
	NOP
;SNAKE_BOT.c,112 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,117 :: 		}
	GOTO       L_servo_fwd_seq_280
L_servo_fwd_seq_281:
;SNAKE_BOT.c,118 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_fwd_seq_285:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_fwd_seq_2229
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_fwd_seq_2229:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_fwd_seq_286
;SNAKE_BOT.c,119 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,120 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_fwd_seq_288:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_288
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_288
;SNAKE_BOT.c,121 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,122 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_fwd_seq_289:
	DECFSZ     R13+0, 1
	GOTO       L_servo_fwd_seq_289
	DECFSZ     R12+0, 1
	GOTO       L_servo_fwd_seq_289
	NOP
	NOP
;SNAKE_BOT.c,118 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,123 :: 		}
	GOTO       L_servo_fwd_seq_285
L_servo_fwd_seq_286:
;SNAKE_BOT.c,124 :: 		}
	RETURN
; end of _servo_fwd_seq_2

_servo_left_seq_1:
;SNAKE_BOT.c,125 :: 		void servo_left_seq_1()
;SNAKE_BOT.c,127 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_190:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1230
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1230:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_191
;SNAKE_BOT.c,129 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,130 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_left_seq_193:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_193
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_193
	NOP
	NOP
;SNAKE_BOT.c,131 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,132 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_left_seq_194:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_194
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_194
;SNAKE_BOT.c,127 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,133 :: 		}for(i=0;i<10;i++)
	GOTO       L_servo_left_seq_190
L_servo_left_seq_191:
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_195:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1231
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1231:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_196
;SNAKE_BOT.c,135 :: 		PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,136 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_left_seq_198:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_198
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_198
;SNAKE_BOT.c,137 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,138 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_left_seq_199:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_199
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_199
	NOP
	NOP
;SNAKE_BOT.c,133 :: 		}for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,139 :: 		} for(i=0;i<10;i++)
	GOTO       L_servo_left_seq_195
L_servo_left_seq_196:
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_1100:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1232
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1232:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_1101
;SNAKE_BOT.c,140 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,141 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_left_seq_1103:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1103
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1103
	NOP
	NOP
;SNAKE_BOT.c,142 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,143 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_left_seq_1104:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1104
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1104
;SNAKE_BOT.c,139 :: 		} for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,144 :: 		}
	GOTO       L_servo_left_seq_1100
L_servo_left_seq_1101:
;SNAKE_BOT.c,145 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_1105:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1233
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1233:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_1106
;SNAKE_BOT.c,146 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,147 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_1108:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1108
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1108
;SNAKE_BOT.c,148 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,149 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_1109:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1109
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1109
	NOP
	NOP
;SNAKE_BOT.c,145 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,150 :: 		}
	GOTO       L_servo_left_seq_1105
L_servo_left_seq_1106:
;SNAKE_BOT.c,151 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_1110:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1234
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1234:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_1111
;SNAKE_BOT.c,152 :: 		{  PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,153 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_left_seq_1113:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1113
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1113
	NOP
	NOP
;SNAKE_BOT.c,154 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,155 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_left_seq_1114:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1114
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1114
;SNAKE_BOT.c,151 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,156 :: 		}
	GOTO       L_servo_left_seq_1110
L_servo_left_seq_1111:
;SNAKE_BOT.c,157 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_1115:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_1235
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_1235:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_1116
;SNAKE_BOT.c,158 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,159 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_left_seq_1118:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1118
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1118
;SNAKE_BOT.c,160 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,161 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_left_seq_1119:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_1119
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_1119
	NOP
	NOP
;SNAKE_BOT.c,157 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,162 :: 		}
	GOTO       L_servo_left_seq_1115
L_servo_left_seq_1116:
;SNAKE_BOT.c,164 :: 		}
	RETURN
; end of _servo_left_seq_1

_servo_left_seq_2:
;SNAKE_BOT.c,165 :: 		void servo_left_seq_2()
;SNAKE_BOT.c,167 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2120:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2236
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2236:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2121
;SNAKE_BOT.c,169 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,170 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_2123:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2123
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2123
;SNAKE_BOT.c,171 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,167 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,172 :: 		} delay_us(19000);
	GOTO       L_servo_left_seq_2120
L_servo_left_seq_2121:
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_2124:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2124
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2124
	NOP
	NOP
;SNAKE_BOT.c,173 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2125:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2237
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2237:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2126
;SNAKE_BOT.c,175 :: 		PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,176 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_2128:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2128
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2128
;SNAKE_BOT.c,177 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,178 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_2129:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2129
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2129
	NOP
	NOP
;SNAKE_BOT.c,173 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,179 :: 		}
	GOTO       L_servo_left_seq_2125
L_servo_left_seq_2126:
;SNAKE_BOT.c,180 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2130:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2238
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2238:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2131
;SNAKE_BOT.c,181 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,182 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_2133:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2133
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2133
;SNAKE_BOT.c,183 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,184 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_2134:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2134
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2134
	NOP
	NOP
;SNAKE_BOT.c,180 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,185 :: 		}
	GOTO       L_servo_left_seq_2130
L_servo_left_seq_2131:
;SNAKE_BOT.c,186 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2135:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2239
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2239:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2136
;SNAKE_BOT.c,187 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,188 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_left_seq_2138:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2138
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2138
;SNAKE_BOT.c,189 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,190 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_left_seq_2139:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2139
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2139
	NOP
	NOP
;SNAKE_BOT.c,186 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,191 :: 		}
	GOTO       L_servo_left_seq_2135
L_servo_left_seq_2136:
;SNAKE_BOT.c,192 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2140:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2240
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2240:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2141
;SNAKE_BOT.c,193 :: 		{  PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,194 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_2143:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2143
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2143
;SNAKE_BOT.c,195 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,196 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_2144:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2144
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2144
	NOP
	NOP
;SNAKE_BOT.c,192 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,197 :: 		}
	GOTO       L_servo_left_seq_2140
L_servo_left_seq_2141:
;SNAKE_BOT.c,198 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_left_seq_2145:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_left_seq_2241
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_left_seq_2241:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_left_seq_2146
;SNAKE_BOT.c,199 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,200 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_left_seq_2148:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2148
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2148
;SNAKE_BOT.c,201 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,202 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_left_seq_2149:
	DECFSZ     R13+0, 1
	GOTO       L_servo_left_seq_2149
	DECFSZ     R12+0, 1
	GOTO       L_servo_left_seq_2149
	NOP
	NOP
;SNAKE_BOT.c,198 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,203 :: 		}
	GOTO       L_servo_left_seq_2145
L_servo_left_seq_2146:
;SNAKE_BOT.c,204 :: 		}
	RETURN
; end of _servo_left_seq_2

_servo_right_seq_1:
;SNAKE_BOT.c,205 :: 		void servo_right_seq_1()
;SNAKE_BOT.c,207 :: 		{  for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1150:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1242
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1242:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1151
;SNAKE_BOT.c,209 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,210 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_right_seq_1153:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1153
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1153
	NOP
	NOP
;SNAKE_BOT.c,211 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,212 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_right_seq_1154:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1154
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1154
;SNAKE_BOT.c,207 :: 		{  for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,213 :: 		}for(i=0;i<10;i++)
	GOTO       L_servo_right_seq_1150
L_servo_right_seq_1151:
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1155:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1243
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1243:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1156
;SNAKE_BOT.c,215 :: 		PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,216 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_right_seq_1158:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1158
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1158
;SNAKE_BOT.c,217 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,218 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_right_seq_1159:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1159
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1159
	NOP
	NOP
;SNAKE_BOT.c,213 :: 		}for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,219 :: 		}
	GOTO       L_servo_right_seq_1155
L_servo_right_seq_1156:
;SNAKE_BOT.c,220 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1160:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1244
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1244:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1161
;SNAKE_BOT.c,221 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,222 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_right_seq_1163:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1163
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1163
	NOP
	NOP
;SNAKE_BOT.c,223 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,224 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_right_seq_1164:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1164
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1164
;SNAKE_BOT.c,220 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,225 :: 		}
	GOTO       L_servo_right_seq_1160
L_servo_right_seq_1161:
;SNAKE_BOT.c,226 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1165:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1245
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1245:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1166
;SNAKE_BOT.c,227 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,228 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_right_seq_1168:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1168
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1168
;SNAKE_BOT.c,229 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,230 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_right_seq_1169:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1169
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1169
	NOP
	NOP
;SNAKE_BOT.c,226 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,231 :: 		}
	GOTO       L_servo_right_seq_1165
L_servo_right_seq_1166:
;SNAKE_BOT.c,232 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1170:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1246
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1246:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1171
;SNAKE_BOT.c,233 :: 		{ PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,234 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_servo_right_seq_1173:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1173
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1173
	NOP
	NOP
;SNAKE_BOT.c,235 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,236 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_servo_right_seq_1174:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1174
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1174
;SNAKE_BOT.c,232 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,237 :: 		}
	GOTO       L_servo_right_seq_1170
L_servo_right_seq_1171:
;SNAKE_BOT.c,238 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_1175:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_1247
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_1247:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_1176
;SNAKE_BOT.c,239 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,240 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_right_seq_1178:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1178
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1178
;SNAKE_BOT.c,241 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,242 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_right_seq_1179:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_1179
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_1179
	NOP
	NOP
;SNAKE_BOT.c,238 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,243 :: 		}
	GOTO       L_servo_right_seq_1175
L_servo_right_seq_1176:
;SNAKE_BOT.c,244 :: 		}
	RETURN
; end of _servo_right_seq_1

_servo_right_seq_2:
;SNAKE_BOT.c,245 :: 		void servo_right_seq_2()
;SNAKE_BOT.c,247 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2180:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2248
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2248:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2181
;SNAKE_BOT.c,249 :: 		PORTB.F7=1;        //SERVO_1
	BSF        PORTB+0, 7
;SNAKE_BOT.c,250 :: 		delay_us(1900);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      118
	MOVWF      R13+0
L_servo_right_seq_2183:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2183
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2183
	NOP
;SNAKE_BOT.c,251 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;SNAKE_BOT.c,252 :: 		delay_us(18100);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      128
	MOVWF      R13+0
L_servo_right_seq_2184:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2184
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2184
	NOP
;SNAKE_BOT.c,247 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,253 :: 		}
	GOTO       L_servo_right_seq_2180
L_servo_right_seq_2181:
;SNAKE_BOT.c,254 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2185:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2249
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2249:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2186
;SNAKE_BOT.c,255 :: 		{ PORTB.F4=1;        //SERVO_2
	BSF        PORTB+0, 4
;SNAKE_BOT.c,256 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_right_seq_2188:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2188
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2188
;SNAKE_BOT.c,257 :: 		PORTB.F4=0;
	BCF        PORTB+0, 4
;SNAKE_BOT.c,258 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_right_seq_2189:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2189
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2189
	NOP
	NOP
;SNAKE_BOT.c,254 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,259 :: 		}
	GOTO       L_servo_right_seq_2185
L_servo_right_seq_2186:
;SNAKE_BOT.c,260 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2190:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2250
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2250:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2191
;SNAKE_BOT.c,261 :: 		{ PORTB.F1=1;        //SERVO_3
	BSF        PORTB+0, 1
;SNAKE_BOT.c,262 :: 		delay_us(1900);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      118
	MOVWF      R13+0
L_servo_right_seq_2193:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2193
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2193
	NOP
;SNAKE_BOT.c,263 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;SNAKE_BOT.c,264 :: 		delay_us(18100);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      128
	MOVWF      R13+0
L_servo_right_seq_2194:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2194
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2194
	NOP
;SNAKE_BOT.c,260 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,265 :: 		}
	GOTO       L_servo_right_seq_2190
L_servo_right_seq_2191:
;SNAKE_BOT.c,266 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2195:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2251
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2251:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2196
;SNAKE_BOT.c,267 :: 		{ PORTD.F7=1;        //SERVO_4
	BSF        PORTD+0, 7
;SNAKE_BOT.c,268 :: 		delay_us(2100);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      185
	MOVWF      R13+0
L_servo_right_seq_2198:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2198
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2198
;SNAKE_BOT.c,269 :: 		PORTD.F7=0;
	BCF        PORTD+0, 7
;SNAKE_BOT.c,270 :: 		delay_us(17900);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      61
	MOVWF      R13+0
L_servo_right_seq_2199:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2199
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2199
	NOP
	NOP
;SNAKE_BOT.c,266 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,271 :: 		}
	GOTO       L_servo_right_seq_2195
L_servo_right_seq_2196:
;SNAKE_BOT.c,272 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2200:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2252
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2252:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2201
;SNAKE_BOT.c,273 :: 		{ PORTD.F4=1;        //SERVO_5
	BSF        PORTD+0, 4
;SNAKE_BOT.c,274 :: 		delay_us(1900);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      118
	MOVWF      R13+0
L_servo_right_seq_2203:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2203
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2203
	NOP
;SNAKE_BOT.c,275 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;SNAKE_BOT.c,276 :: 		delay_us(18100);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      128
	MOVWF      R13+0
L_servo_right_seq_2204:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2204
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2204
	NOP
;SNAKE_BOT.c,272 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,277 :: 		}
	GOTO       L_servo_right_seq_2200
L_servo_right_seq_2201:
;SNAKE_BOT.c,278 :: 		for(i=0;i<10;i++)
	CLRF       _i+0
	CLRF       _i+1
L_servo_right_seq_2205:
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servo_right_seq_2253
	MOVLW      10
	SUBWF      _i+0, 0
L__servo_right_seq_2253:
	BTFSC      STATUS+0, 0
	GOTO       L_servo_right_seq_2206
;SNAKE_BOT.c,279 :: 		{ PORTD.F3=1;        //SERVO_6
	BSF        PORTD+0, 3
;SNAKE_BOT.c,280 :: 		delay_us(1000);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_servo_right_seq_2208:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2208
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2208
;SNAKE_BOT.c,281 :: 		PORTD.F3=0;
	BCF        PORTD+0, 3
;SNAKE_BOT.c,282 :: 		delay_us(19000);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_servo_right_seq_2209:
	DECFSZ     R13+0, 1
	GOTO       L_servo_right_seq_2209
	DECFSZ     R12+0, 1
	GOTO       L_servo_right_seq_2209
	NOP
	NOP
;SNAKE_BOT.c,278 :: 		for(i=0;i<10;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;SNAKE_BOT.c,283 :: 		}
	GOTO       L_servo_right_seq_2205
L_servo_right_seq_2206:
;SNAKE_BOT.c,284 :: 		}
	RETURN
; end of _servo_right_seq_2

_main:
;SNAKE_BOT.c,286 :: 		void main()
;SNAKE_BOT.c,288 :: 		TRISD=0X00;
	CLRF       TRISD+0
;SNAKE_BOT.c,289 :: 		TRISB=0X00;
	CLRF       TRISB+0
;SNAKE_BOT.c,290 :: 		TRISC.B0=0;
	BCF        TRISC+0, 0
;SNAKE_BOT.c,291 :: 		sound_init(&PORTC,0);
	MOVLW      PORTC+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;SNAKE_BOT.c,292 :: 		start();
	CALL       _start+0
;SNAKE_BOT.c,293 :: 		while(1);
L_main210:
	GOTO       L_main210
;SNAKE_BOT.c,307 :: 		}
	GOTO       $+0
; end of _main
