#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/lcd82.c"

unsigned short character;
unsigned long file_size,i,rec_size;
unsigned char ch1,ch2,flag,ret_status,choice;
unsigned char temperature[10],txt[12];
char *text = "**RAJESH R**";
#line 25 "C:/Documents and Settings/raj/My Documents/pic_codes/lcd82.c"
void Get_Temperature()
{
unsigned long Vin, Vdec,Vfrac;
unsigned char op[12];
unsigned char i,j;
Vin = Adc_Read(0);
Vin = 488*Vin;
Vin = Vin /10;
Vdec = Vin / 100;
Vfrac = Vin % 100;
LongToStr(Vdec,op);



j=0;
for(i=0;i<=11;i++)
{
if(op[i] != ' ')
{
temperature[j]=op[i];
j++;
}
}
temperature[j] = '.';
ch1 = Vfrac / 10;
ch2 = Vfrac % 10;


void main() {
rec_size = 0;



TRISA = 0xFF;
ADCON1 = 0xF0;




 unsigned int i;
 TRISB = 0;
 Lcd_Init(&PORTB);
 Lcd_Cmd(Lcd_CLEAR);
 Lcd_Cmd(Lcd_CURSOR_OFF);
 Lcd_Out(1, 1, text);
 while(1)
 {
 for(i=0;i<16;i++)
 {Delay_ms(100);
 Lcd_Cmd(Lcd_SHIFT_RIGHT) ;
 }
 Lcd_Cmd(Lcd_RETURN_HOME);
}
