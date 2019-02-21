PImage jongetje;
PImage meisje;

void setup() {
  size(500, 800);
  smooth();

  jongetje = loadImage("jongetje.png");
  meisje = loadImage("meisje.png");
  
  int maxGezinnen = floor(height / max(jongetje.height, meisje.height));
  int maxGezinsleden = floor(width / max(jongetje.width, meisje.width));

  maakGezinnen(maxGezinnen, maxGezinsleden);
}

void maakGezinnen(int maxGezinnen, int maxGezinsleden) {
  for(int gezin = 0; gezin<maxGezinnen; gezin++)
    reproduceerTotJongetje(maxGezinsleden, gezin);
}

void reproduceerTotJongetje(int maxGezinsleden, int gezin) {
  PImage kind = meisje;
  int gezinsleden = 0;
    
  do {
    kind = produceerKind();
    image(kind, gezinsleden*max(jongetje.width, meisje.width), max(jongetje.height, meisje.height)*gezin);
    gezinsleden++;
  } while(kind != jongetje && gezinsleden < maxGezinsleden);
}

PImage produceerKind() {
  PImage kind = meisje;
  int geslacht = (int) random(2);
  final int JONGETJE = 0,
            MEISJE = 1;
            
  switch(geslacht) {
      case JONGETJE:
        kind = jongetje;
        break;
      case MEISJE:
        kind = meisje;
        break;
    }
    return kind;
}
