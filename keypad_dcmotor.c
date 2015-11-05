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
       portb.f2=1;//ENABLE
       portb.f1=1;
       portb.f0=0;
       t=keypad_released();
       }while(t=0);
       t=0;
       break;
       

case 2:do
       {
       portb.f2=1;//ENABLE
       portb.f1=0;
       portb.f0=1;
       t=keypad_released();
       }while(t=0);
       t=0;
       break;


case 0:do
       {
       portb.f2=0;//ENABLE
       portb.f1=0;
       portb.f0=0;
       t=keypad_released();
       }while(t=0);
       t=0;
       break;

}
}
}


/*getkey:kp=keypad_read();
t=keypad_released();
if(kp=1)
{
 PORTB.F0=1;
 portb.f1=0;
 portb.f2=1;
  t=keypad_released();
  if(!t)
 {
 portb.f0=0;
 portb.f2=0;
 goto getkey
 }
}
if(kp=2)
{
 portb.f0=0;
 portb.f1=1;
 portb.f2=0;
 t=keypad_released();
  if(!t)
 {
 portb.f1=0;
 portb.f2=0;
 goto getkey
 }
}
if(t!=0)
{
portb.f2=0;
}
}

}        */