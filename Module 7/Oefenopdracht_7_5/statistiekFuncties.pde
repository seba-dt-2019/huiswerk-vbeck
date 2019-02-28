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
