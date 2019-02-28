float geefHoogste(float cijfers[]) {
  float hoogste = cijfers[0];
   
  for(int i = 1; i<cijfers.length; i++) {
    if(cijfers[i] > hoogste)
      hoogste = cijfers[i];
  }
  
  return hoogste;
}

float geefLaagste(float cijfers[]) {
  float laagste = cijfers[0];
   
  for(int i = 1; i<cijfers.length; i++) {
    if(cijfers[i] < laagste)
      laagste = cijfers[i];
  }
  
  return laagste;
}

float geefGemiddelde(float cijfers[]) {
  float som = 0;
  
  for(int i = 0; i < cijfers.length; i++) {
    som += cijfers[i];
  }
  
  return som / cijfers.length;
}

int geefAantalVoldoende(float cijfers[]) {
  int aantal = 0;
  for(int i = 0; i < cijfers.length; i++) {
    if(cijfers[i] >= 5.5)
      aantal++;
  }
  return aantal;
}

int geefAantalOnvoldoende(float cijfers[]) {
  int aantal = 0;
  for(int i = 0; i < cijfers.length; i++) {
    if(cijfers[i] < 5.5)
      aantal++;
  }
  return aantal;
}

int geefAantal(float lijst[]) {
  return lijst.length;
}

int geefAantalBinnenReeks(float cijfers[], float min, float max) {
  int aantal = 0;
  
  for(int i = 0; i<cijfers.length; i++) {
    if(cijfers[i] > min && cijfers[i] <= max)
      aantal++;
  }
  return aantal;
}
