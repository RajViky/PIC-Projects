 //char filename[] = "TEMPERTRTXT";
unsigned short character;
unsigned long file_size,i,rec_size;
unsigned char ch1,ch2,flag,ret_status,choice;
unsigned char temperature[10],txt[12];
char *text = "**RAJESH R**";
/* void Newline()
{
Usart_Write(0x0D); // Send carriage-return
Usart_Write(0x0A); // Send line-feed
}
void Space()
{Usart_Write(0x20);
}
void Text_To_Usart(unsigned char .m)
{
unsigned char i;
i = 0;
while(m[i] != 0)
{ // Send TEXT to serial port
Usart_Write(m[i]);
i++;
}
} */
void Get_Temperature()
{
unsigned long Vin, Vdec,Vfrac;
unsigned char op[12];
unsigned char i,j;
Vin = Adc_Read(0); // Read from channel 0 (AN0)
Vin = 488*Vin; // Scale up the result
Vin = Vin /10; // Convert to temperature in C
Vdec = Vin / 100; // Decimal part
Vfrac = Vin % 100; // Fractional part
LongToStr(Vdec,op); // Convert Vdec to string in "op"
//
// Remove leading blanks
//
j=0;
for(i=0;i<=11;i++)
{
if(op[i] != ' ') // If a blank
{
temperature[j]=op[i];
j++;
}
}
temperature[j] = '.'; // Add “.”
ch1 = Vfrac / 10; // fractional part
ch2 = Vfrac % 10;


void main() {
rec_size = 0;
//
// Configure A/D converter
//
TRISA = 0xFF;
ADCON1 = 0xF0; // Use AN0, Vref = +5V
//
// Configure the serial port
//
//Usart_Init(2400);
 unsigned int i;
  TRISB = 0;                // PORTB is output
  Lcd_Init(&PORTB);         // Initialize LCD connected to PORTB
  Lcd_Cmd(Lcd_CLEAR);       // Clear display
  Lcd_Cmd(Lcd_CURSOR_OFF);  // Turn cursor off
 Lcd_Out(1, 1, text);      // Print text to LCD, 2nd row, 1st column
  while(1)
  {
  for(i=0;i<16;i++)
  {Delay_ms(100);
  Lcd_Cmd(Lcd_SHIFT_RIGHT) ;
  }
  Lcd_Cmd(Lcd_RETURN_HOME);
}
// Display the MENU and get user choice
//
//Newline();
//Text_To_Usart("TEMPERATURE DATA LOGGER");
//Newline();
//Newline();
//Text_To_Usart("1. Send temperature data to the PC");
//Lcd_out(2,1,

