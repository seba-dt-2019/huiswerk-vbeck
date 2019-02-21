void setup() {
  size(500, 500);
  smooth();
  
  tekenTafelsTotEnMet(1);
}

void tekenTafelsTotEnMet(int tafels) {
  int getal = 0;
  int nRijen = 10,
      nKolommen = tafels; 
  float rijHoogte = height / nRijen,
        kolomBreedte = width / nKolommen;

  fill(0);
  textSize(14);
  textAlign(CORNER, TOP);
  
  for(int kolom = 0; kolom < nKolommen; kolom++) {
    for(int rij = 0; rij < nRijen; rij++) {
      getal = (rij+1)*(kolom+1);
      text(getal, kolom*kolomBreedte, rij*rijHoogte);
    }
  }
}
        

  
