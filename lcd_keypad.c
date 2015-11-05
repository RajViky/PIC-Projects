unsigned short kp, cnt;
char txt[5];

void main() {
  cnt = 0;
  Keypad_Init(&PORTD);
  Lcd_Init(&PORTB);         // Initialize LCD on PORTC
  Lcd_Cmd(LCD_CLEAR);       // Clear display
  Lcd_Cmd(LCD_CURSOR_OFF);  // Cursor off

  Lcd_Out(1, 1, "Key  :");
  Lcd_Out(2, 1, "Times:");

  do {
    kp = 0;

    //--- Wait for key to be pressed
    do
      //--- un-comment one of the keypad reading functions
      kp = Keypad_Released();
      //kp = Keypad_Read();
    while (!kp);

    cnt++;

    //--- prepare value for output
    if (kp > 10)
      kp += 54;
    else
      kp += 47;

    //--- print it on LCD
    Lcd_Chr(1, 10, kp);
    WordToStr(cnt, txt);
    Lcd_Out(2, 10, txt);

  } while (1);
}//~!