void Tone1() {
  Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
}

void Tone2() {
  Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
}

void Tone3() {
  Sound_Play(784, 250);   // Frequency = 784Hz, duration = 250ms
}

void Melody() {           // Plays the melody "Yellow house"
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
  ADCON1 = 0x0F;                     // Configure all AN pins as digital
  TRISB  = 0x00;                     // Configure RB7..RB4 as input, RB3 as output

  Sound_Init(&PORTB,1 );
  sound_Init(&portb,2);
  
  Sound_Play(1000, 500);


      Tone1();



      Tone2();

      Melody2();
         // RB4 plays Melody
      Melody();
           // Wait for button to be released
  }
