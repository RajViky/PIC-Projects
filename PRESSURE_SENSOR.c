
double v, vout;
long prs;
long depth;

double Vin=5;

long pressure()
{
  v  = prs = adc_read(2) ;   //READ ADC INPUT AT AN2
  return prs;
 /* v = v*Vin/1024;      // SCALING THE ADC 
  v=(v-1.15);
  prs = (100000/4)*v;
  depth= prs/(9.8*1000);
  return depth;  */
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
 ADCON1= 0x20;       // CONFIGURE ADC --- AN2
 TRISA = 0xFF;       // MAKE PORTA AS INPUT
 usart_init(2400);   // initialize the usart

do
{ 

 depth=pressure();
 itoa(buf, depth);
 buflen=strlen(buf);
for(i=buflen-1; i>=0; i--)
{
 Usart_Write(buf[i]); // write the data 
} 
Usart_Write(0x0D);
Usart_Write(0x0A) ;
 
} while(1);
}


   

