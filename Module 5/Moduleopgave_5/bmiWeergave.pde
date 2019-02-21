private float zoomFactor = 6;
private final float NORMAALBMI = 18.5,
                    OVERGEWICHTBMI = 25, 
                    OBEESBMI = 30,
                    MAXBMI = 40;
              
void tekenBMI(float gewicht, float lengte) {
  float BMI = constrain(gewicht / sq(lengte/100), 0, MAXBMI);
  tekenLijnen();
  tekenStaaf(BMI);
}

private void tekenStaaf(float BMI) {
  float staafBreedte = width / 4;
  final int ONDERGEWICHTKLEUR = #FFFF00,
            NORMAALKLEUR = #008000,
            OVERGEWICHTKLEUR = #FFA500,
            OBEESKLEUR = #FF0000;
   
  if(BMI < NORMAALBMI) fill(ONDERGEWICHTKLEUR);
  else if((BMI >= NORMAALBMI) && (BMI < OVERGEWICHTBMI)) fill(NORMAALKLEUR);
  else if((BMI >= OVERGEWICHTBMI) && (BMI < OBEESBMI)) fill(OVERGEWICHTKLEUR);
  else fill(OBEESKLEUR);
    
  BMI *= zoomFactor; 
  rect((width / 2) - (staafBreedte / 2), height, staafBreedte, -BMI);
}

private void tekenLijnen() {
  final int LIJNKLEUR = #FFFFFF,
            TEKSTKLEUR = #FFFF00;
  
  float normaal = NORMAALBMI * zoomFactor,
        overgewicht = OVERGEWICHTBMI * zoomFactor,
        obees = OBEESBMI * zoomFactor;
  
  stroke(LIJNKLEUR);
  
  line(0, height - normaal, width, height - normaal);
  line(0, height - overgewicht, width, height - overgewicht); 
  line(0, height - obees, width, height - obees);
  
  fill(TEKSTKLEUR);
  text("Ondergewicht", 0, height - (normaal - (textAscent()) * 2));
  text("Normaal", 0, height - (normaal + textAscent()));
  text("Overgewicht", 0, height - (overgewicht + textAscent()));
  text("Obesitas", 0, height - (obees + textAscent()));
}
