#line 1 "K:/pic_codes/usart_check.c"
unsigned short i;

void main()
{


 Usart_Init(2400);

 do {
 if (Usart_Data_Ready())
 {
 i = Usart_Read();
 Usart_Write(i+1);
 }
 } while (1);
}
