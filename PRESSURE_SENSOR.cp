#line 1 "K:/pic_codes/PRESSURE_SENSOR.c"

double v, vout;
long prs;
long depth;

double Vin=5;

long pressure()
{
 v = prs = adc_read(2) ;
 return prs;
#line 17 "K:/pic_codes/PRESSURE_SENSOR.c"
}

void itoa(char *buf, long depth)
{
int i, len=0;
char t;
while(depth)
{
 *buf = '0' + (depth%10);
 depth = depth/10;
 buf++;
 len++;
}
*buf=0;
buf = buf-len;
len = len/2;
for(i=0; i<len; i++)
{
 t = buf[i];
 buf[i] = buf[len-1-i];
 buf[len-1-i] = t;
}
}

void main ()
{
 char buf[20];
 int i;
 int buflen;
 ADCON1= 0x20;
 TRISA = 0xFF;
 usart_init(2400);

do
{

 depth=pressure();
 itoa(buf, depth);
 buflen=strlen(buf);
for(i=buflen-1; i>=0; i--)
{
 Usart_Write(buf[i]);
}
Usart_Write(0x0D);
Usart_Write(0x0A) ;

} while(1);
}
