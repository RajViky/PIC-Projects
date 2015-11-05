void initRobot()
{
  //--PWM------------
  ADCON1 =0x06; //TURN OFF ADC
  PORTA=0;
}


/**************************************************************
function: main
**************************************************************/
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
