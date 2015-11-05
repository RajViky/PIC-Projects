#line 1 "C:/Documents and Settings/All Users/Documents/pic_codes/sound_init.c"
void Tone1() {
 Sound_Play(659, 250);
}

void Tone2() {
 Sound_Play(698, 250);
}

void Tone3() {
 Sound_Play(784, 250);
}

void Melody() {
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3();
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3();
 Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
}

void ToneA() {
 Sound_Play( 880, 50);
}
void ToneC() {
 Sound_Play(1046, 50);
}
void ToneE() {
 Sound_Play(1318, 50);
}

void Melody2() {
 unsigned short i;
 for (i = 9; i > 0; i--) {
 ToneA(); ToneC(); ToneE();
 }
}

void main() {
 ADCON1 = 0x0F;
 TRISB = 0x00;

 Sound_Init(&PORTB,1 );
 sound_Init(&portb,2);
 Sound_Play(1000, 500);


 Tone1();



 Tone2();

 Melody2();

 Melody();

 }
