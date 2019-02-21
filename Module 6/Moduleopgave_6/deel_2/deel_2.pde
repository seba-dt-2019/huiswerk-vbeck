int nJongetjes = 0,
    nMeisjes = 0;
    
void setup() {
  size(100, 100);
  smooth();

  int maxGezinnen = 521;

  maakGezinnen(maxGezinnen);
  println("Aantal gezinnen:",maxGezinnen);
  println("\nAantal jongetjes:", nJongetjes, "\nAantal meisjes:", nMeisjes);
  println("\nTotaal aantal kinderen:", (nJongetjes+nMeisjes));
}

void maakGezinnen(int maxGezinnen) {
  for(int gezin = 0; gezin<maxGezinnen; gezin++)
    reproduceerTotJongetje();
}

void reproduceerTotJongetje() {
  final int JONGETJE = 0,
            MEISJE = 1;
  
  int gezinsleden = 0;
  int kind = 0;
    
  do {
    kind = produceerKind();
    gezinsleden++;
  } while(kind != JONGETJE);
}

int produceerKind() {
  int geslacht = (int) random(2);
  final int JONGETJE = 0,
            MEISJE = 1;
            
  switch(geslacht) {
      case JONGETJE:
        nJongetjes++;
        break;
      case MEISJE:
        nMeisjes++;
        break;
    }
    return geslacht;
}
