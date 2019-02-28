final int niveauSelectieKnopBreedte = 100;
final int niveauSelectieKnopHoogte = 60;

final int NNIVEAUSELECTIEKNOPPEN = 6;
final int HOOFDMENUKNOP = 0;
final int NIVEAU1KNOP = 1;
final int NIVEAU2KNOP = 2;
final int NIVEAU3KNOP = 3;
final int NIVEAU4KNOP = 4;
final int NIVEAU5KNOP = 5;
final int NNIVEAUS = 5;


int[][] niveauSelectieKnoppen = null;

void niveauSelectieSetup() {
  niveauSelectieKnoppen =  initialiseerKnoppen(NNIVEAUSELECTIEKNOPPEN, VERTICAAL, 5, 5, niveauSelectieKnopHoogte+5);
}

void niveauSelectie() {
  background(#6D74F5);
  tekenNiveauSelectieKnoppen();
}

void gekliktInNiveauSelectie(int x, int y) {
  int knop = gekliktOpKnop(niveauSelectieKnoppen, x, y, niveauSelectieKnopBreedte, niveauSelectieKnopHoogte);
  boolean startSpel = false;
  
  if(knop >= 0) {
    switch(knop) {
      case HOOFDMENUKNOP:
        scherm = HOOFDMENU;
        return;
      case NIVEAU1KNOP:
        huidigNiveau = 1;
        startSpel = true;
        break;
      case NIVEAU2KNOP:
        huidigNiveau = 2;
        startSpel = true;
        break;
      case NIVEAU3KNOP:
        huidigNiveau = 3;
        startSpel = true;
        break;
      case NIVEAU4KNOP:
        huidigNiveau = 4;
        startSpel = true;
        break;
      case NIVEAU5KNOP:
        huidigNiveau = 5;
        startSpel = true;
        break;
    }
  }
  if(startSpel) {
    scherm = SPEL;
  }
}

void tekenNiveauSelectieKnoppen() {
  strokeWeight(2);
  tekenKnop("Hoofdmenu", niveauSelectieKnoppen[HOOFDMENUKNOP][xIndex], niveauSelectieKnoppen[HOOFDMENUKNOP][yIndex], niveauSelectieKnopBreedte, niveauSelectieKnopHoogte, color(170), color(0));
  for(int i = NIVEAU1KNOP; i < NNIVEAUSELECTIEKNOPPEN; i++) {
    tekenKnop("Niveau "+i, niveauSelectieKnoppen[i][xIndex],niveauSelectieKnoppen[i][yIndex], niveauSelectieKnopBreedte, niveauSelectieKnopHoogte, color(255), color(0));
  }
}
