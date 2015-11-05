unsigned int i;
void main()
{
 trisC=0X00;
 //Sound_Init(&PORTC,0);
 Pwm2_Init(38000);
 while(1)
 {
 pwm2_start();
 for(i=0;i<10;i++)
 {
 pwm2_change_duty(150);
 }
 delay_ms(2);
 /*if(0)
 {
 sound_play(1000,5000);
 } */
 pwm2_stop();
 }
}
 
 