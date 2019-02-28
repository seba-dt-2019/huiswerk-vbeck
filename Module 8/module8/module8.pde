boolean update = false;
boolean mouseReleased = true;

void setup() {
  size(500, 500);
  hoofdmenuSetup();
  niveauSelectieSetup();
  ophalenHighscores();
  scherm = HOOFDMENU;
  update = true;
}

void draw() {
  if(update) {
    tekenScherm();
    update = false;
  }
}


void mousePressed() {
  verwerkInputVoorHuidigScherm();
  update = true;
}
