#line 1 "E:/pic_codes/ULTRASONIC_SENSOR.c"
#line 40 "E:/pic_codes/ULTRASONIC_SENSOR.c"
int abc;
unsigned int temp, temp_sec, temp_old, time, distance;
char txt[6];

void InitPort(void) {
 ANSEL = 0x01;
 ANSELH = 0;


 TRISC = 0x00;
 TRISA.B0 = 1;
}

void PWM(void) {
 PWM1_Init(40000);
 PWM1_Set_Duty(127);
 PORTC = 0x00;
 PWM1_Start();
 Delay_us(100);
 PWM1_Stop();
}

void InitDelay(void) {
 T1CON.B5 = 1;
 T1CON.B4 = 1;
 TMR1L = 0x00;
 TMR1H = 0x00;
 T1CON.B0 = 1;
}

void InitADC(void) {
 ADC_Init();
}

void InitVariable(void) {
 abc = 0;
 temp_old = 0;
 distance = 0;
}

void InitUART(void) {
 UART1_Init(9600);
 UART1_Write_Text ("Distance Meter 2");
 UART1_Write(13);
 UART1_Write_Text ("Minimum Distance 30cm");
 UART1_Write(13);
 UART1_Write_Text ("Maximum Distance 350cm");
 UART1_Write(13);
 UART1_Write_Text ("Measure precision +-10%");
 UART1_Write(13);
 UART1_Write(13);
 UART1_Write_Text ("Starting measurement");
 UART1_Write(13);
 UART1_Write(13);
 Delay_ms(1200);
}

void main() {

 InitPort();
 InitADC();
 InitUART();

 while(1) {


 PWM();


 Delay_ms(1);

 InitDelay();

 temp = ADC_Get_Sample(0);
 Delay_us(1);
 temp_sec = ADC_Get_Sample(0);

 InitVariable();

 while (temp > temp_sec) {
 Delay_us(10);
 temp = ADC_Get_Sample(0);
 Delay_us(1);
 temp_sec = ADC_Get_Sample(0);
 }

 while(abc < 1000) {
 temp = ADC_Get_Sample(0);
 if (temp > temp_old) {
 temp_old = temp;
 time = TMR1H;
 time = (time << 8);
 time = time + TMR1L;
 }
 abc++;
 Delay_us(50);
 }
 T1CON.B0 = 0;

 if (time < 0)
 time = - time;


 if (time > 4500)
 distance = 0;
 else
 distance = time * 2 / 25;

 if (distance == 0) {
 UART1_Write_Text ("Too Far!");
 UART1_Write(13);
 }
 else {
 IntToStr(distance, txt);
 UART1_Write_Text(txt);
 UART1_Write_Text (" cm");
 UART1_Write(13);
 }
 Delay_ms(500);
 }
}
