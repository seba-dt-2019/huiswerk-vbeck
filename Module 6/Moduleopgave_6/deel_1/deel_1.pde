PImage jongetje;
PImage meisje;

void setup() {
  size(500, 800);
  smooth();

  jongetje = loadImage("jongetje.png");
  meisje = loadImage("meisje.png");
  
  maakGezinnen();
}

void maakGezinnen() {
  int maxGezinnen = floor(height / max(jongetje.height, meisje.height));
  
  for(int gezin = 0; gezin<maxGezinnen; gezin++)
    reproduceerTotJongetje(gezin);
}

void reproduceerTotJongetje(int gezin) {
  int maxGezinsleden = floor(width / max(jongetje.width, meisje.width));

  PImage kind = null;
  int gezinsleden = 0;
    
  do {
    kind = produceerKind();
    image(kind, gezinsleden*max(jongetje.width, meisje.width), max(jongetje.height, meisje.height)*gezin);
    gezinsleden++;
  } while(kind != jongetje && gezinsleden < maxGezinsleden);
}

PImage produceerKind() {
  final int JONGETJE = 0, MEISJE = 1;
  PImage kind = null;
  
  int geslacht = (int) random(2);
              
  switch(geslacht) {
      case JONGETJE:
        kind = jongetje;
        break;
      default:
        kind = meisje;
        break;
    }
    return kind;
}
