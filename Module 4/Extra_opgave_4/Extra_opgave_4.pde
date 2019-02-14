Lamp lamp1;
Lamp lamp2;
Lamp lamp3;
boolean aan = false;

void setup() { 
  float deler;
  size(1220, 400);
  background(0);
  
  deler = 5.0;
  lamp1 = new Lamp(width/deler, height, #FF00FF);
  deler = 2;
  lamp2 = new Lamp(width/deler, height, #00FFFF);
  deler = 1.25;
  lamp3 = new Lamp(width/deler, height, #FFFF00);
  
}

void draw() {
  background(0);
  fill(255);
  textSize(18);
  text("Druk op enter om de lampen uit of aan te zetten", 0, 0 + textAscent());
  lamp1.display();
  lamp2.display();
  lamp3.display();
}

void keyPressed() {
  if(key == ENTER) {
    if(aan) {
      lamp1.uit();
      lamp2.uit();
      lamp3.uit();
    }
    else {
      lamp1.aan();
      lamp2.aan();
      lamp3.aan();
    }
    aan = !aan;
  }
}
