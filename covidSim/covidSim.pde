int anzahlKreise = 12;
Kreis[] meineKreise = new Kreis[anzahlKreise];
int radius;



void settings() {
  size(1000, 800);
}


void setup() {

  frameRate (50);
  size(1000, 800);
  //noLoop();

  // Kreise erzeugen
  for (int i = 0; i < anzahlKreise; i++) {

    radius = int(random(5, 10));
    meineKreise[i] = new Kreis(
      0,//(int)random(0, 256), 
      250,//(int)random(0, 256), 
      0,//(int)random(0, 256), 
      (int)random(0 + radius, 1000 - radius), 
      (int)random(0 + radius, 800 - radius), 
      radius,
      (random(1) < 0.5 ? 1 : -1) * (int)random(1, 10) ,
      (random(1) < 0.5 ? 1 : -1) * (int)random(1, 10) 
      );
  }
}


void draw() {         

  background(246);
  for (int i = 0; i < anzahlKreise; i++) {
    meineKreise[i].zeichne();
    meineKreise[i].go();
  }
}
