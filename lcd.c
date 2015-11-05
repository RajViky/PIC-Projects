char *text = "mikroElektronika";

void main() {
  TRISB = 0;                // PORTB is output
  Lcd_Init(&PORTB);         // Initialize LCD connected to PORTB
  Lcd_Cmd(Lcd_CLEAR);       // Clear display
  Lcd_Cmd(Lcd_CURSOR_OFF);  // Turn cursor off
  Lcd_Out(1, 1, text);      // Print text to LCD, 2nd row, 1st column
}//~!