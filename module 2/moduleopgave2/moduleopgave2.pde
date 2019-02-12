import controlP5.*;
ControlP5 theControl;

final int maxBMI = 41;

float zoomFactor = 6;

final float normaalBMI = 18.5;
final float overgewichtBMI = 25;
final float obeesBMI = 30;

void setup() {
  size(400, 550);
  background(0);
  smooth();
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  float BMI = constrain(leesGewicht() / sq((leesLengte() / 100)), 0, maxBMI);
  
  println("lengte:" + leesLengte());
  println("gewicht: " + leesGewicht());
  println(BMI);

  
  clear();
  
  tekenLijnen();
  tekenBMI(BMI);
  
}

void tekenLijnen() {
  float normaal = normaalBMI * zoomFactor;
  float overgewicht = overgewichtBMI * zoomFactor;
  float obees = obeesBMI * zoomFactor;
  
  stroke(255, 255, 255);
  
  line(0, height - normaal, width, height - normaal);
  line(0, height - overgewicht, width, height - overgewicht); 
  line(0, height - obees, width, height - obees);
  
  fill(255, 255, 0);
  text("Ondergewicht", 0, height - (normaal - (textAscent()) * 2));
  text("Normaal", 0, height - (normaal + textAscent()));
  text("Overgewicht", 0, height - (overgewicht + textAscent()));
  text("Obesitas", 0, height - (obees + textAscent()));
}

void tekenBMI(float BMI) {
  float staafBreedte = width / 4;
  
  fill(0,255,255);
   
  if(BMI < normaalBMI) {
    fill(255, 255, 0);
  } else if((BMI >= normaalBMI) && (BMI < overgewichtBMI)) {
    fill(0, 128, 0);
  } else if((BMI >= overgewichtBMI) && (BMI < obeesBMI)) {
    fill(255,165,0);
  } else {
    fill(255,0,0);
  }
  
  BMI *= zoomFactor; 
  rect((width / 2) - (staafBreedte / 2), height, staafBreedte, -BMI);
  
 
}
