final int RESETKNOP = 1;
final int TERUGKNOP = 0;
final int NSPELKNOPPEN = 2;

int spelKnopBreedte = 70;
int spelKnopHoogte = 40;

int[][] spelKnoppen = null;
int[][][] muntPositie = null;
boolean[][] muntOmgedraaid = null;

int muntenPerZijde = 0;
int muntGrootte = 0;
int speelveldGrootte = 0;

int xPositieSpeelveld = 0;
int yPositieSpeelveld = 0;

boolean voltooid = false;
int aantalZetten = 0;

void spelSetup(int niveau) {
  speelveldGrootte = int(width * 0.7);
  int xMarge = (width - speelveldGrootte)/2;
  int yMarge = (height - speelveldGrootte)/2;

  muntenPerZijde = niveau+3;
  xPositieSpeelveld = xMarge;
  yPositieSpeelveld = height-speelveldGrootte-yMarge;

  voltooid = false;
  aantalZetten = 0;
  spelKnoppen = initialiseerKnoppen(NSPELKNOPPEN, HORIZONTAAL, 0, 0, spelKnopBreedte);
  muntGrootte = speelveldGrootte / muntenPerZijde;
  muntPositie = initialiseerMuntPosities(muntenPerZijde, xPositieSpeelveld, yPositieSpeelveld, muntGrootte);
  muntOmgedraaid = initialiseerMuntOmgedraaid(muntenPerZijde);
}

void spel() {
  background(100, 100, 100);
  tekenSpeelveld(xPositieSpeelveld, yPositieSpeelveld, speelveldGrootte);
  tekenMunten(muntPositie, muntenPerZijde, muntGrootte);
  tekenSpelKnoppen();
  if (alleMuntenOmgedraaid(muntOmgedraaid)) {
    voltooiNiveau();
  }
}

void gekliktInSpel(int x, int y) {
  int[] coordinatenVanMunt = null;
  int knop = gekliktOpKnop(spelKnoppen, x, y, spelKnopBreedte, spelKnopHoogte);
  
  if(knop >= 0) {
    switch(knop) {
      case TERUGKNOP:
        scherm = NIVEAUSELECTIE;
        return;
      case RESETKNOP:
        spelSetup(huidigNiveau);
        return;
    }
  }

  else if((coordinatenVanMunt = muntGeklikt(x, y, muntGrootte, muntenPerZijde, muntPositie)) != null && !voltooid) {
    draaiMuntenOm(coordinatenVanMunt[xIndex], coordinatenVanMunt[yIndex]);
    aantalZetten++;
   }
}


void tekenSpeelveld(int x, int y, int veldGrootte) {
  fill(0);
  rectMode(CORNER);
  rect(x, y, veldGrootte, veldGrootte);
  text("Aantal zetten: "+aantalZetten, x, y+veldGrootte+20);
}

void tekenMunten(int[][][] munten, int muntenPerZijde, int muntGrootte) {
  ellipseMode(CORNER);
  int nMunten = muntenPerZijde*muntenPerZijde;
  for (int j = 0; j < muntenPerZijde; j++) {
    for (int i = 0; i < muntenPerZijde; i++) {
      fill(255);
      if (muntOmgedraaid[i][j])
        fill(128, 0, 0);

      ellipse(munten[i][j][xIndex], munten[i][j][yIndex], muntGrootte, muntGrootte);
    }
  }
}

int[] muntGeklikt(int x, int y, int grootte, int muntenPerZijde, int[][][] munten) {
  int[] xEnY = new int[2];
  for (int j = 0; j < muntenPerZijde; j++) {
    for (int i = 0; i < muntenPerZijde; i++) {
      int yMuntMidden = munten[i][j][yIndex] + grootte/2;
      int xMuntMidden = munten[i][j][xIndex] + grootte/2;
      if (dist(x, y, xMuntMidden, yMuntMidden) <= grootte/2) {
        xEnY[xIndex] = i;
        xEnY[yIndex] = j;
        return xEnY;
      }
    }
  }

  return null;
}

void draaiMuntenOm(int i, int j) {
  muntOmgedraaid[i][j] = !muntOmgedraaid[i][j];
  if (i+1 <= (muntOmgedraaid.length - 1)) muntOmgedraaid[i+1][j] = !muntOmgedraaid[i+1][j];
  if (i-1 >= 0) muntOmgedraaid[i-1][j] = !muntOmgedraaid[i-1][j];
  if (j+1 <= muntOmgedraaid[0].length - 1) muntOmgedraaid[i][j+1] = !muntOmgedraaid[i][j+1];
  if (j-1 >= 0) muntOmgedraaid[i][j-1] = !muntOmgedraaid[i][j-1];
}

int[][][] initialiseerMuntPosities(int muntenPerZijde, int xStart, int yStart, int muntGrootte) {
  int[][][] posities = new int[muntenPerZijde][muntenPerZijde][2];
  for (int j = 0; j < muntenPerZijde; j++) {
    for (int i = 0; i < muntenPerZijde; i++) {
      posities[i][j][xIndex] = xStart + (i*muntGrootte);
      posities[i][j][yIndex] = yStart + (j*muntGrootte);
    }
  }
  return posities;
}

boolean[][] initialiseerMuntOmgedraaid(int muntenPerZijde) {
  boolean[][] omgedraaid = new boolean[muntenPerZijde][muntenPerZijde];
  for (int j = 0; j < muntenPerZijde; j++) {
    for (int i = 0; i < muntenPerZijde; i++) {
      omgedraaid[i][j] = false;
    }
  }

  return omgedraaid;
}


boolean alleMuntenOmgedraaid(boolean[][] muntOmgedraaid) {
  for (int j = 0; j < muntOmgedraaid[0].length; j++) {
    for (int i = 0; i < muntOmgedraaid.length; i++) {
      if (muntOmgedraaid[i][j] == false)
        return false;
    }
  }
  return true;
}

void tekenSpelKnoppen() {
  strokeWeight(2);
  tekenKnop("Terug", spelKnoppen[TERUGKNOP][xIndex], spelKnoppen[TERUGKNOP][yIndex], spelKnopBreedte, spelKnopHoogte, #6D74F5, color(0));
  tekenKnop("Reset", spelKnoppen[RESETKNOP][xIndex], spelKnoppen[RESETKNOP][yIndex], spelKnopBreedte, spelKnopHoogte, #6D74F5, color(0));
}

void voltooiNiveau() {
  fill(255);
  rectMode(CORNER);
  rect(0, height/2-100, width, 200);
  textAlign(CENTER, CENTER);
  fill(0);
  text("JE HEBT HET VOLTOOID!", width/2, height/2-50);
  text("Aantal zetten: "+aantalZetten, width/2, height/2-50+textAscent());
  
  if(aantalZetten < highscores[huidigNiveau-1] || highscores[huidigNiveau-1] == 0) {
    highscores[huidigNiveau-1] = aantalZetten;
    opslaanHighscores();

  }
  voltooid = true;
}
