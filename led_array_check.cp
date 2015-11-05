#line 1 "E:/pic_codes/led_array_check.c"
void initRobot()
{

 ADCON1 =0x06;
 PORTA=0;
}
#line 12 "E:/pic_codes/led_array_check.c"
void main()
{

 PORTA.F0;
 PORTA.F1;
 PORTA.F2;
 PORTA.F3;
 PORTA.F4;
 PORTA.F5;
 PORTE.F0;
 PORTE.F1;
