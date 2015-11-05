#line 1 "C:/Documents and Settings/raj/My Documents/pic_codes/keypad_dcmotor.c"
unsigned short kp;
unsigned short t;
void main()
{
kp=0;
t=0;
keypad_init(&portd);
trisd=0x00;
trisb=0x00;
portb=0x00;
portd=0x00;
kp=keypad_read();
while(1)
{
kp=keypad_read();
switch(kp)
{
case 1:do
 {
 portb.f2=1;
 portb.f1=1;
 portb.f0=0;
 t=keypad_released();
 }while(t=0);
 t=0;
 break;


case 2:do
 {
 portb.f2=1;
 portb.f1=0;
 portb.f0=1;
 t=keypad_released();
 }while(t=0);
 t=0;
 break;


case 0:do
 {
 portb.f2=0;
 portb.f1=0;
 portb.f0=0;
 t=keypad_released();
 }while(t=0);
 t=0;
 break;

}
}
}
