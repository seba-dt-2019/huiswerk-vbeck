final int VERTICAAL = 0;
final int HORIZONTAAL = 1;
final int xIndex = 0;
final int yIndex = 1;
final int HOOFDMENU = 0,
          NIVEAUSELECTIE = 1,
          HIGHSCORES = 2,
          SPEL = 3;

int huidigNiveau = 0;
int scherm = HOOFDMENU;
int[] highscores = new int[5];

void tekenKnop(String tekst, int x, int y, int breedte, int hoogte, color knopKleur, color tekstKleur) {
  fill(knopKleur);
  rectMode(CORNER);
  rect(x, y, breedte, hoogte);
  textAlign(CENTER, CENTER);
  fill(tekstKleur);
  textSize(16);
  text(tekst, x+(breedte/2), y+(hoogte/2));
}

int[][] initialiseerKnoppen(int n, int positionering, int x, int y, int grootte) {
  int[][] tempKnoppen = new int[n][2];

  for (int i = 0; i<n; i++) {
    if(positionering == HORIZONTAAL) {
      tempKnoppen[i][xIndex] = x+(i*grootte);
      tempKnoppen[i][yIndex] = y;
     }
     else if(positionering == VERTICAAL) {
      tempKnoppen[i][xIndex] = x;
      tempKnoppen[i][yIndex] = y+(i*grootte);
     }
  }
  return tempKnoppen;
}

int gekliktOpKnop(int[][] knoppen, int x, int y, int breedte, int hoogte) {
  for(int i = 0; i < knoppen.length; i++) {
    if(x >= knoppen[i][xIndex] && x < knoppen[i][xIndex]+breedte && y >= knoppen[i][yIndex] && y < knoppen[i][yIndex]+hoogte)
      return i;
  }
  return -1;
}

void tekenScherm() {
  switch(scherm) {
    case HOOFDMENU:
      hoofdmenu();
      break;
    case NIVEAUSELECTIE:
      niveauSelectie();
      break;
    case HIGHSCORES:
      highscores();
      break;
    case SPEL:
      spel();
      break;
    default:
      break;
  }
}

void verwerkInputVoorHuidigScherm() {
  switch(scherm) {
    case HOOFDMENU:
      gekliktInHoofdmenu(mouseX, mouseY);
      break;
    case NIVEAUSELECTIE:
      gekliktInNiveauSelectie(mouseX, mouseY);
      if(scherm == SPEL)
          spelSetup(huidigNiveau);
      break;
    case HIGHSCORES:
      gekliktInHighscores();
      break;
    case SPEL:
      gekliktInSpel(mouseX, mouseY);
      break;
    default:
      break;
  }
}

void opslaanHighscores() {
  String[] content = str(highscores);  
  saveStrings("highscores.txt", content);
}

void ophalenHighscores() {
 String[] content = loadStrings("highscores.txt");
 if(content != null)
   highscores = int(content);
}
