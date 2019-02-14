class Lamp {
  final int aan = 255;
  final int uit = 100;
  int grootte;
  float xPos, yPos;
  color kleur;
  int helderheid;
 
  Lamp(float x, float y, color c) {
    grootte = width/10;
    yPos = y - grootte;
    xPos = x - grootte/2; 
    kleur = c;
    helderheid = uit;
  }
  
  void display() {
    fill(170, 170, 170);
    rect(xPos, yPos, grootte, grootte);
    colorMode(HSB);
    fill(hue(kleur), 255, helderheid);
    ellipse(xPos+grootte/2, yPos-grootte/2, grootte*2, grootte*2);
    colorMode(RGB);
  }
  
  void aan() { 
    helderheid = aan;
  }
  
  void uit() {
    helderheid = uit;
  }
}
