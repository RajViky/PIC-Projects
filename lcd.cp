#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/LCD.c"
char *text = "mikroElektronika";

void main() {
 TRISB = 0;
 Lcd_Init(&PORTB);
 Lcd_Cmd(Lcd_CLEAR);
 Lcd_Cmd(Lcd_CURSOR_OFF);
 Lcd_Out(1, 1, text);
}
