#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/TEMP.c"
 unsigned char*text="TEMPERATURE";
 unsigned char temp[20];
 unsigned char temperature[20];
 unsigned int i,j;
 long Vin,vfrac;
 unsigned char ch1,ch2;
 void main()
 {
 TRISA = 0xFF;
 ADCON1 = 0x80 ;
 TRISB = 0;
 Lcd_Init(&PORTB);
 Lcd_Cmd(Lcd_CLEAR);

 Lcd_Out(1, 1,text);
#line 21 "C:/Documents and Settings/raj/My Documents/pic_codes/TEMP.c"
 for(;;)
 {
 Vin = Adc_Read(0);
 Vin = 4.88*Vin;
 Vin = Vin /10;
 vfrac=Vin%100;
 if(Vin<26)
 {Vin=27;
 }
 if(Vin>55)
 {Vin=55;
 }
 LongToStr(Vin,temp);
 j=0;
 for(i=0;i<=11;i++)
 {
 if(temp[i] != ' ')
 {
 temperature[j]=temp[i];
 j++;
 }
 }
 temperature[j] = '.';
 ch1 = vfrac / 10;
 ch2 = vfrac % 10;
 j++;
 temperature[j] = 48+ch1;
 j++;
 temperature[j] = 48+ch2;
 j++;
#line 55 "C:/Documents and Settings/raj/My Documents/pic_codes/TEMP.c"
 temperature[j]='\0';
 Delay_ms(10000) ;
 Lcd_cmd(Lcd_SECOND_ROW) ;
 Lcd_out(2,1,temperature);
 Lcd_Chr_Cp('c');
 Lcd_Cmd(Lcd_CURSOR_OFF);
 }
 }
