#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/lcd_keypad.c"
unsigned short kp, cnt;
char txt[5];

void main() {
 cnt = 0;
 Keypad_Init(&PORTD);
 Lcd_Init(&PORTB);
 Lcd_Cmd(LCD_CLEAR);
 Lcd_Cmd(LCD_CURSOR_OFF);

 Lcd_Out(1, 1, "Key  :");
 Lcd_Out(2, 1, "Times:");

 do {
 kp = 0;


 do

 kp = Keypad_Released();

 while (!kp);

 cnt++;


 if (kp > 10)
 kp += 54;
 else
 kp += 47;


 Lcd_Chr(1, 10, kp);
 WordToStr(cnt, txt);
 Lcd_Out(2, 10, txt);

 } while (1);
}
