final int hoofdmenuKnopBreedte = 100;
final int hoofdmenuKnopHoogte = 70;

final int SPELENKNOP = 0;
final int HIGHSCORESKNOP = 1;
final int NHOOFDMENUKNOPPEN = 2;

int[][] hoofdmenuKnoppen = null;

void hoofdmenuSetup() {
  hoofdmenuKnoppen =  initialiseerKnoppen(NHOOFDMENUKNOPPEN, VERTICAAL, (width/2)-(hoofdmenuKnopBreedte/2), height/2-(hoofdmenuKnopHoogte*2), hoofdmenuKnopHoogte+20);
}

void hoofdmenu() {
  background(#6D74F5);
  tekenHoofdmenuKnoppen();
}

void tekenHoofdmenuKnoppen() {
  strokeWeight(2);
  tekenKnop("Spelen", hoofdmenuKnoppen[SPELENKNOP][xIndex],hoofdmenuKnoppen[SPELENKNOP][yIndex], hoofdmenuKnopBreedte, hoofdmenuKnopHoogte, color(170), color(0));
  tekenKnop("Highscores", hoofdmenuKnoppen[HIGHSCORESKNOP][xIndex],hoofdmenuKnoppen[HIGHSCORESKNOP][yIndex], hoofdmenuKnopBreedte, hoofdmenuKnopHoogte, color(170), color(0));
}

void gekliktInHoofdmenu(int x, int y) {
  int knop = gekliktOpKnop(hoofdmenuKnoppen, x, y, hoofdmenuKnopBreedte, hoofdmenuKnopHoogte);
  switch(knop) {
    case SPELENKNOP:
      scherm = NIVEAUSELECTIE;
      break;
    case HIGHSCORESKNOP:
      scherm = HIGHSCORES;
      break;
  }
}
