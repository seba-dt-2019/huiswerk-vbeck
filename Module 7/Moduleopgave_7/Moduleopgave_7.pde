int aantalToetsen = 0,
    aantalOnvoldoende = 0,
    aantalVoldoende = 0;
float gemiddeldeCijfer = 0,
      hoogsteCijfer = 0,
      laagsteCijfer = 0;
float[] cijfers = null;

void setup() {
  size(500, 500);
  cijfers = geefCijferlijst();
  
  aantalToetsen = geefAantal(cijfers);
  aantalVoldoende = geefAantalVoldoende(cijfers);
  aantalOnvoldoende = geefAantalOnvoldoende(cijfers);
  
  gemiddeldeCijfer = geefGemiddelde(cijfers);
  hoogsteCijfer = geefHoogste(cijfers);
  laagsteCijfer = geefLaagste(cijfers);
}

void draw() {
  background(0);
  drukAfStatistieken();
  tekenStaafDiagram();
}

float[] geefCijferlijst() {
  String[] content = loadStrings("cijferlijst.txt");
  float[] cijferLijst = new float[content.length];
  
  for(int i = 0; i<content.length; i++) {
    cijferLijst[i] = float(content[i]); 
  }
 
  return cijferLijst;
}

void drukAfStatistieken() {
  textAlign(CORNER);
  fill(255);
  text("Aantal Toesten: " + aantalToetsen + "\n" +
       "Aantal Onvoldoende: " + aantalOnvoldoende + "\n" +
       "Aantal Voldoende: " + aantalVoldoende + "\n" +
       "Gemiddelde Cijfer: " + nf(gemiddeldeCijfer, 0, 2) + "\n" +
       "Hoogste Cijfer: " + hoogsteCijfer + "\n" +
       "Laagste Cijfer: " + laagsteCijfer, 
       0, 0+textAscent());
}

void tekenStaafDiagram() {
  final int aantalStaven = 10;
  float kaderBreedte = width * 0.9;
  float kaderHoogte = height * 0.6;
  float xKader = (width-kaderBreedte)/2;
  float yKader = (height*0.9)- kaderHoogte;
    
  tekenKader(xKader, yKader, kaderBreedte, kaderHoogte);
  tekenStavenBinnenKader(aantalStaven, xKader, yKader, kaderBreedte, kaderHoogte);
  
  
}
void tekenStavenBinnenKader(int nStaven, float x, float y, float kaderBreedte, float kaderHoogte) {
  float xDelta = kaderBreedte / nStaven;
  float aantalPerCijferreeks[] = aantalPerCijferreeks();
  float hoogsteAantal = geefHoogste(aantalPerCijferreeks());
  float vergrootFactor = (kaderHoogte-10) / hoogsteAantal;
  
  textAlign(CENTER);
  fill(255);
  
  for(int i = 0; i<nStaven+1; i++) { 
    text(nf(float(i), 0, 1), x+(xDelta*i), y+kaderHoogte+textAscent());
    if(i <10)
      rect(x+(xDelta*i), (y+kaderHoogte-aantalPerCijferreeks[i] * vergrootFactor), xDelta, aantalPerCijferreeks[i] * vergrootFactor);    
  }
}
  
void tekenKader(float x, float y, float breedte, float hoogte) {
  fill(#B7ACAC);
  rect(x, y, breedte, hoogte);
  
}

float[] aantalPerCijferreeks() {
   float[] aantallenPerReeks = new float[10];
   for(int i = 0; i < aantallenPerReeks.length; i++) {
     aantallenPerReeks[i] = geefAantalBinnenReeks(cijfers, i, i+1);
     println("Aantal tussen", i, "en", i+1, aantallenPerReeks[i]);
   }
 
   return aantallenPerReeks;
}
